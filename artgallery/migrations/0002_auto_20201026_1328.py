# Generated by Django 2.2.10 on 2020-10-26 12:28

from django.db import migrations, models
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        ('artgallery', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='picture',
            name='picture_date',
            field=models.DateField(default=django.utils.timezone.now),
        ),
    ]