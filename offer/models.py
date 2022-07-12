from django.db import models
from django.urls import reverse

class Service(models.Model):
    title = models.CharField(max_length=255)
    description = models.TextField()
    service_image = models.ImageField(null=True, blank=True, upload_to="images/offer/")
    is_active = models.BooleanField(default=True)
    
    def __str__(self):
        return self.title

    def get_absolute_url(self):
        return reverse('offer')