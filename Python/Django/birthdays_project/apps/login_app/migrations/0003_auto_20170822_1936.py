# -*- coding: utf-8 -*-
# Generated by Django 1.10 on 2017-08-22 19:36
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('login_app', '0002_auto_20170822_1836'),
    ]

    operations = [
        migrations.AlterField(
            model_name='user',
            name='birthday',
            field=models.DateTimeField(),
        ),
    ]
