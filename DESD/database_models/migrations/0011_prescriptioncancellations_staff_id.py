# Generated by Django 5.0.1 on 2024-03-12 00:55

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('database_models', '0010_remove_schedules_staff_schedules_role_and_more'),
    ]

    operations = [
        migrations.AddField(
            model_name='prescriptioncancellations',
            name='staff_id',
            field=models.IntegerField(default=1),
        ),
    ]
