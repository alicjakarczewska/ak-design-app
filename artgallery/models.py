from django.db import models
from django.contrib.auth.models import User
from django.urls import reverse
from datetime import datetime, date
from django.utils import timezone
from ckeditor.fields import RichTextField
from cloudinary.models import CloudinaryField

class Album(models.Model):
    name = models.CharField(max_length=255)
    
    def __str__(self):
        return self.name

    def get_absolute_url(self):
        return reverse('artgallery')

class Picture(models.Model):
    title = models.CharField(max_length=255)
    header_image = models.ImageField(null=True, blank=True, upload_to="images/")
    # image = CloudinaryField('image')
    author = models.ForeignKey('auth.User', on_delete=models.CASCADE)
    body = RichTextField(blank=True, null=True)
    picture_date =  models.DateField(auto_now_add=True)
    album = models.CharField(max_length=255, default='inne')
    likes = models.ManyToManyField(User, related_name ='artpieces', blank=True)

    def total_likes(self):
        return self.likes.count()

    def __str__(self):
        return self.title

    def get_absolute_url(self):
        return reverse('artgallery')


