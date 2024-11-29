from django.shortcuts import render
from django import forms

# Create your views here.


from django.shortcuts import render, get_object_or_404, redirect
from .models import Patient
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