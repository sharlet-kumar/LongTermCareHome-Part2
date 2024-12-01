from django.contrib import admin
from .models import Patient, Medication, MedsTreatCondition


# Register your models here.
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
