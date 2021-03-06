 # -- coding: utf-8 --
from django.forms import ModelForm
from django import forms
from django.forms import modelformset_factory
from django.shortcuts import render_to_response
from django.http import HttpResponse
from django.http import HttpResponseRedirect
from django.core.urlresolvers import reverse, reverse_lazy
from django.template.context_processors import csrf
from django.views.decorators.csrf import csrf_protect
from .models import ParametroPrecio, Item, Subitem_parametro
from django.db.models import Q #para OR en consultas
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
from django.views.decorators.csrf import csrf_exempt

#Armo el formset
class ParametroPrecio_Form(ModelForm): 
	class Meta:
		model = ParametroPrecio
		fields= ['seleccionado']		

@csrf_exempt #solo en esta vista desactivar el control de Crsf
def promptparametrosLigth(request, iditem):
	
    ParametroPrecioFormSet = modelformset_factory(ParametroPrecio, form = ParametroPrecio_Form, extra= 0)
    item = Item.objects.get(id=iditem) #item al que agregar los parámetros
    if request.method == 'POST':
        formset = ParametroPrecioFormSet(request.POST, request.FILES)
        if formset.is_valid():
            
	        
            for form in formset: #recorro los formularios
                if form.cleaned_data['seleccionado']: #Si el parámetro está selecciondo lo agrego al ítem
                    unparametroprecio = form.instance #la instancia relacionada, como figura en la BD
                    subitem_parametro = Subitem_parametro.objects.create(
                        item = item,
                        itemparametro= unparametroprecio
                    )
                    subitem_parametro.save() 
            return HttpResponseRedirect( reverse('presupuestos:itemsubitem_modificarligth', kwargs={'pk': iditem,}) )
    else:		
        #quiero filtrar por la matriz del ítem y otros criterios de búsqueda

        querysearch = request.GET.get('q')
        if querysearch is None:
			querysearch = '' #si es nulo le asigno la cadena vacia
			queryset=ParametroPrecio.objects.filter(matriz = item.matriz).order_by('matriz__nombre_matriz', 'parametro__nombre_par', 'tecnica__nombre_tec')
        else:
            queryset=ParametroPrecio.objects.filter(Q( matriz = item.matriz, parametro__nombre_par__icontains=querysearch)| 
                                                    Q( matriz = item.matriz, tecnica__nombre_tec__icontains=querysearch)).order_by('matriz__nombre_matriz', 'parametro__nombre_par', 'tecnica__nombre_tec')
			
        paginator = Paginator(queryset, 50) #50 formularios por página, pedido explicito del cliente
        page = request.GET.get('page')
        try:
            objects =paginator.page(page)
        except PageNotAnInteger:
            objects = paginator.page(1)
        except EmptyPage:
            objects = paginator.page(paginator.num_pages)
        page_query = queryset.filter(id__in=[object.id for object in objects])
        	
        formset = ParametroPrecioFormSet(queryset=page_query) 
        contexto = {"ParametroPrecioFormSet": formset, "iditem":iditem, "querysearch":querysearch,"objects": objects}
        #contexto['formset'] = {"ParametroPrecioFormSet": formset}
    return render_to_response("presupuestos/promptparametroprecio_ligth.html", 
                              contexto
                             )
	
