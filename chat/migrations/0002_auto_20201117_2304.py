# Generated by Django 2.2.10 on 2020-11-17 22:04

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('chat', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='message',
            name='body',
            field=models.TextField(blank=True, max_length=1000, null=True),
        ),
    ]
