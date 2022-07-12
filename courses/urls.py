from django.urls import path
from .views import CoursesView, CourseView, CourseListView, LessonDetailView, AddLessonView, AddCourseView, UpdateLessonView, DeleteLessonView, LikeView, UpdateCourseView, DeleteCourseView
from . import views

urlpatterns = [
    path('courses/', CoursesView.as_view(), name='courses'),
    path('lesson/<int:pk>', LessonDetailView.as_view(), name='lesson_detail'),
    path('add_lesson/', AddLessonView.as_view(), name='add_lesson'),
    path('lesson/edit/<int:pk>', UpdateLessonView.as_view(), name='update_lesson'),
    path('lesson/<int:pk>/remove', DeleteLessonView.as_view(), name='delete_lesson'),
    path('add_course/', AddCourseView.as_view(), name='add_course'),
    path('course/edit/<int:pk>', UpdateCourseView.as_view(), name='update_course'),
    path('course/<int:pk>/remove', DeleteCourseView.as_view(), name='delete_course'),
    path('course/<str:crs>/', CourseView, name='course'),
    path('course-list/', CourseListView, name='course_list'),
    path('done_lesson/<int:pk>', LikeView, name='done_lesson'),
    path('done_lesson_list/', views.done_lessons_list, name='done_lessons_list'),
]
