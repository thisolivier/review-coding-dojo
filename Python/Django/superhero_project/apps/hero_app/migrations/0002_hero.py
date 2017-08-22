# -*- coding: utf-8 -*-
# Generated by Django 1.10 on 2017-08-21 21:43
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('hero_app', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Hero',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=200)),
                ('created_at', models.DateTimeField(auto_now_add=True)),
                ('modified_at', models.DateTimeField(auto_now=True)),
                ('powers', models.ManyToManyField(related_name='heros', to='hero_app.Power')),
            ],
        ),
    ]
