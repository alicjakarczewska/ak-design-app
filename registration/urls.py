from django.urls import path
from .views import UserEditView, PasswordsChangeView, UserListView, DeleteUserView
from django.contrib.auth import views as auth_views
from . import views


urlpatterns = [
    path('register/', views.register, name='register'),
    path('edit_profile/', UserEditView.as_view(), name = 'edit_profile'),
    path('password/', PasswordsChangeView.as_view(template_name='registration/change-password.html')),
    path('password_success', views.password_success, name='password_success'),
    path('your_account/', views.user_account, name='user_account'),
    path('admin_panel/', views.admin_panel, name='admin_panel'),
    path('user_list/', views.UserListView, name='user_list'),
    path('user/<int:pk>/remove', DeleteUserView.as_view(), name='delete_user'),
]
