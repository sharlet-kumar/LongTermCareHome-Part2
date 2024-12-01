from django.shortcuts import render
from django.shortcuts import render, get_object_or_404, redirect
from .models import Patient, MedsTreatCondition, Medication
from datetime import date
from django.utils.datastructures import MultiValueDictKeyError


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
                patientID=request.POST['patientID'],
                firstName=request.POST['firstName'],
                lastName=request.POST['lastName'],
                dateOfBirth=request.POST['dateOfBirth'],
                sex=request.POST['sex'],
                height=request.POST.get('height', 0),  # Default to 0 if not provided
                weight=request.POST.get('weight', 0),  # Default to 0 if not provided
                dnr=(request.POST.get('dnr') == 'on'),
                insuranceCheck=(request.POST.get('insuranceCheck') == 'on')  # Default to False
            )
            return redirect('homepage')  # Redirect to homepage after adding
        except MultiValueDictKeyError as e:
            # Handle missing POST data
            return render(request, 'add_patient.html', {'error': f"Missing field: {e}"})
    return render(request, 'test_app/add_patient.html')

# Update a patient
def update_patient(request, patient_id):
    patient = get_object_or_404(Patient, patientID=patient_id)
    if request.method == 'POST':
        patient.firstName = request.POST['firstName']
        patient.lastName = request.POST['lastName']
        patient.dateOfBirth = request.POST['dateOfBirth']
        patient.sex = request.POST['sex']
        patient.height = request.POST['height']
        patient.weight = request.POST['weight']
        patient.dnr= (request.POST.get('dnr') == 'on')
        patient.insuranceCheck=(request.POST.get('insuranceCheck') == 'on')
        patient.save()
        return render(request, 'test_app/update_patient.html', {'patient': patient})
    return render(request, 'test_app/update_patient.html', {'patient': patient})

# Delete a patient
def delete_patient(request, patientID):
    patient = get_object_or_404(Patient, patientID=patientID)
    patient.delete()
    return redirect('test_app/patient_list')

def search_patients_over_age(request):
    patients = None  # Initialize patients as None to handle the first load without a query
    age = None       # Initialize age as None to check if the user has submitted a search
    if request.method == 'POST':
        age = int(request.POST['age'])  # Get the age input from the form
        today = date.today()
        cutoff_date = today.replace(year=today.year - age)
        patients = Patient.objects.filter(dateOfBirth__lte=cutoff_date)  # Query patients over the specified age
        
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
        medID = request.POST['medID']
        condition_name = request.POST['conditionName']
        medication = Medication.objects.get(medID=medID)
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

    return render(request, 'test_app/filter_medication.html', {
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
        'filter_medication': filter_medications,
    })
