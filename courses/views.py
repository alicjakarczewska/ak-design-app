from django.shortcuts import render, get_object_or_404
from django.views.generic import ListView, DetailView, CreateView, UpdateView, DeleteView
from .models import Lesson, Course
from .forms import LessonForm, EditLessonForm
from django.urls import reverse_lazy, reverse
from django.http import HttpResponseRedirect
from . import views

class CoursesView(ListView):
    model = Lesson
    template_name = 'courses.html'
    ordering = ['title']

    def get_context_data(self, *args, **kwargs):
        courses_menu = Course.objects.all()
        context = super(CoursesView, self).get_context_data(*args, **kwargs)
        context["courses_menu"] = courses_menu
        return context

def CourseView(request, crs):
    course_lessons = Lesson.objects.filter(course=crs.replace('-', ' '))
    course = Course.objects.filter(name=crs.replace('-', ' '))
    return render(request, 'course.html', {'crs':crs.title().replace('-', ' ') , 'course_lessons':course_lessons, 'course':course[0]})

def CourseListView(request):
    courses_menu_list = Course.objects.all()
    return render(request, 'course_list.html', {'courses_menu_list':courses_menu_list})

class LessonDetailView(DetailView):
    model = Lesson   
    template_name = 'lesson_details.html'
    
    def get_context_data(self, *args, **kwargs):
        context = super(LessonDetailView, self).get_context_data(*args, **kwargs)
        
        stuff = get_object_or_404(Lesson, id=self.kwargs['pk'])
        
        liked = False
        if stuff.is_done.filter(id=self.request.user.id).exists():
            liked = True
        
        context["liked"] = liked
        return context

def LikeView(request, pk):
    lesson = get_object_or_404(Lesson, id=request.POST.get('lesson_id'))
    liked = False
    if lesson.is_done.filter(id=request.user.id).exists():
        lesson.is_done.remove(request.user)
        liked = False
    else:
         lesson.is_done.add(request.user)
         liked = True
    
    return HttpResponseRedirect(reverse('lesson_detail', args=[str(pk)]))

def done_lessons_list(request):
    user = request.user
    done_lessons = user.is_done.all()
    context = {
        'done_lessons': done_lessons,
    }
    return render(request, 'done_lessons_list.html', context)



class AddLessonView(CreateView):
    model = Lesson
    template_name = 'add_lesson.html'
    form_class = LessonForm

class UpdateLessonView(UpdateView):
    model = Lesson
    form_class = EditLessonForm
    template_name = 'update_lesson.html'

class DeleteLessonView(DeleteView):
    model = Lesson
    template_name = 'delete_lesson.html'
    success_url = reverse_lazy('courses')

class AddCourseView(CreateView):
    model = Course
    template_name = 'add_course.html'
    fields='__all__'

class UpdateCourseView(UpdateView):
    model = Course
    template_name = 'update_course.html'
    fields='__all__'

class DeleteCourseView(DeleteView):
    model = Course
    template_name = 'delete_course.html'
    success_url = reverse_lazy('courses')


