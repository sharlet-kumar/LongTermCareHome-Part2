from django.shortcuts import render
from django import forms

# Create your views here.


from django.shortcuts import render, get_object_or_404, redirect
from .models import Patient

from django.db import connection
from datetime import date


# Add a new patient
def add_patient(request):
    if request.method == 'POST':
        Patient.objects.create(
            patient_id=request.POST['patient_id'],
            first_name=request.POST['first_name'],
            last_name=request.POST['last_name'],
            date_of_birth=request.POST['date_of_birth'],
            sex=request.POST['sex'],
            height=request.POST['height'],
            weight=request.POST['weight'],
            dnr=request.POST.get('dnr', False),
            insurance_check=request.POST.get('insurance_check', False)
        )
        return redirect('patient_list')
    return render(request, 'add_patient.html')

# Update a patient
def update_patient(request, patient_id):
    patient = get_object_or_404(Patient, patient_id=patient_id)
    if request.method == 'POST':
        patient.first_name = request.POST['first_name']
        patient.last_name = request.POST['last_name']
        patient.date_of_birth = request.POST['date_of_birth']
        patient.sex = request.POST['sex']
        patient.height = request.POST['height']
        patient.weight = request.POST['weight']
        patient.dnr = request.POST.get('dnr', False)
        patient.insurance_check = request.POST.get('insurance_check', False)
        patient.save()
        return redirect('patient_list')
    return render(request, 'update_patient.html', {'patient': patient})

# Delete a patient
def delete_patient(request, patient_id):
    patient = get_object_or_404(Patient, patient_id=patient_id)
    patient.delete()
    return redirect('patient_list')

def search_patients_over_age(request):
    patients = None  # Initialize patients as None to handle the first load without a query
    age = None       # Initialize age as None to check if the user has submitted a search
    if request.method == 'POST':
        age = int(request.POST['age'])  # Get the age input from the form
        today = date.today()
        cutoff_date = today.replace(year=today.year - age)
        patients = Patient.objects.filter(date_of_birth__lte=cutoff_date)  # Query patients over the specified age
    return render(request, 'search_patients_over_age.html', {'patients': patients, 'age': age})

#Search a patient
class PatientSearchForm(forms.Form):
    search_term = forms.CharField(max_length=100, required=False, label='Search Patients')

from django.shortcuts import render
from .models import Patient
from .forms import PatientSearchForm
from django.db import connection

def search_patients(request):
    form = PatientSearchForm(request.GET or None)
    results = []
    if form.is_valid() and form.cleaned_data.get('search_term'):
        search_term = form.cleaned_data['search_term']

        # Using raw SQL (ensure it is safe from SQL injection):
        query = """
            SELECT * FROM test_app_patient
            WHERE PatientID LIKE %s OR firstName LIKE %s OR lastName LIKE %s
            OR DateOfBirth LIKE %s OR Sex LIKE %s OR Height LIKE %s OR Weight LIKE %s
            OR AddressID LIKE %s OR DNR LIKE %s OR InsuranceCheck LIKE %s
        """
        search_pattern = f"%{search_term}%"
        with connection.cursor() as cursor:
            cursor.execute(query, [search_pattern] * 10)
            results = cursor.fetchall()

    context = {
        'form': form,
        'results': results,
    }
    return render(request, 'search_patients.html', context)

from django.urls import path
from . import views

urlpatterns = [
    path('search/', views.search_patients, name='search_patients'),
]



