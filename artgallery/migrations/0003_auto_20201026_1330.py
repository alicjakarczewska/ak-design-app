# Generated by Django 2.2.10 on 2020-10-26 12:30

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('artgallery', '0002_auto_20201026_1328'),
    ]

    operations = [
        migrations.AlterField(
            model_name='picture',
            name='picture_date',
            field=models.DateField(auto_now_add=True),
        ),
    ]