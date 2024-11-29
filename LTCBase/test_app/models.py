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
