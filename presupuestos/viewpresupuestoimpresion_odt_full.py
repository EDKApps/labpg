# -*- encoding: utf-8 -*-
from django.http import HttpResponse
from appy.pod.renderer import Renderer
import labutiles
import tempfile
import os
from django.core.servers.basehttp import FileWrapper 
from django.core.files import File

def presupuesto_impresion_odt_full(request, idpresupuesto):
	#ruta de la plantilla
    plantilla_odt_path = os.path.join(labutiles.PLANTILLA_ODT_PATH,'presupuesto_impresion_odt_full.odt')
	#Necesito un nombre aleatorio en la carpeta de temporales
    file_odt_resultado = tempfile.NamedTemporaryFile(delete=True,prefix='lab_', suffix='.odt') 

    odt_resultado_path = file_odt_resultado.name #path al archivo de resultado
    file_odt_resultado.close() #Se debería eliminar el archivo	

    print 'origen>>' + str(plantilla_odt_path)
    print 'destino>>'+ str(file_odt_resultado)	
	
    dummy = """
    <p>Te<b>s</b>t1 : <b>bold</b>, i<i>tal</i>ics, exponent<sup>34</sup>, sub<sub>45</sub>.</p>
    <p>An <a href="http://www.google.com">hyperlink</a> to Google.</p>
    <h2>Heading<br /></h2>
    Heading Blabla.<br />
    <h3>SubHeading</h3>
    Subheading blabla.<br />
    """	

    tipotrabajo = 'creativo'
    untexto='xxx'
    contexto= {"tipotrabajo":tipotrabajo,"untexto":untexto, "dummy":dummy}
    renderer = Renderer(plantilla_odt_path, contexto, odt_resultado_path)
    renderer.run()    	
    archivo_resultado = File(open(odt_resultado_path))
    wrapper = FileWrapper(archivo_resultado) 
    
    """
	response = HttpResponse(content_type='text/html')
    response['Content-Disposition'] = 'attachment; filename="archivo.html"'	
    return response
    """
    response = HttpResponse(wrapper, content_type='text/html')
    response['Content-Disposition'] = 'attachment; filename=%s' % os.path.basename(odt_resultado_path)
    response['Content-Length'] = os.path.getsize(odt_resultado_path)
    return response
    

#f = tempfile.NamedTemporaryFile(delete=False,prefix='lab_', suffix='.odt')
#f.name
#f.write('dddldld')
#f.close()
#import os
#os.unlink(f.name)
#os.path.exists(f.name)