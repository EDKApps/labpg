# -*- encoding: utf-8 -*-
"""
utilidades para usar desde distintos puntos del sistema

"""
import os
BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
#path a plantillas odt. Ejemplo: /opt/EDKAppsLab/labpg/plantillas_odt
PLANTILLA_ODT_PATH = os.path.join(BASE_DIR, 'plantillas_odt') #agregado basado en rango
