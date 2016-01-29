#!/usr/bin/env python 
#-- coding: utf-8 --
#from django.db import models
from datetime import datetime, date, time, timedelta
from .models import Presupuesto, Item, Subitem_perfil, Campania, Subitem_parametro, PerfilPrecio_Parametro

#Presupuesto

def impresion(idpresupuesto):
    presupuesto = Presupuesto.objects.get(id=idpresupuesto)
    dummy = '<h3>Presupuesto</h3>'
    hora = datetime.today()
    dummy += '<p>Fecha: {0}</p>'.format(hora.strftime('%d/%m/%Y'))
    dummy += '<p>Presupuesto número: {0}</p>'.format(presupuesto.referencia_completa())
    dummy += '<p></p>'
    dummy += '<b>Datos del Cliente</b>'
    dummy += '<p>Cliente: {0}</p>'.format(presupuesto.cliente.empresa)
    dummy += '<p>Cuit: {0}</p>'.format(presupuesto.cliente.cuit)
    dummy += '<p>Contacto: {0}</p>'.format(presupuesto.cliente.contacto.encode('utf-8'))
    dummy += '<p>Domicilio: {0}</p>'.format(presupuesto.cliente.domicilio)
    dummy += '<p>Telefono: {0}, {1}</p>'.format(presupuesto.cliente.telefono_fijo, presupuesto.cliente.telefono_movil)
    dummy += '<p>Email: {0}</p>'.format(presupuesto.cliente.email)
    dummy += '<p>--------------------------------------------------------------------------------------------------------</p>'

    dummy += '<b>Datos del Presupuesto</b>'
    dummy += '<p>Introducción: {0}</p>'.format(presupuesto.impresion_introduccion.encode('utf-8'))
    dummy += '<p>Descripcion: {0}</p>'.format(presupuesto.descripcion.encode('utf-8'))
    dummy += '<p>Tipo: {0}</p>'.format(presupuesto.tipo)
    dummy += '<p></p>'
    #dummy += '<p>Descuento (%): {0}</p>'.format(presupuesto.descuento)

    dummy += '<b>Detalle de Item</b>'
    for item in Item.objects.filter(presupuesto=presupuesto):
        dummy += '<p><b>Item {0}</b></p>'.format(item.numero)
        dummy += '<p>Matriz: {0}</p>'.format(item.matriz)
        dummy += '<p>Descripcion: {0}</p>'.format(item.descripcion.encode('utf-8'))
        dummy += '<p>Cantidad de muestras: {0}</p>'.format(item.cantidadMuestra)
        dummy += '<p>Costo Unitario: {0}</p>'.format(item.costo_unitario())
        dummy += '<p>Descuento: {0}</p>'.format(item.descuento)
        dummy += '<p>Total sin descuento: {0}</p>'.format(item.total_sin_descuento)	
        dummy += '<p>Total con descuento: {0}</p>'.format(item.total_con_descuento)
        dummy +=  '<br/>'

        dummy += '<table>'
        dummy += '<tr>'
        dummy += '<td>Perfil</td>'
        dummy += '<td>Parametro</td>'
        dummy += '<td>Metodologia analitica</td>'
        dummy += '<td>Costo unitario, Por muestra</td>'
        dummy += '</tr>'
        lista = Subitem_parametro.objects.filter(item = item)
        for subitem_parametro in lista:
            dummy += '<tr>'
            dummy += '<td>--</td>'
            dummy += '<td>{0}</td>'.format(subitem_parametro.itemparametro.parametro)
            dummy += '<td>{0}</td>'.format(subitem_parametro.itemparametro.tecnica)
            dummy += '<td>{0}</td>'.format(subitem_parametro.precio)
            dummy += '</tr>'
        if not lista:
            dummy += '<tr>'
            dummy += '<td></td>'
            dummy += '<td>No hay parametros registrados</td>'
            dummy += '<td></td>'
            dummy += '<td></td>'
            dummy += '</tr>'
        for subitem_perfil in Subitem_perfil.objects.filter(item=item):
            dummy += '<tr>'
            dummy += '<td>{0}</td>'.format(subitem_perfil.itemperfil.nombre)
            dummy += '<td></td>'
            dummy += '<td></td>'
            dummy += '<td>{0}</td>'.format(subitem_perfil.precio)
            dummy += '</tr>'
            for perfilPrecio_Par in PerfilPrecio_Parametro.objects.filter(perfilPrecio = subitem_perfil.itemperfil):	
                dummy += '<tr>'
                dummy += '<td></td>'
                dummy += '<td>{0}</td>'.format(perfilPrecio_Par.parametro)
                dummy += '<td>{0}</td>'.format(perfilPrecio_Par.tecnica)
                dummy += '<td>--</td>'
                dummy += '<td></td>'
                dummy += '</tr>'
        dummy += '</table>'
        dummy += '<br/>'


    listaMuestreo = Campania.objects.filter(presupuesto=presupuesto)
    if (listaMuestreo):
        dummy += '<h2>Muestreo: </h2>'
        dummy += '<table>'
        dummy += '<tr>'
        dummy += '<td>Numero</td>'
        dummy += '<td>Descripcion</td>'
        dummy += '<td>Cantidad</td>'
        dummy += '<td>Unidad de medida</td>'
        dummy += '<td>Valor unitario</td>'
        dummy += '<td>Descuento</td>'
        dummy += '<td>Valor total</td>'
        dummy += '</tr>'
        for campania in listaMuestreo:
            dummy += '<tr>'
            dummy += '<td>{0}</td>'.format(campania.numero)
            dummy += '<td>{0}</td>'.format(campania.descripcion)
            dummy += '<td>{0}</td>'.format(campania.cantidad)
            dummy += '<td>{0}</td>'.format(campania.unidad_medida.encode('utf-8'))
            dummy += '<td>{0}</td>'.format(campania.valor_unitario)
            dummy += '<td>{0}</td>'.format(campania.descuento)
            dummy += '<td>{0}</td>'.format(campania.valor_total_con_descuento)
            dummy += '</tr>'
        dummy += '</table>'
        dummy += '<br/>'
        dummy += '<p>Nota: {0}</p>'.format(presupuesto.impresion_nota_muestreo.encode('utf-8'))


    dummy += '<h2>Resumen del presupuesto</h2>'
    dummy += '<p><b>Total General</b></p>'
    dummy += '<p>Presupuesto numero: {0}</p>'.format(presupuesto.referencia_completa())
    dummy += '<p>Total: {0}</p>'.format(presupuesto.total_sin_descuento())
    if (presupuesto.descuento!=0):
        dummy += '<p>Descuento: {0}%</p>'.format(presupuesto.descuento) 
        dummy += '<p>Total con descuento: {0}</p>'.format(presupuesto.total_con_descuento())

    dummy += '<p>--------------------------------------------------------------------------------------------------------</p>'
    dummy += '<p><b>Condiciones Generales y notas técnicas</b></p>'
    dummy += '<br/>' 
    dummy += '<p>Condiciones comerciales: {0}</p>'.format(presupuesto.impresion_condiciones_comerciales.encode('utf-8'))
    dummy += '<br/>'
    dummy += '<p>Notas técnicas: {0}</p>'.format(presupuesto.impresion_condiciones_tecnicas.encode('utf-8'))

    print dummy
    return dummy
