from django.shortcuts import render
from django.shortcuts import render, get_object_or_404, redirect
from .models import Patient, MedsTreatCondition, Medication
from datetime import date
from django.utils.datastructures import MultiValueDictKeyError
from django.http import HttpResponseRedirect


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
def update_patient(request):
    patient = None
    message = None  # Variable to store both error and success messages

    # Handle GET request
    if request.method == 'GET':
        patient_id = request.GET.get('id')  # Safely get the patient ID from GET parameters
        if patient_id:
            try:
                patient = get_object_or_404(Patient, patientID=patient_id)
            except:
                message = f"No patient found with ID {patient_id}."
        return render(request, 'test_app/update_patient.html', {'patient': patient, 'message': message})

    # Handle POST request
    if request.method == 'POST':
        patient_id = request.POST.get('id')  # Safely get the patient ID from POST data
        if not patient_id:
            return render(request, 'test_app/update_patient.html', {'message': 'Patient ID is missing'})

        # Try to fetch and update the patient record
        try:
            patient = get_object_or_404(Patient, patientID=patient_id)
        except:
            message = f"No patient found with ID {patient_id}."
            return render(request, 'test_app/update_patient.html', {'message': message})

        # Update patient details
        patient.firstName = request.POST.get('firstName', patient.firstName)
        patient.lastName = request.POST.get('lastName', patient.lastName)
        patient.dateOfBirth = request.POST.get('dateOfBirth', patient.dateOfBirth)
        patient.sex = request.POST.get('sex', patient.sex)
        patient.height = request.POST.get('height', patient.height)
        patient.weight = request.POST.get('weight', patient.weight)
        patient.dnr = request.POST.get('dnr') == 'on'
        patient.insuranceCheck = request.POST.get('insuranceCheck') == 'on'
        patient.save()

        # Set success message
        message = f"Patient with ID {patient_id} successfully updated."
        return render(request, 'test_app/update_patient.html', {'patient': patient, 'message': message})

    # Render default form if no request data
    return render(request, 'test_app/update_patient.html')


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

"""def add_condition(request):
    if request.method == 'POST':
        medID = request.POST['medID']
        condition_name = request.POST['conditionName']
        medication = Medication.objects.get(medID=medID)
        MedsTreatCondition.objects.create(medID=medication, conditionName=condition_name)
        return redirect('add_condition')  # Redirect to the same page or another page
    medications = Medication.objects.all()  # Get all medications for the dropdown
    return render(request, 'test_app/add_condition.html', {'medications': medications})"""

def filter_medications(request):
    selected_condition = request.GET.get('conditionName')  # Get the condition from the request
    medications = Medication.objects.all()  # Initialize all medications
    medstreatcondition = MedsTreatCondition.objects.all()  # Initialize all conditions

    # Filter medications by the selected condition
    if selected_condition:
        # Get all medIDs matching the selected condition
        medIDs = medstreatcondition.filter(conditionName=selected_condition).values_list('medID', flat=True)
        # Use the medIDs to filter medications
        medications = medications.filter(medID__in=medIDs).distinct()

    return render(request, 'test_app/filter_medication.html', {
        'medications': medications,
        'selected_condition': selected_condition,
        'health_conditions': health_conditions
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

#search patients
def search_patients(request):
    # Initialize empty variables for patients and search term
    patients = None
    search_attribute = None
    search_value = None

    if request.method == 'POST':
        search_attribute = request.POST.get('search_attribute', '')  # Get the attribute selected by the user
        search_value = request.POST.get('search_value', '')  # Get the value entered by the user
        
        # Perform search based on the selected attribute and value
        if search_attribute == 'weight':
            patients = Patient.objects.filter(weight=search_value)
        elif search_attribute == 'height':
            patients = Patient.objects.filter(height=search_value)
        elif search_attribute == 'firstName':
            patients = Patient.objects.filter(firstName__icontains=search_value)
        elif search_attribute == 'lastName':
            patients = Patient.objects.filter(lastName__icontains=search_value)
        elif search_attribute == 'dateOfBirth':
            # Handle date of birth search, expecting YYYY-MM-DD format
            try:
                dob = date.fromisoformat(search_value)
                patients = Patient.objects.filter(dateOfBirth=dob)
            except ValueError:
                patients = []  # If date format is invalid, return empty result
        elif search_attribute == 'sex':
            patients = Patient.objects.filter(sex__icontains=search_value)
        elif search_attribute == 'dnr':
            patients = Patient.objects.filter(dnr=(search_value.lower() == 'on'))  # True/False
        elif search_attribute == 'insuranceCheck':
            patients = Patient.objects.filter(insuranceCheck=(search_value.lower() == 'on'))  # True/False

    return render(request, 'test_app/search_patients.html', {
        'patients': patients,
        'search_attribute': search_attribute,
        'search_value': search_value,
    })

