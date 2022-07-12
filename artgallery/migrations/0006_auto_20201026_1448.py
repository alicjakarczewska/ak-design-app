# Generated by Django 2.2.10 on 2020-10-26 13:48

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('artgallery', '0005_picture_picture_date'),
    ]

    operations = [
        migrations.CreateModel(
            name='Album',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=255)),
            ],
        ),
        migrations.AddField(
            model_name='picture',
            name='album',
            field=models.CharField(default='inne', max_length=255),
        ),
    ]
