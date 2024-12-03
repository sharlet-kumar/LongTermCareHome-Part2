from django.shortcuts import render
from django.shortcuts import render, get_object_or_404, redirect
from .models import Patient, MedsTreatCondition, Medication, MedAllergyConflict, MedtoMedConflict, FoodAllergyConflict, Allergy, Food, PatientCondition,PatientAllergy, MedicationAssignment, Staff
from datetime import date
from django.utils.datastructures import MultiValueDictKeyError
from django.db.models import Q

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
    patients = Patient.objects.all()  # Retrieve all patients for the dropdown
    patient = None
    message = None

    # Handle GET request
    if request.method == 'GET':
        patient_id = request.GET.get('id')  # Get the patient ID from the dropdown
        if patient_id:
            try:
                patient = get_object_or_404(Patient, patientID=patient_id)
            except:
                message = f"No patient found with ID {patient_id}."
        return render(request, 'test_app/update_patient.html', {
            'patients': patients,
            'patient': patient,
            'message': message,
        })

    # Handle POST request
    if request.method == 'POST':
        patient_id = request.POST.get('id')  # Get the patient ID
        if not patient_id:
            return render(request, 'test_app/update_patient.html', {
                'patients': patients,
                'message': 'Patient ID is missing'
            })

        try:
            patient = get_object_or_404(Patient, patientID=patient_id)
        except:
            message = f"No patient found with ID {patient_id}."
            return render(request, 'test_app/update_patient.html', {
                'patients': patients,
                'message': message
            })

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

        message = f"Patient with ID {patient_id} successfully updated."
        return render(request, 'test_app/update_patient.html', {
            'patients': patients,
            'patient': patient,
            'message': message,
        })

    return render(request, 'test_app/update_patient.html', {'patients': patients})



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
    search_type = request.GET.get('searchType')
    query = request.GET.get(search_type) if search_type else None
    patients = None

    if query:
        if search_type in ['firstName', 'lastName']:
            patients = Patient.objects.filter(**{search_type: query})
        elif search_type in ['height', 'weight']:
            patients = Patient.objects.filter(**{search_type: float(query)})
        elif search_type == 'sex':
            patients = Patient.objects.filter(sex=query)
        elif search_type == 'dateOfBirth':
            patients = Patient.objects.filter(dateOfBirth__year=query.split('-')[0])
        elif search_type == 'dnr':
            patients = Patient.objects.filter(dnr=True)
        elif search_type == 'insuranceCheck':
            patients = Patient.objects.filter(insuranceCheck=True)

    return render(request, 'test_app/search_patients.html', {
        'patients': patients,
        'search_type': search_type,
        'query': query,
    })


def check_conflicts(request):
    conflict_type = request.GET.get('conflictType')
    name = request.GET.get('name')

    # Separate conflict results
    med_to_med_conflicts = []
    med_to_allergy_conflicts = []
    allergy_to_food_conflicts = []

    # Dropdown data
    medications = Medication.objects.all()
    allergies = Allergy.objects.all()
    foods = Food.objects.all()

    if conflict_type and name:
        if conflict_type == 'medication':
            # Med-to-Med Conflicts
            med_to_med_conflicts = MedtoMedConflict.objects.filter(
                medicationAID=name
            ) | MedtoMedConflict.objects.filter(
                medicationBID=name
            )
            # Med-to-Allergy Conflicts
            med_to_allergy_conflicts = MedAllergyConflict.objects.filter(medID=name)

        elif conflict_type == 'allergy':
            # Med-to-Allergy Conflicts
            med_to_allergy_conflicts = MedAllergyConflict.objects.filter(allergyName=name)
            # Allergy-to-Food Conflicts
            allergy_to_food_conflicts = FoodAllergyConflict.objects.filter(allergyName=name)

        elif conflict_type == 'food':
            # Allergy-to-Food Conflicts
            allergy_to_food_conflicts = FoodAllergyConflict.objects.filter(foodname=name)

    return render(request, 'test_app/conflict_checker.html', {
        'conflict_type': conflict_type,
        'name': name,
        'medications': medications,
        'allergies': allergies,
        'foods': foods,
        'med_to_med_conflicts': med_to_med_conflicts,
        'med_to_allergy_conflicts': med_to_allergy_conflicts,
        'allergy_to_food_conflicts': allergy_to_food_conflicts,
    })

from django.shortcuts import render, get_object_or_404
from .models import Patient, Medication, MedsTreatCondition, MedtoMedConflict, MedAllergyConflict

from django.shortcuts import render, get_object_or_404
from .models import Patient, Medication, MedsTreatCondition, MedtoMedConflict, MedAllergyConflict, PatientCondition, PatientAllergy

def assign_medication(request):
    patients = Patient.objects.all()
    doctors = Staff.objects.filter(position__icontains='doctor')
    conditions = []
    medications = []
    selected_patient = None
    selected_condition = None
    message = None
    error = None

    if request.method == 'POST':
        if 'patient' in request.POST:
            patient_id = request.POST.get('patient')
            selected_patient = get_object_or_404(Patient, patientID=patient_id)
            conditions = PatientCondition.objects.filter(patientID=patient_id)

        if 'condition' in request.POST:
            condition_name = request.POST.get('condition')
            selected_condition = condition_name
            patient_allergies = PatientAllergy.objects.filter(patientID=selected_patient.patientID).values_list('allergyName', flat=True)
            patient_medications = Medication.objects.filter(patients=selected_patient)

            medications = Medication.objects.filter(
                Q(medstreatcondition__conditionName=condition_name)
                & ~Q(medallergyconflict__allergyName__in=patient_allergies)
                & ~Q(conflicts_as_a__medicationBID__in=patient_medications)
                & ~Q(conflicts_as_b__medicationAID__in=patient_medications)
            ).distinct()

        if 'medication' in request.POST:
            try:
                medication_id = request.POST.get('medication')
                dosage = request.POST.get('dosage')
                admin_schedule = request.POST.get('adminSchedule')
                prescribing_doc_id = request.POST.get('prescribingDocID')
                
                medication = get_object_or_404(Medication, medID=medication_id)
                prescribing_doc = get_object_or_404(Staff, staffID=prescribing_doc_id)
                condition = get_object_or_404(PatientCondition, medicalCondition=selected_condition, patientID=selected_patient.patientID)

                # Save the assignment
                assignment = MedicationAssignment.objects.create(
                    patient=selected_patient,
                    medication=medication,
                    condition=condition,
                    dosage=dosage,
                    adminSchedule=admin_schedule,
                    prescribingDoctor=prescribing_doc
                )
                assignment.save()
                message = f"Medication {medication.medName} successfully assigned to {selected_patient.firstName} {selected_patient.lastName}."
            except Exception as e:
                error = f"Error: {str(e)}"

    return render(request, 'test_app/assign_medication.html', {
        'patients': patients,
        'doctors': doctors,
        'conditions': conditions,
        'medications': medications,
        'selected_patient': selected_patient,
        'selected_condition': selected_condition,
        'message': message,
        'error': error,
    })
