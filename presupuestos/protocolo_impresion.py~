#!/usr/bin/env python 
#-- coding: utf-8 --
#from django.db import models
from .models import Orden_trabajo, Presupuesto, Ot_Item, Item, Muestra, Analisis

def protocoloimpresion(idot):
	ot = Orden_trabajo.objects.get(id=idot)
	plantilla = '<h2>Protocolo: {0}</h2>'.format(ot.referencia_completa())
	plantilla += '<p>Cliente: {0}</p>'.format(ot.presupuesto.cliente)
	plantilla += '<p>Domicilio: {0}</p>'.format(ot.presupuesto.cliente.domicilio)
	plantilla += '<p>Localidad: {0}</p>'.format(ot.presupuesto.cliente.localidad)
	plantilla += '<p>Telefono fijo/movil: {0}/{1}</p>'.format(ot.presupuesto.cliente.telefono_fijo,ot.presupuesto.cliente.telefono_movil)
	plantilla += '<p>Email: {0}</p>'.format(ot.presupuesto.cliente.email)
	plantilla += '<h2>Presupuesto: {0}</h2>'.format(ot.presupuesto)
	plantilla += '<p>Descripcion: {0}</p>'.format(ot.descripcion)
	plantilla += '<p>Prioridad: {0}</p>'.format(ot.prioridad)
	plantilla += '<p>Fecha de creacion: {0}</p>'.format(ot.fecha_creacion)
	plantilla += '<h2>Detalles de items </h2>'
	for otitem in Ot_Item.objects.filter(orden_trabajo=ot):
		plantilla += '<p>----------------------------------------------------------------------------------------------------------------------</p>'
		plantilla += '<b>Item: {0}</b>'.format(otitem.numero)
		plantilla += '<p>Descipcion: {0}</p>'.format(otitem.item)
		plantilla += '<p>Cantidad: {0}</p>'.format(otitem.cantidad)
		plantilla += '<p>Estado {0}</p>'.format(otitem.estado)
		for muestra in Muestra.objects.filter(ot_item=otitem).order_by('referencia'):
			plantilla += '<p>-----</p>'
			plantilla += '<b>Muestra: {0}</b>'.format(muestra.referencia_completa())
			plantilla += '<p>Ingreso de la muestra: {0}</p>'.format(muestra.ingreso_muestra)
			plantilla += '<p>Fecha de ingreso: {0}</p>'.format(muestra.fecha_ingreso)
			plantilla += '<p>Cadena de custodia: {0}</p>'.format(muestra.cadena_custodia)
			plantilla += '<p>Rotulo: {0}</p>'.format(muestra.rotulo)
			plantilla += '<p>Ubicacion: {0}</p>'.format(muestra.ubicacion)
			plantilla += '<p>Sitio: {0}</p>'.format(muestra.sitio_muestreo)
			plantilla += '<p>Muestreador: {0}</p>'.format(muestra.muestreador)
			if not muestra.peso:
				plantilla += ''
			else:
				plantilla += '<p>Peso: {0}</p>'.format(muestra.peso)
			if not muestra.volumen:
				plantilla += ''
			else:
				plantilla += '<p>Volumen: {0}</p>'.format(muestra.volumen)
			if not muestra.caudal:
				plantilla += ''
			else:
				plantilla += '<p>Caudal: {0}</p>'.format(muestra.caudal)
			
			plantilla += '<p>Preservacion: {0}</p>'.format(muestra.preservacion)
			plantilla += '<p>Fecha Muestreo: {0}</p>'.format(muestra.fecha_muestreo)
			plantilla += '<p>Coordenadas: {0}</p>'.format(muestra.coordenada)
			plantilla += '<p>Sistema de las coordenadas: {0}</p>'.format(muestra.sistema_coordenada)
			plantilla += '<p>Observacion: {0}</p>'.format(muestra.observacion)
			plantilla += '<br/>'
			plantilla += '<b>Analisis</b>'º
			plantilla += '<table>'
			plantilla += '<tr>'
			plantilla += '<td>Parametro </td>'
			plantilla += '<td> Tecnica </td>'
			plantilla += '<td>Unidad </td>'
			plantilla += '<td>LCT </td>'
			plantilla += '<td>Resultado </td>'
			plantilla += '</tr>'
			for analisis in Analisis.objects.filter(muestra=muestra):
				plantilla += '<tr>'
				plantilla += '<td>{0}</td>'.format(analisis.parametro)
				plantilla += '<td>{0}</td>'.format(analisis.tecnica)
				plantilla += '<td>{0}</td>'.format(analisis.unidad)
				plantilla += '<td>{0}</td>'.format(analisis.lct)
				plantilla += '<td>{0}</td>'.format(analisis.valor)
				plantilla += '</tr>'
			plantilla += '</table>'
			plantilla += '<br/>'
			plantilla += '<b>Analisis plus</b>'
			plantilla += '<br/>'
			plantilla += '<table>'
			plantilla += '<tr>'
			plantilla += '<td>Parametro </td>'
			plantilla += '<td> Tecnica </td>'
			plantilla += '<td>Unidad </td>'
			plantilla += '<td>LCT:</td>'
			plantilla += '<td>Resultado </td>'
			plantilla += '<td>Verificacion </td>'
			plantilla += '<td>Obervacion </td>'
			plantilla += '</tr>'
			for analisis in Analisis.objects.filter(muestra=muestra):
				plantilla += '<tr>'
				plantilla += '<td>{0}</td>'.format(analisis.parametro)
				plantilla += '<td>{0}</td>'.format(analisis.tecnica)
				plantilla += '<td>{0}</td>'.format(analisis.unidad)
				plantilla += '<td>{0}</td>'.format(analisis.lct)
				plantilla += '<td>{0}</td>'.format(analisis.valor)
				plantilla += '<td>{0}</td>'.format(analisis.verificacion)
				plantilla += '<td>{0}</td>'.format(analisis.observacion)
				plantilla += '</tr>'
			plantilla += '</table>' 
					
	return plantilla