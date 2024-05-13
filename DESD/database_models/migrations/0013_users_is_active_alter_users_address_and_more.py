# Generated by Django 5.0.1 on 2024-04-04 14:25

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('database_models', '0012_loginattempts_alter_prescriptions_prescription_type'),
    ]

    operations = [
        migrations.AddField(
            model_name='users',
            name='is_active',
            field=models.BooleanField(default=1),
        ),
        migrations.AlterField(
            model_name='users',
            name='address',
            field=models.CharField(default='default', max_length=200, null=True),
        ),
        migrations.AlterField(
            model_name='users',
            name='date_of_birth',
            field=models.DateField(default=datetime.date.today, null=True),
        ),
        migrations.AlterField(
            model_name='users',
            name='email',
            field=models.CharField(default='default', max_length=200, null=True),
        ),
        migrations.AlterField(
            model_name='users',
            name='gender',
            field=models.CharField(choices=[('m', 'M'), ('f', 'F')], default='M', max_length=10, null=True),
        ),
        migrations.AlterField(
            model_name='users',
            name='phone_number',
            field=models.CharField(default='123456789', max_length=20, null=True),
        ),
        migrations.AlterField(
            model_name='users',
            name='postcode',
            field=models.CharField(default='default', max_length=15, null=True),
        ),
        migrations.AlterField(
            model_name='users',
            name='role',
            field=models.CharField(choices=[('doctor', 'Doctor'), ('nurse', 'Nurse'), ('patient', 'Patient'), ('admin', 'Admin'), ('deleted_user', 'Deleted_User')], default='default', max_length=50),
        ),
    ]
