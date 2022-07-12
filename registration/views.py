from django.shortcuts import render, redirect
from django.views import generic
from django.urls import reverse_lazy
from .forms import RegisterForm, EditProfileForm
from django.contrib.auth.views import PasswordChangeView
from django.contrib.auth.forms import PasswordChangeForm
from artgallery.models import Picture
from artgallery.views import PictureDetailView
from django.views.generic import DetailView
from courses.models import Course, Lesson
from django.contrib.auth.models import User
from django.views.generic import DeleteView

# Create your views here.
def register(response):
    if response.method == "POST":
        form = RegisterForm(response.POST)
        if form.is_valid():
            form.save()            
            return redirect('login')
    else:
        form = RegisterForm()

    return render(response, "registration/register.html", {"form":form})

class UserEditView(generic.UpdateView):
    form_class = EditProfileForm
    template_name = 'registration/edit_profile.html'
    success_url = reverse_lazy('home')

    def get_object(self):
        return self.request.user

class PasswordsChangeView(PasswordChangeView):
    form_class = PasswordChangeForm
    success_url = reverse_lazy('password_success')

def password_success(request):
    return render(request, "registration/password_success.html", {})

def user_account(request):
    user = request.user
    user_done_lessons = user.is_done.all()
    user_undone_lessons = Lesson.objects.exclude(is_done=True)
    courses_menu_list = Course.objects.all()
    user_liked_pictures = user.artpieces.all()
    lesson_object_list = Lesson.objects.all()
    
    course_lessons = []
    for course in courses_menu_list:
        for lesson in lesson_object_list:
            if lesson.course  == course.name:
                course_lessons.append(Lesson.objects.filter(course=course.name))
    
    context = {
        'user_done_lessons': user_done_lessons,
        'user_liked_pictures': user_liked_pictures,
        'courses_menu_list': courses_menu_list,
        'user_undone_lessons':user_undone_lessons,
        'lesson_object_list': lesson_object_list,
        'course_lessons': course_lessons,
        'courses': courses_menu_list,
    }
    return render(request, "registration/user_account.html", context)

def UserListView(request):
    user = request.user
    user_list = User.objects.all()    
    context = {
        'user_list': user_list,
    }
    return render(request, "registration/user_list.html", context)

class DeleteUserView(DeleteView):
    model = User
    template_name = 'registration/delete_user.html'
    success_url = reverse_lazy('user_list')

def admin_panel(request):
    return render(request, "registration/admin_panel.html", {})


