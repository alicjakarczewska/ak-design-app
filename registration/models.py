from django.db import models
from django.contrib.auth.models import User

class Profile(models.Model):
    user = models.OneToOneField(User, null=True, on_delete=models.CASCADE)
    bio = models.TextField()
    profile_pic = models.ImageField(null=True, blank=True, upload_to="images/profile/")
    facebook_url = models.CharField(null=True, blank=True, max_length=255)
    instagram_url = models.CharField(null=True, blank=True, max_length=255)
    youtube_url = models.CharField(null=True, blank=True, max_length=255)

    def __str__(self):
        return str(self.user)
