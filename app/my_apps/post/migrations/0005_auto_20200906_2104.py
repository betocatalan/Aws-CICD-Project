# Generated by Django 3.1 on 2020-09-06 21:04

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('post', '0004_auto_20200906_2104'),
    ]

    operations = [
        migrations.AlterField(
            model_name='post',
            name='email',
            field=models.EmailField(blank=True, max_length=254, null=True),
        ),
    ]