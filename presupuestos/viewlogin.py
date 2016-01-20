# -- coding: utf-8 --
#ver https://docs.djangoproject.com/es/1.9/topics/auth/default/
from django.contrib.auth import authenticate
def user_login(request):
	#Si el request es HTTP POST, intentar extraer la información relevante
	if request.method == 'POST':
		#reunir el usuario y clave provisto por el usuario
		#Se obtiene del form Login.
		username = request.POST.get('username')
		password = request.POST.get('password')
		#consultar a django si la combinación usuario-clave es válida
		#si es válida se retorna un objeto User
		user = authenticate(username=username, password=password)
		
		#Si no existe el objeto--> no se encontró el usuario con las credenciales indicadas
		if user:
			if user.is_active:
				#Si el usuario es válido y activo, podemos loguearlo
				login(request,user)
				return HttpResponseRedirect( reverse('presupuestos:presupuesto_listar') )
			else:
				return HttpResponse('Su cuenta se encuentra desactivada')
		else:
			return HttpResponse('Ha indicado datos de acceso inválidos')
		
	else: #Si no es POST, asumo GET y muestro el formulario de Login
		#No paso variables de contexto, así que va el diccionario vacio
		return render(request, 