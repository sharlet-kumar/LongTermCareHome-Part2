from django.db import models

class Patient(models.Model):
    patientID = models.CharField(max_length=10, primary_key=True)
    firstName = models.CharField(max_length=15)
    lastName = models.CharField(max_length=15)
    dateOfBirth = models.DateField()
    sex = models.CharField(max_length=1, choices=[('M', 'Male'), ('F', 'Female')])
    height = models.SmallIntegerField()
    weight = models.SmallIntegerField()
    dnr = models.BooleanField()
    insuranceCheck = models.BooleanField()
    def __str__(self):
        return f"{self.firstName} {self.lastName}"
    
    class Meta:
        db_table = 'Patient'  # Exact table name in the external database
    
class Medication(models.Model):
    medID = models.CharField(max_length=10, primary_key=True)
    medName = models.CharField(max_length=30, null=True, blank=True)
    drugClass = models.CharField(max_length=20, null=True, blank=True)
    adminDetails = models.CharField(max_length=50, null=True, blank=True)
    storageDetails = models.CharField(max_length=50, null=True, blank=True)

    def __str__(self):
        return self.medID
    
    class Meta:
        db_table = 'Medication'  # Exact table name in the external database
    
from django.db import models

class MedsTreatCondition(models.Model):
    medID = models.ForeignKey(
        'Medication',
        on_delete=models.CASCADE,
        db_column='medID'
    )
    conditionName = models.CharField(
        max_length=30,
        db_column='conditionName'
    )

    class Meta:
        db_table = 'MedsTreatCondition'  # Map to the existing table
        managed = False  # Prevent Django from managing the schema
        unique_together = ('medID', 'conditionName')  # Composite key

    def __str__(self):
        return f"{self.medID} - {self.conditionName}"
