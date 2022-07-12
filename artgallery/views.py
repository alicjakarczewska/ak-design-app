from django.shortcuts import render, get_object_or_404
from django.views.generic import ListView, DetailView, CreateView, UpdateView, DeleteView
from .models import Picture, Album
from .forms import PictureForm, EditPictureForm
from django.urls import reverse_lazy, reverse
from django.http import HttpResponseRedirect

# def artgallery(request):
#     return render(request, 'artgallery.html', {})
def LikeView(request, pk):
    picture = get_object_or_404(Picture, id=request.POST.get('picture_id'))
    liked = False
    if picture.likes.filter(id=request.user.id).exists():
        picture.likes.remove(request.user)
        liked = False
    else:
         picture.likes.add(request.user)
         liked = True
    
    return HttpResponseRedirect(reverse('picture_detail', args=[str(pk)]))

class ArtGalleryView(ListView):
    model = Picture
    template_name = 'artgallery.html'
    ordering = ['title']

    def get_context_data(self, *args, **kwargs):
        albums_menu = Album.objects.all()
        context = super(ArtGalleryView, self).get_context_data(*args, **kwargs)
        context["albums_menu"] = albums_menu
        return context

def AlbumView(request, albs):
    album_pictures = Picture.objects.filter(album=albs.replace('-', ' '))
    return render(request, 'album.html', {'albs':albs.title().replace('-', ' ') , 'album_pictures':album_pictures})

def AlbumListView(request):
    albums_menu_list = Album.objects.all()
    return render(request, 'album_list.html', {'albums_menu_list':albums_menu_list})

class PictureDetailView(DetailView):
    model = Picture
    template_name = 'picture_details.html'

    def get_context_data(self, *args, **kwargs):
        context = super(PictureDetailView, self).get_context_data(*args, **kwargs)
        
        stuff = get_object_or_404(Picture, id=self.kwargs['pk'])
        total_likes = stuff.total_likes()

        liked = False
        if stuff.likes.filter(id=self.request.user.id).exists():
            liked = True

        context["total_likes"] = total_likes
        context["liked"] = liked
        return context

class AddPictureView(CreateView):
    model = Picture
    template_name = 'add_picture.html'
    form_class = PictureForm
    
class AddAlbumView(CreateView):
    model = Album
    template_name = 'add_album.html'
    fields='__all__'

class UpdatePictureView(UpdateView):
    model = Picture
    form_class = EditPictureForm
    template_name = 'update_picture.html'
    # fields = ['title', 'body']

class DeletePictureView(DeleteView):
    model = Picture
    template_name = 'delete_picture.html'
    success_url = reverse_lazy('artgallery')



