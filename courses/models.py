from django.db import models
from django.contrib.auth.models import User
from django.urls import reverse
from datetime import datetime, date
from django.utils import timezone
from ckeditor.fields import RichTextField

class Course(models.Model):
    name = models.CharField(max_length=255)
    description = models.TextField()
    course_image = models.ImageField(null=True, blank=True, upload_to="images/courses/")
    
    def __str__(self):
        return self.name

    def get_absolute_url(self):
        return reverse('courses')

class Lesson(models.Model):
    title = models.CharField(max_length=255)
    header_image = models.ImageField(null=True, blank=True, upload_to="images/lessons/")
    author = models.ForeignKey('auth.User', on_delete=models.CASCADE)
    body = RichTextField(blank=True, null=True)
    video = models.FileField(upload_to="videos", null=True, verbose_name="")
    lesson_date =  models.DateField(auto_now_add=True)
    course = models.CharField(max_length=255, null=True, blank=True)
    lesson_number = models.IntegerField()
    is_done = models.ManyToManyField(User, related_name='is_done', blank=True)

    def __str__(self):
        return self.title

    def get_absolute_url(self):
        return reverse('courses')



