from django import forms
from .models import Course, Lesson

choices = [] # Course.objects.all().values_list('name', 'name') # []
choice_list = []

for item in choices:
    choice_list.append(item)

class LessonForm(forms.ModelForm):

    class Meta:
        model = Lesson
        fields = ('title', 'header_image', 'author', 'body', 'course', 'video', 'lesson_number')

        widgets = {
            'title': forms.TextInput(attrs={
                'class': 'form-control', 
                'placeholder': 'Tytuł'}),
            'author': forms.TextInput(attrs={
                'class': 'form-control',
                'value': '',
                'id': 'elder',
                'type':'hidden'}),
            'course': forms.Select(
                choices=choice_list
                # attrs={'class':'form-contol'
                ),
            'body': forms.Textarea(attrs={
                'class': 'form-control', 
                'placeholder': 'Opis'}),
            'lesson_number': forms.TextInput(attrs={
                'class': 'form-control', 
                'placeholder': 'Numer lekcji'}),
        }

class EditLessonForm(forms.ModelForm):
    class Meta:
        model = Lesson
        fields = ('title', 'body')

        widgets = {
            'title': forms.TextInput(attrs={
                'class': 'form-control', 
                'placeholder': 'Tytuł'}),
            'body': forms.Textarea(attrs={
                'class': 'form-control', 
                'placeholder': 'Opis'}),
            'course': forms.Select(
                choices=choice_list
                # attrs={'class':'form-contol'
                ),
            'lesson_number': forms.TextInput(attrs={
                'class': 'form-control', 
                'placeholder': 'Numer lekcji'}),
        }