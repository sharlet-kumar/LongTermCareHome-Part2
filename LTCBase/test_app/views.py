from django.shortcuts import render
from django.shortcuts import render, get_object_or_404, redirect
<<<<<<< HEAD
from .models import Patient, MedsTreatCondition, Medication
=======
from .models import Patient

from django.db import connection
>>>>>>> f1487cfb4344e9be544e574d14d919363ef32e27
from datetime import date

health_conditions = [
    'Hypertension', 'Diabetes', 'Asthma', 'Heart Disease', 'Alzheimers', 'Dementia', 'Depression',
    'Heart Failure', 'Arthritis', 'Obesity', 'High Cholesterol', 'Cancer', 'Hearing loss',
    'Cataracts', "Stroke", 'Delirium', "Osteoporosis", 'Gout', 'Allergies', 'Anemia', 'Epilepsy', 'Migraine'
]

def homepage(request):
    return render(request, 'test_app/homepage.html')


def add_patient(request):
    if request.method == 'POST':
        try:
            Patient.objects.create(
                patient_id=request.POST['patient_id'],
                first_name=request.POST['first_name'],
                last_name=request.POST['last_name'],
                date_of_birth=request.POST['date_of_birth'],
                sex=request.POST['sex'],
                height=request.POST.get('height', 0),  # Default to 0 if not provided
                weight=request.POST.get('weight', 0),  # Default to 0 if not provided
                dnr=request.POST.get('dnr', False),  # Default to False if not checked
                insurance_check=request.POST.get('insurance_check', False)  # Default to False
            )
            return redirect('homepage')  # Redirect to homepage after adding
        except MultiValueDictKeyError as e:
            # Handle missing POST data
            return render(request, 'add_patient.html', {'error': f"Missing field: {e}"})
    return render(request, 'test_app/add_patient.html')

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
    return render(request, 'test_app/update_patient.html', {'patient': patient})

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
<<<<<<< HEAD
    return render(request, 'test_app/search_patients_over_age.html', {'patients': patients, 'age': age})

def add_medication(request):
    if request.method == 'POST':
        Medication.objects.create(
            medID=request.POST['medID'],
            medName=request.POST['medName'],
            drugClass=request.POST['drugClass'],
            adminDetails=request.POST['adminDetails'],
            storageDetails=request.POST['storageDetails']
        )
        return redirect('/')  # Redirect to a desired page after submission
    return render(request, 'test_app/add_medication.html')

def add_condition(request):
    if request.method == 'POST':
        med_id = request.POST['medID']
        condition_name = request.POST['conditionName']
        medication = Medication.objects.get(medID=med_id)
        MedsTreatCondition.objects.create(medID=medication, conditionName=condition_name)
        return redirect('add_condition')  # Redirect to the same page or another page
    medications = Medication.objects.all()  # Get all medications for the dropdown
    return render(request, 'test_app/add_condition.html', {'medications': medications})

def filter_medications(request):
    selected_condition = request.GET.get('condition')  # Get the condition from the request
    medications = Medication.objects.all()

    # Filter medications by the selected condition
    if selected_condition:
        medications = medications.filter(conditions__conditionName=selected_condition).distinct()

    return render(request, 'filter_medications.html', {
        'medications': medications,
        'health_conditions': health_conditions,  # Pass the list of conditions to the template
        'selected_condition': selected_condition,
    })

def medications_or_conditions(request):
    selected_condition = request.GET.get('condition')
    medications = Medication.objects.all()
    conditions = MedsTreatCondition.objects.all()

    # Filter medications if a condition is selected
    if selected_condition:
        medications = medications.filter(conditions__conditionName=selected_condition).distinct()

    return render(request, 'test_app/combined_view.html', {
        'medications': medications,
        'conditions': conditions,
        'health_conditions': health_conditions,
        'selected_condition': selected_condition,
    })
=======
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



>>>>>>> f1487cfb4344e9be544e574d14d919363ef32e27
