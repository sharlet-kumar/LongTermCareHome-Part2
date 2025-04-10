# Generated by Django 5.1.3 on 2024-12-03 02:59

import django.db.models.deletion
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('test_app', '0016_medicationassignment'),
    ]

    operations = [
        migrations.CreateModel(
            name='PatientStaffCare',
            fields=[
                ('staffRoleInCare', models.CharField(db_column='staffRoleInCare', max_length=30)),
                ('careStartDate', models.DateField(db_column='careStartDate')),
                ('careEndDate', models.DateField(blank=True, db_column='careEndDate', null=True)),
                ('id7', models.CharField(db_column='ID7', max_length=15, primary_key=True, serialize=False)),
                ('patientID', models.ForeignKey(db_column='patientID', on_delete=django.db.models.deletion.CASCADE, related_name='staff_care', to='test_app.patient')),
                ('staffID', models.ForeignKey(db_column='staffID', on_delete=django.db.models.deletion.CASCADE, related_name='patient_care', to='test_app.staff')),
            ],
            options={
                'db_table': 'PatientStaffCare',
                'unique_together': {('staffID', 'patientID')},
            },
        ),
    ]
