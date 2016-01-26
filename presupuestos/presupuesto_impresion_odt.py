#!/usr/bin/env python 
#-- coding: utf-8 --
#from django.db import models
from .models import Presupuesto, Item, Subitem_perfil, Campania, Subitem_parametro, PerfilPrecio_Parametro


#Presupuesto


def impresion(idpresupuesto):
    presupuesto = Presupuesto.objects.get(id=idpresupuesto)
    dummy = '<h2>Presupuesto: {0}</h2>'.format(presupuesto.referencia)
    dummy += '<p>Cliente: {0}</p>'.format(presupuesto.cliente.empresa)
    dummy += '<p>Contacto: {0}</p>'.format(presupuesto.cliente)
    dummy += '<p>Referencia clave: {0}</p>'.format(presupuesto.referencia_clave)
    dummy += '<p>Referencia: {0}</p>'.format(presupuesto.referencia)
    dummy += '<p>Tipo: {0}</p>'.format(presupuesto.tipo)
    dummy += '<p>Fecha de solicitud: {0}</p>'.format(presupuesto.fecha_solicitud)
    dummy += '<p>Fecha de vencimiento: {0}</p>'.format(presupuesto.fecha_vencimiento)
    dummy += '<p>Fecha de envio: {0}</p>'.format(presupuesto.fecha_envio)
    dummy += '<p>Fecha de aprobacion: {0}</p>'.format(presupuesto.fecha_aprobacion)
    dummy += '<p>Descripcion: {0}</p>'.format(presupuesto.descripcion.encode('utf-8'))
    dummy += '<p>Estado: {0}</p>'.format(presupuesto.estado)
    dummy += '<p>Observacion: {0}</p>'.format(presupuesto.observacion)
    dummy += '<p>Descuento (%): {0}</p>'.format(presupuesto.descuento)
    #item = Item.objects.get(id=iditem)
    #for item in presupuesto.item_set.all:
    
    for item in Item.objects.filter(presupuesto=presupuesto):
        dummy += '<p>Item {0}</p>'.format(item.numero)
        dummy += '<p>Matriz: {0}</p>'.format(item.matriz)
        dummy += '<p>Descripcion: {0}</p>'.format(item.descripcion)
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
    for campania in Campania.objects.filter(presupuesto=presupuesto):
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
    dummy += '<h2>Resumen del presupuesto</h2>'
    dummy += '<p>Total General: </p>'
    dummy += '<p>Presupuesto numero: {0}</p>'.format(presupuesto.referencia)
    dummy += '<p>Totales: </p>'
    dummy += '<p>Descuento: {0}%</p>'.format(presupuesto.descuento) 
    dummy += '<p>Total sin descuento: {0}</p>'.format(presupuesto.total_sin_descuento())
    dummy += '<p>Total con descuento: {0}</p>'.format(presupuesto.total_con_descuento())
    print dummy
    return dummy