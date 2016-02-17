 # -- coding: utf-8 --
from django import forms
from django.shortcuts import render
from django.http import HttpResponse
from django.db.models import Q #para OR en consultas

from django.core.urlresolvers import reverse, reverse_lazy
from django.http import HttpResponseRedirect
from django.views.generic import UpdateView, DetailView, ListView

from .formanalisis_muestra import Analisis_MuestraFormSet
from .models import Analisis, Muestra, Ot_Item

Muestra_fields = ('referencia_clave', 'referencia')

class Analisis_Ot_Item_Listar(ListView):
    template_name = 'presupuestos/analisis_ot_item_list.html'
    paginate_by = 10
    

    #búsqueda
    def get_queryset(self):
        query = self.request.GET.get('q')
        if query is None:
            return Ot_Item.objects.order_by('-orden_trabajo','numero')
        else:
            return Ot_Item.objects.filter( Q(numero__icontains=query)| 
                                           Q(orden_trabajo__referencia__icontains=query) | 
                                           Q(item__matriz__nombre_matriz__icontains=query) | 
                                           Q(estado__estado_actual__icontains=query)).order_by('-orden_trabajo','numero')
                                  
    #almacenar contexto de la búsqueda
    def get_context_data(self, **kwargs):
        context = super(Analisis_Ot_Item_Listar, self).get_context_data(**kwargs)
        q = self.request.GET.get('q')
        if q: #si existe el valor, lo agrego/actualizo en el contexto
            q = q.replace(" ","+")
            context['query'] = q
        return context    
    
    
    
class Ot_Item_Muestras(DetailView): #Muestras de un ot_item
    template_name = 'presupuestos/ot_item_muestras.html'    
    model = Ot_Item
    fields = '__all__'




class Muestra_AnalisisFormModificar(forms.ModelForm):

    #hacer que numero no sea editable
    class Meta:
        #Provee una asociación entre el ModelForm y un model
        model = Muestra
        fields = Muestra_fields

class Muestra_AnalisisModificar(UpdateView):
    template_name = 'presupuestos/analisis_muestra_form.html'
    model = Muestra
    form_class = Muestra_AnalisisFormModificar
    success_url = reverse_lazy('presupuestos:analisis_muestra_listar')
    
    def get(self, request, *args, **kwargs):
        """
        Maneja GET requests e instancia una versión limpia del form y su formset
        """
        self.object = self.get_object()
        form_class = self.get_form_class()
        form = self.get_form(form_class)        
        #render form 
        analisis_form = Analisis_MuestraFormSet(instance = self.object)
        
        return self.render_to_response(
            self.get_context_data(form=form,
                                  analisis_form=analisis_form,
                                  ))
    
    def post(self, request, *args, **kwargs):        
        """
        Maneja POST request instanciando un form con sus formsets,
        con las variables POST pasadas y chequea validez
        """
        self.object = self.get_object()
        form_class = self.get_form_class()
        form = self.get_form(form_class)
        
        analisis_form = Analisis_MuestraFormSet(request.POST,request.FILES,instance= self.object )
        
        if (form.is_valid() and analisis_form.is_valid()):

            
            self.object = form.save(commit=False)
            
            self.object.save()
            muestra_form.save()
            #Eliminar lo indicado del subnivel
            return HttpResponseRedirect(self.get_success_url())
        else:
            return self.form_invalid(form, analisis_form)
                
    def form_invalid(self, form, muestra_form):
        """
        Llamada si un formulario es inválido. Re-renders context data con el formulario
        cargado y los errores
        """
        return self.render_to_response(
                self.get_context_data(form=form,
                                      analisis_form = analisis_form))

