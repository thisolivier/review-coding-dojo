# -*- coding: utf-8 -*-
# Generated by Django 1.10 on 2017-08-14 09:14
from __future__ import unicode_literals

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('likes_courses', '0002_auto_20170814_0908'),
    ]

    operations = [
        migrations.RenameModel(
            old_name='Book',
            new_name='Book2',
        ),
        migrations.RenameModel(
            old_name='User',
            new_name='User2',
        ),
    ]
