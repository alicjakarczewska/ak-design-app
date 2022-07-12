from django.urls import path
from .views import ArtGalleryView, PictureDetailView, AddPictureView, UpdatePictureView, DeletePictureView, AddAlbumView, AlbumView, AlbumListView, LikeView

urlpatterns = [
    path('artgallery/', ArtGalleryView.as_view(), name='artgallery'),
    path('picture/<int:pk>', PictureDetailView.as_view(), name='picture_detail'),
    path('add_picture/', AddPictureView.as_view(), name='add_picture'),
    path('picture/edit/<int:pk>', UpdatePictureView.as_view(), name='update_picture'),
    path('picture/<int:pk>/remove', DeletePictureView.as_view(), name='delete_picture'),
    path('add_album/', AddAlbumView.as_view(), name='add_album'),
    path('album/<str:albs>/', AlbumView, name='album'),
    path('album-list', AlbumListView, name='album_list'),
    path('like/<int:pk>', LikeView, name='like_post'),
]
