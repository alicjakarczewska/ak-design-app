from django import forms
from .models import Picture, Album

choices = [] # Album.objects.all().values_list('name', 'name') # []
choice_list = []

for item in choices:
    choice_list.append(item)

class PictureForm(forms.ModelForm):
    class Meta:
        model = Picture
        fields = ('title', 'author', 'album', 'body', 'header_image')

        widgets = {
            'title': forms.TextInput(attrs={
                'class': 'form-control', 
                'placeholder': 'Tytuł'}),
            'author': forms.TextInput(attrs={
                'class': 'form-control',
                'value': '',
                'id': 'elder',
                'type':'hidden'}),
            'album': forms.Select(
                choices=choice_list,
                attrs={'class':'form-contol'}),
            'body': forms.Textarea(attrs={
                'class': 'form-control', 
                'placeholder': 'Opis'}),
        }

class EditPictureForm(forms.ModelForm):
    class Meta:
        model = Picture
        fields = ('title', 'body')

        widgets = {
            'title': forms.TextInput(attrs={
                'class': 'form-control', 
                'placeholder': 'Tytuł'}),
            'body': forms.Textarea(attrs={
                'class': 'form-control', 
                'placeholder': 'Opis'}),
        }