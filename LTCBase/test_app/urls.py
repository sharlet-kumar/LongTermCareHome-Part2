from django.contrib import admin  
from django.urls import path
from test_app import views

urlpatterns = [
    path('', views.homepage, name='homepage'),
    path('patients/add/', views.add_patient, name='add_patient'),
    path('patients/update/<str:patient_id>/', views.update_patient, name='update_patient'),
    path('patients/delete/<str:patient_id>/', views.delete_patient, name='delete_patient'),
    path('patients/search_over_age/', views.search_patients_over_age, name='search_patients_over_age'),
    path('', views.add_medication, name='add_medication'),  # Root URL displays the Add Medication page
    path('add-medication/', views.add_medication, name='add_medication'),
    path('add-condition/', views.add_condition, name='add_condition'),
    path('filter-medications/', views.filter_medications, name='filter_medications'),
    path('medications-conditions/', views.medications_or_conditions, name='medications_or_conditions')

]
