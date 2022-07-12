from django.urls import path
from . import views
from .views import OfferView, AddServiceView, UpdateServiceView, DeleteServiceView

urlpatterns = [
    path('offer/', OfferView.as_view(), name='offer'),
    path('add_service/', AddServiceView.as_view(), name='add_service'),
    path('service/edit/<int:pk>', UpdateServiceView.as_view(), name='update_service'),
    path('service/<int:pk>/remove', DeleteServiceView.as_view(), name='delete_service'),
    path('contact/', views.contact, name='contact'),
]