# Generated by Django 5.0.1 on 2024-03-07 13:43

import django.db.models.deletion
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('database_models', '0004_days_durations_schedules_slots'),
    ]

    operations = [
        migrations.AddField(
            model_name='schedules',
            name='staff',
            field=models.ForeignKey(default=1, on_delete=django.db.models.deletion.CASCADE, to='database_models.staffs'),
            preserve_default=False,
        ),
    ]
