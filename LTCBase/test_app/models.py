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
        db_table = 'Patient'  
    
class Medication(models.Model):
    medID = models.CharField(max_length=10, primary_key=True)
    medName = models.CharField(max_length=30, null=True, blank=True)
    drugClass = models.CharField(max_length=20, null=True, blank=True)
    adminDetails = models.CharField(max_length=50, null=True, blank=True)
    storageDetails = models.CharField(max_length=50, null=True, blank=True)

    def __str__(self):
        return self.medID
    
    class Meta:
        db_table = 'Medication'  


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
        db_table = 'MedsTreatCondition'  
        managed = False  # Prevent Django from managing the schema
        unique_together = ('medID', 'conditionName')  

    def __str__(self):
        return f"{self.medID} - {self.conditionName}"
    

class MedtoMedConflict(models.Model):
    medicationAID = models.ForeignKey(
        'Medication',
        on_delete=models.CASCADE,
        db_column='medicationAID',
        related_name='conflicts_as_a',
        default='1752033'
    )
    medicationBID = models.ForeignKey(
        'Medication',
        on_delete=models.CASCADE,
        db_column='medicationBID',
        related_name='conflicts_as_b',
        default='38909814'
    )
    conflict_check = models.BooleanField(db_column='ConflictCheck', default=True) 
    id3 = models.CharField(max_length=15, primary_key=True, db_column='ID3', default='2559459816')
    severity = models.CharField(
        max_length=6,
        choices=[('Low', 'Low'), ('Medium', 'Medium'), ('High', 'High')],
        db_column='severity',
        default='High'
    )

    class Meta:
        db_table = 'MedtoMedConflict'

    def __str__(self):
        return f"Conflict between {self.medicationAID} and {self.medicationBID} ({self.severity})"

class Food(models.Model):
    foodname = models.CharField(max_length=50, primary_key=True, db_column='foodname')
    foodgroup = models.CharField(max_length=20, null=True, blank=True, db_column='foodgroup')
    calories = models.IntegerField(null=True, blank=True, db_column='calories')
    protein = models.IntegerField(null=True, blank=True, db_column='protein')
    fats = models.IntegerField(null=True, blank=True, db_column='fats')

    class Meta:
        db_table = 'food'

    def __str__(self):
        return self.foodname

class Allergy(models.Model):
    allergyName = models.CharField(max_length=20, primary_key=True, db_column='allergyName')
    managementStrategy = models.CharField(max_length=100, null=True, blank=True, db_column='managementStrategy')
    seasonalconsiderations = models.BooleanField(default=False, db_column='seasonalconsiderations')

    class Meta:
        db_table = 'Allergy'

    def __str__(self):
        return self.allergyName

class MedAllergyConflict(models.Model):
    allergyName = models.ForeignKey(
        'Allergy',
        on_delete=models.CASCADE,
        db_column='allergyName',
        default='Peanuts'
    )
    medID = models.ForeignKey(
        'Medication',
        on_delete=models.CASCADE,
        db_column='medID',
        default='36074702'
    )
    conflictCheck = models.BooleanField(db_column='ConflictCheck', default=True) 
    id2 = models.CharField(max_length=15, primary_key=True, db_column='ID2', default='3745686802')

    class Meta:
        db_table = 'MedAllergyConflict'

    def __str__(self):
        return f"Conflict: {self.medID} with Allergy {self.allergyName}"


class FoodAllergyConflict(models.Model):
    foodname = models.ForeignKey(
        'Food',
        on_delete=models.CASCADE,
        db_column='foodname',
        default='Wonder'
    )
    allergyName = models.ForeignKey(
        Allergy,
        on_delete=models.CASCADE,
        db_column='allergyName',
        default='Peanuts'
    )
    conflictCheck = models.BooleanField(db_column='ConflictCheck', default=True) 
    id1 = models.CharField(max_length=15, primary_key=True, db_column='ID1', default='7008471644')

    class Meta:
        db_table = 'FoodAllergyConflict'

    def __str__(self):
        return f"Conflict: {self.foodname} with Allergy {self.allergyName}"

