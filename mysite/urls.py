from django.urls import path, include
from django.contrib import admin
from django.contrib.auth import views
from django.conf.urls import url

from django.conf import settings
from django.conf.urls.static import static

urlpatterns = [
    path('admin/', admin.site.urls),   
    path('accounts/logout/', views.LogoutView.as_view(next_page='/'), name='logout'),  
    path('', include('registration.urls')),
    path('', include('blog.urls')),
    path('', include('artgallery.urls')),
    path('', include('courses.urls')),
    path('', include('offer.urls')),
    path('', include('chat.urls')),
    path('', include('django.contrib.auth.urls')),

] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)

urlpatterns += static(settings.STATIC_URL, document_root = settings.STATIC_ROOT)
urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
