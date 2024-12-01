from django.db import models

class Patient(models.Model):
    patient_id = models.CharField(max_length=10, primary_key=True)
    first_name = models.CharField(max_length=15)
    last_name = models.CharField(max_length=15)
    date_of_birth = models.DateField()
    sex = models.CharField(max_length=1, choices=[('M', 'Male'), ('F', 'Female')])
    height = models.SmallIntegerField()
    weight = models.SmallIntegerField()
    dnr = models.BooleanField()
    insurance_check = models.BooleanField()

    def __str__(self):
        return f"{self.first_name} {self.last_name}"
    
class Medication(models.Model):
    medID = models.CharField(max_length=10, primary_key=True)
    medName = models.CharField(max_length=30, null=True, blank=True)
    drugClass = models.CharField(max_length=20, null=True, blank=True)
    adminDetails = models.CharField(max_length=50, null=True, blank=True)
    storageDetails = models.CharField(max_length=50, null=True, blank=True)

    def __str__(self):
        return self.medID
    
class MedsTreatCondition(models.Model):
    medID = models.ForeignKey(
        'Medication',  # Reference the Medication model
        on_delete=models.CASCADE,  # Delete MedsTreatCondition records when the Medication is deleted
        related_name='conditions'  # Allows reverse querying, e.g., medication.conditions.all()
    )
    conditionName = models.CharField(max_length=30)  # A varchar field for the condition name

    class Meta:
        constraints = [
            models.UniqueConstraint(fields=['medID', 'conditionName'], name='unique_med_condition')  # Primary key equivalent
        ]

    def __str__(self):
        return f"{self.medID} - {self.conditionName}"
    
    
