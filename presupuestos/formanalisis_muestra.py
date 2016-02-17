from django.forms import ModelForm
from django.forms.models import inlineformset_factory

from .models import Analisis, Muestra

"""
class Analisis_Muestra(ModelForm):
	class Meta:
		model = Analisis
		fields= '__all__'

	def save(self, commit=True):
		instance = super(Muestra_Ot_ItemForm, self).save(commit=False)
		if commit:
			instance.save()
		return instance 
"""
Analisis_MuestraFormSet = inlineformset_factory(Muestra, Analisis, fields='__all__')
