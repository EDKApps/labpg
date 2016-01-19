# -*- encoding: utf-8 -*-
from django.http import HttpResponse
from appy.pod.renderer import Renderer
import labutiles
import tempfile
import os
from django.core.servers.basehttp import FileWrapper 
from django.core.files import File
from .models import Presupuesto

def presupuesto_impresion_odt_full(request, idpresupuesto):
	#ruta de la plantilla
    plantilla_odt_path = os.path.join(labutiles.PLANTILLA_ODT_PATH,'presupuesto_impresion_odt_full.odt')
	#Necesito un nombre aleatorio en la carpeta de temporales
    file_odt_resultado = tempfile.NamedTemporaryFile(delete=True,prefix='lab_', suffix='.odt') 

    odt_resultado_path = file_odt_resultado.name #path al archivo de resultado
    file_odt_resultado.close() #Se debería eliminar el archivo	

    print 'origen>>' + str(plantilla_odt_path)
    print 'destino>>'+ str(file_odt_resultado)	
	
    presupuesto = Presupuesto.objects.get(id=idpresupuesto) 	
    dummy = '<h2>Presupuesto: {0}</h2>'.format(presupuesto.referencia) 
    dummy += '<p>Cliente: {0}</p>'.format(presupuesto.cliente.empresa) 
    dummy += '<p>Contacto: {0}</p>'.format(presupuesto.cliente)
    dummy += '<p>Referencia clave: {0}</p>'.format(presupuesto.referencia_clave)
    dummy += '<p>Referencia: {0}</p>'.format(presupuesto.referencia)
    dummy += '<p>Tipo: {0}</p>'.format(presupuesto.tipo)
    dummy += '<p>Fecha de solicitud: {0}</p>'.format(presupuesto.fecha_solicitud)



    tipotrabajo = 'creativo'
    untexto='xxx'
    contexto= {"tipotrabajo":tipotrabajo,"untexto":untexto, "dummy":dummy}
    renderer = Renderer(plantilla_odt_path, contexto, odt_resultado_path)
    renderer.run()    	
    archivo_resultado = File(open(odt_resultado_path))
    wrapper = FileWrapper(archivo_resultado) 
    
    response = HttpResponse(wrapper, content_type='text/html')
    response['Content-Disposition'] = 'attachment; filename=%s' % os.path.basename(odt_resultado_path)
    response['Content-Length'] = os.path.getsize(odt_resultado_path)
    return response