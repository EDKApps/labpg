# -*- encoding: utf-8 -*-
from appy.pod.renderer import Renderer


def prueba(origen, destino):
    #dummy = '<b>hola mundo</b>'
    print "hola"
    dummy = """
    <p>Te<b>s</b>t1 : <b>bold</b>, i<i>tal</i>ics, exponent<sup>34</sup>, sub<sub>45</sub>.</p>
    <p>An <a href="http://www.google.com">hyperlink</a> to Google.</p>
    <h2>Heading<br /></h2>
    Heading Blabla.<br />
    <h3>SubHeading</h3>
    Subheading blabla.<br />
    """
    #print dummy
    tipotrabajo = 'creativo'
    untexto='xxx'
    #origen= '/opt/EDKAppsLab/labpg/temporal_odt/presupuesto_impresion_odt_full.odt'
    #destino= '/opt/EDKAppsLab/labpg/temporal_odt/resultado.odt'
    #rutaarchivo = '/home/marcelo/pydesarrollo/appy.pod/bulb.png'
    contexto= {"tipotrabajo":tipotrabajo,"untexto":untexto, "dummy":dummy}
    #contexto = {"ParametroPrecioFormSet": formset, "iditem":iditem, "querysearch":querysearch,"objects": objects}
    print contexto
    renderer = Renderer(origen, contexto, destino)
    renderer.run()
    