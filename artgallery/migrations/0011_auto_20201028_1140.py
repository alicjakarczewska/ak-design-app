# Generated by Django 2.2.10 on 2020-10-28 10:40

from django.conf import settings
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('artgallery', '0010_picture_header_image'),
    ]

    operations = [
        migrations.AlterField(
            model_name='picture',
            name='likes',
            field=models.ManyToManyField(blank=True, related_name='artpieces', to=settings.AUTH_USER_MODEL),
        ),
    ]
