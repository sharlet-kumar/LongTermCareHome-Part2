# Generated by Django 5.1.3 on 2024-12-02 03:32

import django.db.models.deletion
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('test_app', '0008_alter_medtomedconflict_table'),
    ]

    operations = [
        migrations.CreateModel(
            name='Allergy',
            fields=[
                ('allergyName', models.CharField(db_column='allergyName', max_length=20, primary_key=True, serialize=False)),
                ('managementStrategy', models.CharField(blank=True, db_column='managementStrategy', max_length=100, null=True)),
                ('seasonalconsiderations', models.BooleanField(db_column='seasonalconsiderations', default=False)),
            ],
            options={
                'db_table': 'Allergy',
            },
        ),
        migrations.CreateModel(
            name='Food',
            fields=[
                ('foodname', models.CharField(db_column='foodname', max_length=50, primary_key=True, serialize=False)),
                ('foodgroup', models.CharField(blank=True, db_column='foodgroup', max_length=20, null=True)),
                ('calories', models.IntegerField(blank=True, db_column='calories', null=True)),
                ('protein', models.IntegerField(blank=True, db_column='protein', null=True)),
                ('fats', models.IntegerField(blank=True, db_column='fats', null=True)),
            ],
            options={
                'db_table': 'food',
            },
        ),
        migrations.AlterUniqueTogether(
            name='foodallergyconflict',
            unique_together=set(),
        ),
        migrations.AlterUniqueTogether(
            name='medallergyconflict',
            unique_together=set(),
        ),
        migrations.AlterUniqueTogether(
            name='medtomedconflict',
            unique_together=set(),
        ),
        migrations.AddField(
            model_name='foodallergyconflict',
            name='conflictCheck',
            field=models.BooleanField(db_column='ConflictCheck', default=True),
        ),
        migrations.AddField(
            model_name='foodallergyconflict',
            name='id1',
            field=models.CharField(db_column='ID1', default='7008471644', max_length=15, primary_key=True, serialize=False),
        ),
        migrations.AddField(
            model_name='medallergyconflict',
            name='conflictCheck',
            field=models.BooleanField(db_column='ConflictCheck', default=True),
        ),
        migrations.AddField(
            model_name='medallergyconflict',
            name='id2',
            field=models.CharField(db_column='ID2', default='3745686802', max_length=15, primary_key=True, serialize=False),
        ),
        migrations.AddField(
            model_name='medtomedconflict',
            name='conflictCheck',
            field=models.BooleanField(db_column='ConflictCheck', default=True),
        ),
        migrations.AddField(
            model_name='medtomedconflict',
            name='id3',
            field=models.CharField(db_column='ID3', default='2559459816', max_length=15, primary_key=True, serialize=False),
        ),
        migrations.AddField(
            model_name='medtomedconflict',
            name='medicationAID',
            field=models.ForeignKey(db_column='medicationAID', default='1752033', on_delete=django.db.models.deletion.CASCADE, related_name='conflicts_as_a', to='test_app.medication'),
        ),
        migrations.AddField(
            model_name='medtomedconflict',
            name='medicationBID',
            field=models.ForeignKey(db_column='medicationBID', default='38909814', on_delete=django.db.models.deletion.CASCADE, related_name='conflicts_as_b', to='test_app.medication'),
        ),
        migrations.AddField(
            model_name='medtomedconflict',
            name='severity',
            field=models.CharField(choices=[('Low', 'Low'), ('Medium', 'Medium'), ('High', 'High')], db_column='severity', default='High', max_length=6),
        ),
        migrations.AlterField(
            model_name='medallergyconflict',
            name='medID',
            field=models.ForeignKey(db_column='medID', default='36074702', on_delete=django.db.models.deletion.CASCADE, to='test_app.medication'),
        ),
        migrations.AddField(
            model_name='foodallergyconflict',
            name='allergyName',
            field=models.ForeignKey(db_column='allergyName', default='Peanuts', on_delete=django.db.models.deletion.CASCADE, to='test_app.allergy'),
        ),
        migrations.AddField(
            model_name='medallergyconflict',
            name='allergyName',
            field=models.ForeignKey(db_column='allergyName', default='Peanuts', on_delete=django.db.models.deletion.CASCADE, to='test_app.allergy'),
        ),
        migrations.AddField(
            model_name='foodallergyconflict',
            name='foodname',
            field=models.ForeignKey(db_column='foodname', default='Wonder', on_delete=django.db.models.deletion.CASCADE, to='test_app.food'),
        ),
        migrations.RemoveField(
            model_name='foodallergyconflict',
            name='allergy',
        ),
        migrations.RemoveField(
            model_name='foodallergyconflict',
            name='conflictDetails',
        ),
        migrations.RemoveField(
            model_name='foodallergyconflict',
            name='foodItem',
        ),
        migrations.RemoveField(
            model_name='foodallergyconflict',
            name='id',
        ),
        migrations.RemoveField(
            model_name='medallergyconflict',
            name='allergy',
        ),
        migrations.RemoveField(
            model_name='medallergyconflict',
            name='conflictDetails',
        ),
        migrations.RemoveField(
            model_name='medallergyconflict',
            name='id',
        ),
        migrations.RemoveField(
            model_name='medtomedconflict',
            name='conflictDetails',
        ),
        migrations.RemoveField(
            model_name='medtomedconflict',
            name='id',
        ),
        migrations.RemoveField(
            model_name='medtomedconflict',
            name='medID1',
        ),
        migrations.RemoveField(
            model_name='medtomedconflict',
            name='medID2',
        ),
    ]
