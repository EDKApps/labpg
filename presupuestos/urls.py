 # -- coding: utf-8 --
from django.conf.urls import patterns, include, url
from .viewcliente import labinicio, ClienteCrear, ClienteBorrar, ClienteDetalle, ClienteListar, ClienteModificar
from .viewclienteprompt import ClientePrompt
from .viewpresupuesto import PresupuestoCrear, PresupuestoBorrar, PresupuestoDetalle, PresupuestoListar, PresupuestoModificar, PresupuestoDetalleFull
from .viewordendetrabajo import OrdenDeTrabajoListar
from .viewmatriz import MatrizCrear, MatrizBorrar, MatrizDetalle, MatrizListar, MatrizModificar
from .viewfamilia import FamiliaCrear, FamiliaBorrar, FamiliaDetalle, FamiliaConfirmaAlta, FamiliaListar, FamiliaModificar
from .viewparametro import ParametroCrear, ParametroBorrar, ParametroDetalle, ParametroListar, ParametroModificar, ParametroListarVisualizar
from .viewtecnica import TecnicaCrear, TecnicaBorrar, TecnicaDetalle, TecnicaListar, TecnicaModificar, TecnicaListarVisualizar
from .viewunidades import UnidadesCrear, UnidadesBorrar, UnidadesDetalle, UnidadesListar, UnidadesModificar
from .viewmatriztecnicalct import MatrizTecnicaLctCrear, MatrizTecnicaLctBorrar, MatrizTecnicaLctDetalle,MatrizTecnicaLctConfirmaAlta, MatrizTecnicaLctListar, MatrizTecnicaLctModificar
from .viewparametroprecio import ParametroPrecioCrear, ParametroPrecioBorrar, ParametroPrecioDetalle, ParametroPrecioListar, ParametroPrecioModificar, ParametroPrecioListarVisualizar
from .viewperfilprecio import PerfilPrecioCrear, PerfilPrecioBorrar, PerfilPrecioDetalle, PerfilPrecioConfirmaAlta, PerfilPrecioListar, PerfilPrecioModificar, PerfilPrecioListarVisualizar
from .viewitem import ItemCrear, ItemBorrar, ItemDetalle, ItemListar, ItemModificar
from .viewpresupuestoitem import PresupuestoItemModificar, PresupuestoItemDetalle
from .viewpresupuestocampania import PresupuestoCampaniaModificar
from .viewitemsubitem import ItemSubitemModificar
from .viewpromptparametros import promptparametros
from .viewpromptperfiles import promptperfiles
from .viewpresupuesto_impresion import Presupuesto_ImpresionModificar
from .vieworden_trabajo import Orden_trabajoCrear, Orden_trabajoBorrar, Orden_trabajoDetalle, Orden_trabajoListar, Orden_trabajoModificar, Orden_trabajoDetalleFull
from .viewotitem import Ot_ItemModificar, Ot_ItemListar
from .viewpromptitems import promptitems
from .viewpresupuestoimpresion_odt_full import presupuesto_impresion_odt_full
from .viewmuestra import Muestra_Ot_Item_Listar, Muestra_Ot_ItemModificar, Muestra_Listar
from .viewlogin import user_login, user_logout
from django.contrib.auth.decorators import login_required


urlpatterns = patterns('',
             
    #Base
    url(r'^$', login_required(PresupuestoListar.as_view()), name='lab_inicio'), #por defecto va al listar presupuestos                       
    #Clientes
    url(r'^clientes/$', login_required(ClienteListar.as_view()), name='cliente_listar'),
    url(r'^clientes/crear/$', login_required(ClienteCrear.as_view()), name='cliente_crear'),
    url(r'^clientes/(?P<pk>\d+)/$', login_required(ClienteDetalle.as_view()), name='cliente_detalle'),
    url(r'^clientes/(?P<pk>\d+)/modificar/$', login_required(ClienteModificar.as_view()), name='cliente_modificar'),
    url(r'^clientes/(?P<pk>\d+)/borrar/$', login_required(ClienteBorrar.as_view()), name='cliente_borrar'),
    #prompt de clientes
    url(r'^clienteprompt/$', login_required(ClientePrompt.as_view()), name='cliente_prompt'),
    #Presupuestos
    url(r'^presupuestos/$', login_required(PresupuestoListar.as_view()), name='presupuesto_listar'),
    url(r'^presupuestos/crear/$', login_required(PresupuestoCrear.as_view()), name='presupuesto_crear'),
    url(r'^presupuestos/(?P<pk>\d+)/$', login_required(PresupuestoDetalle.as_view()), name='presupuesto_detalle'),
    url(r'^presupuestos/(?P<pk>\d+)/modificar/$', login_required(PresupuestoModificar.as_view()), name='presupuesto_modificar'),
    url(r'^presupuestos/(?P<pk>\d+)/borrar/$', login_required(PresupuestoBorrar.as_view()), name='presupuesto_borrar'),
    url(r'^presupuestosfull/(?P<pk>\d+)/$', login_required(PresupuestoDetalleFull.as_view()), name='presupuesto_detalle_full'),
    #Presupuesto impresion form
    url(r'^presupuestos/(?P<pk>\d+)/modificar_impresion/$', login_required(Presupuesto_ImpresionModificar.as_view()), name='presupuesto_modificar_impresion'),
    #Presupuesto impresion odt (Open Document)                   
    #url(r'^presupuestos/(?P<pk>\d+)/impresion_odt/$', presupuesto_impresion_odt(), name='presupuesto_impresion_odt')
    #ejemplo: http://localhost:8000/presupuestos/presupuestos/1/impresion_odt_full/
    url(r'^presupuestos/(?P<idpresupuesto>\d+)/impresion_odt_full/$', login_required(presupuesto_impresion_odt_full), name='presupuesto_impresion_odt_full'),
                       
    #Ordenes de trabajo
    url(r'^ordenestrabajo/$', login_required(Orden_trabajoListar.as_view()), name='orden_trabajo_listar'), 
    url(r'^ordenestrabajo/crear/$', login_required(Orden_trabajoCrear.as_view()), name='orden_trabajo_crear'),
    url(r'^ordenestrabajo/(?P<pk>\d+)/$', login_required(Orden_trabajoDetalle.as_view()), name='orden_trabajo_detalle'),
    url(r'^ordenestrabajo/(?P<pk>\d+)/modificar/$', login_required(Orden_trabajoModificar.as_view()), name='orden_trabajo_modificar'),
    url(r'^ordenestrabajo/(?P<pk>\d+)/borrar/$', login_required(Orden_trabajoBorrar.as_view()), name='orden_trabajo_borrar'),
    url(r'^ordenestrabajofull/(?P<pk>\d+)/$', login_required(Orden_trabajoDetalleFull.as_view()), name='orden_trabajo_detalle_full'),

    #relacion ot-item
    url(r'^otitem/(?P<pk>\d+)/modificar/$', login_required(Ot_ItemModificar.as_view()), name='ot_item_modificar'),
     
    #multiselección de ot-item y presupuesto Item
    url(r'^promptitems/(?P<idot>\d+)/$', login_required(promptitems), name='promptitems'),
                  
    #OT Item, listado
    url(r'^otitem/$', login_required(Ot_ItemListar.as_view()), name='otitem_listar'),

    #Muestras
    url(r'^muestra/$', login_required(Muestra_Ot_Item_Listar.as_view()), name='muestra_ot_item_listar'), 
     url(r'^muestra/(?P<pk>\d+)/modificar/$', login_required(Muestra_Ot_ItemModificar.as_view()), name='muestra_ot_item_modificar'), 
    url(r'^muestralist/$', login_required(Muestra_Listar.as_view()), name='muestra_listar'), 
   					 
	#Matriz
    url(r'^matriz/$', login_required(MatrizListar.as_view()), name='matriz_listar'),
    url(r'^matriz/crear/$', login_required(MatrizCrear.as_view()), name='matriz_crear'),
    url(r'^matriz/(?P<pk>\d+)/$', login_required(MatrizDetalle.as_view()), name='matriz_detalle'),
    url(r'^matriz/(?P<pk>\d+)/modificar/$', login_required(MatrizModificar.as_view()), name='matriz_modificar'),
    url(r'^matriz/(?P<pk>\d+)/borrar/$', login_required(MatrizBorrar.as_view()), name='matriz_borrar'),
						   
	#Familia
    url(r'^familia/$', login_required(FamiliaListar.as_view()), name='familia_listar'),
    url(r'^familia/crear/$', login_required(FamiliaCrear.as_view()), name='familia_crear'),
    url(r'^familia/(?P<pk>\d+)/$', login_required(FamiliaDetalle.as_view()), name='familia_detalle'),
	url(r'^familia/(?P<pk>\d+)/confirmaalta$', login_required(FamiliaConfirmaAlta.as_view()), name='familia_confirma_alta'),
    url(r'^familia/(?P<pk>\d+)/modificar/$', login_required(FamiliaModificar.as_view()), name='familia_modificar'),
    url(r'^familia/(?P<pk>\d+)/borrar/$', login_required(FamiliaBorrar.as_view()), name='familia_borrar'),					   
					   
	#Parametro
    url(r'^parametro/$', login_required(ParametroListar.as_view()), name='parametro_listar'),
    url(r'^parametro/crear/$', login_required(ParametroCrear.as_view()), name='parametro_crear'),
    url(r'^parametro/(?P<pk>\d+)/$', login_required(ParametroDetalle.as_view()), name='parametro_detalle'),
    url(r'^parametro/(?P<pk>\d+)/modificar/$', login_required(ParametroModificar.as_view()), name='parametro_modificar'),
    url(r'^parametro/(?P<pk>\d+)/borrar/$', login_required(ParametroBorrar.as_view()), name='parametro_borrar'),					   
    url(r'^parametro_listar_visualizar/$', login_required(ParametroListarVisualizar.as_view()), name='parametro_listar_visualizar'),

	#Tecnica
    url(r'^tecnica/$', login_required(TecnicaListar.as_view()), name='tecnica_listar'),
    url(r'^tecnica/crear/$', login_required(TecnicaCrear.as_view()), name='tecnica_crear'),
    url(r'^tecnica/(?P<pk>\d+)/$', login_required(TecnicaDetalle.as_view()), name='tecnica_detalle'),
    url(r'^tecnica/(?P<pk>\d+)/modificar/$', login_required(TecnicaModificar.as_view()), name='tecnica_modificar'),
    url(r'^tecnica/(?P<pk>\d+)/borrar/$', login_required(TecnicaBorrar.as_view()), name='tecnica_borrar'),	
    url(r'^tecnica_listar_visualizar/$', login_required(TecnicaListarVisualizar.as_view()), name='tecnica_listar_visualizar'),

    #Unidades
    url(r'^unidades/$', login_required(UnidadesListar.as_view()), name='unidades_listar'),
    url(r'^unidades/crear/$', login_required(UnidadesCrear.as_view()), name='unidades_crear'),
    url(r'^unidades/(?P<pk>\d+)/$', login_required(UnidadesDetalle.as_view()), name='unidades_detalle'),
    url(r'^unidades/(?P<pk>\d+)/modificar/$', login_required(UnidadesModificar.as_view()), name='unidades_modificar'),
    url(r'^unidades/(?P<pk>\d+)/borrar/$', login_required(UnidadesBorrar.as_view()), name='unidades_borrar'),


	#MatrizTecnicaLct o Límite de cuantificación
    url(r'^matriztecnicalct/$', login_required(MatrizTecnicaLctListar.as_view()), name='matriztecnicalct_listar'),
    url(r'^matriztecnicalct/crear/$', login_required(MatrizTecnicaLctCrear.as_view()), name='matriztecnicalct_crear'),
    url(r'^matriztecnicalct/(?P<pk>\d+)/$', login_required(MatrizTecnicaLctDetalle.as_view()), name='matriztecnicalct_detalle'),
    url(r'^matriztecnicalct/(?P<pk>\d+)/confirmaalta$', login_required(MatrizTecnicaLctConfirmaAlta.as_view()), name='matriztecnicalct_confirma_alta'),                       
    url(r'^matriztecnicalct/(?P<pk>\d+)/modificar/$', login_required(MatrizTecnicaLctModificar.as_view()), name='matriztecnicalct_modificar'),
    url(r'^matriztecnicalct/(?P<pk>\d+)/borrar/$', login_required(MatrizTecnicaLctBorrar.as_view()), name='matriztecnicalct_borrar'),  
			
	#ParametroPrecio
    url(r'^parametroprecio/$', login_required(ParametroPrecioListar.as_view()), name='parametroprecio_listar'),
    url(r'^parametroprecio/crear/$', login_required(ParametroPrecioCrear.as_view()), name='parametroprecio_crear'),
    url(r'^parametroprecio/(?P<pk>\d+)/$', login_required(ParametroPrecioDetalle.as_view()), name='parametroprecio_detalle'),
    url(r'^parametroprecio/(?P<pk>\d+)/modificar/$', login_required(ParametroPrecioModificar.as_view()), name='parametroprecio_modificar'),
    url(r'^parametroprecio/(?P<pk>\d+)/borrar/$', login_required(ParametroPrecioBorrar.as_view()), name='parametroprecio_borrar'),
    url(r'^parametroprecio_listar_visualizar/$', login_required(ParametroPrecioListarVisualizar.as_view()), name='parametroprecio_listar_visualizar'),
                       
    #PerfilPrecio
    url(r'^perfilprecio/$', login_required(PerfilPrecioListar.as_view()), name='perfilprecio_listar'),
    url(r'^perfilprecio/crear/$', login_required(PerfilPrecioCrear.as_view()), name='perfilprecio_crear'),
    url(r'^perfilprecio/(?P<pk>\d+)/$', login_required(PerfilPrecioDetalle.as_view()), name='perfilprecio_detalle'),
	url(r'^perfilprecio/(?P<pk>\d+)/confirmaalta$', login_required(PerfilPrecioConfirmaAlta.as_view()), name='perfilprecio_confirma_alta'),                         
    url(r'^perfilprecio/(?P<pk>\d+)/modificar/$', login_required(PerfilPrecioModificar.as_view()), name='perfilprecio_modificar'),
    url(r'^perfilprecio/(?P<pk>\d+)/borrar/$', login_required(PerfilPrecioBorrar.as_view()), name='perfilprecio_borrar'),    
    url(r'^perfilprecio_listar_visualizar/$', login_required(PerfilPrecioListarVisualizar.as_view()), name='perfilprecio_listar_visualizar'),
                       
	#Item
    url(r'^item/$', login_required(ItemListar.as_view()), name='item_listar'),
    url(r'^item/crear/$', login_required(ItemCrear.as_view()), name='item_crear'),
    url(r'^item/(?P<pk>\d+)/$', login_required(ItemDetalle.as_view()), name='item_detalle'),
    url(r'^item/(?P<pk>\d+)/modificar/$', login_required(ItemModificar.as_view()), name='item_modificar'),
    url(r'^item/(?P<pk>\d+)/borrar/$', login_required(ItemBorrar.as_view()), name='item_borrar'),
	
    #relacion presupuesto-item
    url(r'^presupuestoitem/(?P<pk>\d+)/$', login_required(PresupuestoItemDetalle.as_view()), name='presupuestoitem_detalle'),
    url(r'^presupuestoitem/(?P<pk>\d+)/modificar/$', login_required(PresupuestoItemModificar.as_view()), name='presupuestoitem_modificar'),

    #relacion presupuesto-campania
    #url(r'^presupuestoitem/(?P<pk>\d+)/$', PresupuestoItemDetalle.as_view(), name='presupuestoitem_detalle'),
    url(r'^presupuestocampania/(?P<pk>\d+)/modificar/$', login_required(PresupuestoCampaniaModificar.as_view()), name='presupuestocampania_modificar'),
    
    #relacion item-subitem (parámetro y perfil)
    url(r'^itemsubitem/(?P<pk>\d+)/modificar/$', login_required(ItemSubitemModificar.as_view()), name='itemsubitem_modificar'),
                       
    #multiselección de parámetros
    #http://localhost:8000/presupuestos/promptparametros/1/
    url(r'^promptparametros/(?P<iditem>\d+)/$', login_required(promptparametros), name='promptparametros'),
                       
    #multiseleccion de perfiles
    url(r'^promptperfiles/(?P<iditem>\d+)/$', login_required(promptperfiles), name='promptperfiles'),
    
    #Login y logout                      
    url(r'^login/$', user_login, name='login'),
    url(r'^logout/$', user_logout, name='logout'),


)
