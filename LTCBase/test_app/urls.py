from django.urls import path
from . import views

urlpatterns = [
    path('patients/add/', views.add_patient, name='add_patient'),
    path('patients/update/<str:patient_id>/', views.update_patient, name='update_patient'),
    path('patients/delete/<str:patient_id>/', views.delete_patient, name='delete_patient'),
]
