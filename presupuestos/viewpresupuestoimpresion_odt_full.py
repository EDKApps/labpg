# -*- encoding: utf-8 -*-
from django.http import HttpResponse
from appy.pod.renderer import Renderer
import labutiles
import tempfile
import os

from .prueba import prueba


#obtener desde un archivo una ruta con las plantillas odt
#en settings.py ver tema archivos temporales
#crear plantilla en carpeta odt
#generar en carpeta temporal
#ver como mostrar retornar un link o algo similar a alguna pantalla de presupuestos

def presupuesto_impresion_odt_full(request, idpresupuesto):
	#rutas
    
    plantilla_odt_path = os.path.join(labutiles.PLANTILLA_ODT_PATH,'presupuesto_impresion_odt_full.odt')
    file_odt_resultado = tempfile.NamedTemporaryFile(delete=True,prefix='lab_', suffix='.odt')

    print 'origen>>' + str(plantilla_odt_path)
    print 'destino>>'+ str(file_odt_resultado.name)
    odt_resultado_path = file_odt_resultado.name
    file_odt_resultado.close() #Se debería eliminar el archivo	
	
   	
    #origen= '/opt/EDKAppsLab/labpg/temporal_odt/presupuesto_impresion_odt_full.odt'
    #destino= '/opt/EDKAppsLab/labpg/temporal_odt/resultado.odt'	
	
    prueba(plantilla_odt_path,odt_resultado_path)
    	
    """
    file_odt_resultado =  '/opt/EDKAppsLab/labpg/temporal_odt/prueba.odt' 
	#tempfile.NamedTemporaryFile(delete=True,prefix='lab_', suffix='.o	
	
    print 'origen>>' + str(plantilla_odt_path)
    print 'destino>>'+ str(file_odt_resultado)
    
	#contenido
    tipotrabajo = 'creativo'
    untexto='xxx'
    dummy= '<h1>dldldldl</h1>'
    rutaarchivo = '/home/marcelo/pydesarrollo/appy.pod/bulb.png'    
    
    print 'tipotrabajo>>'+tipotrabajo
    print 'untexto>>'+untexto
    print 'dummy>>'+dummy
    print 'rutaarchivo>>'+rutaarchivo
    #file_odt_resultado.close()
       
	#crear odt a partir de plantilla
    renderer = Renderer(plantilla_odt_path, globals(), file_odt_resultado)
    renderer.run()	
    """        	
    response = HttpResponse(content_type='text/html')
    response['Content-Disposition'] = 'attachment; filename="archivo.html"'	
      
    #print labutiles.PLANTILLA_ODT_PATH
    return response
    

#f = tempfile.NamedTemporaryFile(delete=False,prefix='lab_', suffix='.odt')
#f.name
#f.write('dddldld')
#f.close()
#import os
#os.unlink(f.name)
#os.path.exists(f.name)