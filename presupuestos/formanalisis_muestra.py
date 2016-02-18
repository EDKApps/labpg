from django.forms import ModelForm
from django.forms.models import inlineformset_factory

from .models import Analisis, Muestra

analisis_fields = ['valor', 'verificacion','observacion']
class Analisis_Muestra(ModelForm):
	class Meta:
		#model = Analisis
		model = Muestra
		fields= '__all__'

	def save(self, commit=True):
		instance = super(Analisis_Muestra, self).save(commit=False)
		if commit:
			instance.save()
		return instance 

Analisis_MuestraFormSet = inlineformset_factory(Muestra, Analisis, fields=analisis_fields)
