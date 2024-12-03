from django.contrib import admin
from .models import (
    Patient,
    Medication,
    MedsTreatCondition,
    MedtoMedConflict,
    MedAllergyConflict,
    FoodAllergyConflict,
    Allergy,
    Food,
    PatientCondition,
    Staff,
    PatientAllergy,
    PatientMedication
)

# Register existing models
admin.site.register(Patient)

@admin.register(MedsTreatCondition)
class MedsTreatConditionAdmin(admin.ModelAdmin):
    list_display = ('medID', 'conditionName')  # Columns to display
    list_filter = ('conditionName',)  # Enable filtering by condition name
    search_fields = ('medID', 'conditionName')  # Add search by medication name and condition name

class MedsTreatConditionInline(admin.TabularInline):
    model = MedsTreatCondition
    extra = 1

@admin.register(Medication)
class MedicationAdmin(admin.ModelAdmin):
    inlines = [MedsTreatConditionInline]  # Add conditions inline
    list_display = ('medID', 'medName', 'drugClass')
    search_fields = ('medID', 'medName', 'drugClass')

# Register new models
@admin.register(MedtoMedConflict)
class MedtoMedConflictAdmin(admin.ModelAdmin):
    list_display = ('medicationAID', 'medicationBID', 'severity', 'conflict_check')  # Display relevant fields
    list_filter = ('severity',)  # Enable filtering by severity
    search_fields = ('medicationAID__medName', 'medicationBID__medName')  # Search by related medication names

@admin.register(MedAllergyConflict)
class MedAllergyConflictAdmin(admin.ModelAdmin):
    list_display = ('medID', 'allergyName', 'conflictCheck')  # Columns to display
    list_filter = ('conflictCheck',)  # Enable filtering by conflict check
    search_fields = ('medID__medName', 'allergyName__allergyName')  # Search by medication name and allergy name

@admin.register(FoodAllergyConflict)
class FoodAllergyConflictAdmin(admin.ModelAdmin):
    list_display = ('foodname', 'allergyName', 'conflictCheck')  # Columns to display
    list_filter = ('conflictCheck',)  # Enable filtering by conflict check
    search_fields = ('foodname__foodname', 'allergyName__allergyName')  # Search by food name and allergy name

@admin.register(Allergy)
class AllergyAdmin(admin.ModelAdmin):
    list_display = ('allergyName', 'managementStrategy', 'seasonalconsiderations')  # Display allergy fields
    list_filter = ('seasonalconsiderations',)  # Enable filtering by seasonal considerations
    search_fields = ('allergyName', 'managementStrategy')  # Add search functionality

@admin.register(Food)
class FoodAdmin(admin.ModelAdmin):
    list_display = ('foodname', 'foodgroup', 'calories', 'protein', 'fats')  # Display food fields
    list_filter = ('foodgroup',)  # Enable filtering by food group
    search_fields = ('foodname', 'foodgroup')  # Add search functionality

@admin.register(PatientCondition)
class PatientConditionAdmin(admin.ModelAdmin):
    list_display = ('patientID', 'medicalCondition', 'diagnosisDate', 'diagnoserID')  # Fields to display
    list_filter = ('diagnosisDate', 'medicalCondition')  # Filtering options
    search_fields = ('patientID__firstName', 'patientID__lastName', 'medicalCondition')  # Add search functionality

@admin.register(Staff)
class StaffAdmin(admin.ModelAdmin):
    list_display = ('staffID', 'firstName', 'lastName', 'position', 'department')
    search_fields = ('firstName', 'lastName', 'position', 'department')

@admin.register(PatientAllergy)
class PatientAllergyAdmin(admin.ModelAdmin):
    list_display = ('patientID', 'allergyName', 'severity', 'description') 
    search_fields = ('patientID__firstName', 'allergyName__allergyName')  
    list_filter = ('severity',)

@admin.register(PatientMedication)
class PatientMedicationAdmin(admin.ModelAdmin):
    list_display = ('patient', 'medication', 'dosage', 'admin_schedule', 'prescribing_doc')
    search_fields = ('patient__firstName', 'patient__lastName', 'medication__medName', 'prescribing_doc__firstName')



