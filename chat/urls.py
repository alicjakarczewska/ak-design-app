from django.urls import path
from chat.views import Inbox, UserSearch, Directs, NewConversation, SendDirect
urlpatterns = [
   	path('inbox/', Inbox, name='inbox'),
   	path('inbox/chat/<username>', Directs, name='directs'),
   	path('inbox/new/', UserSearch, name='usersearch'),
   	path('inbox/new/<username>', NewConversation, name='newconversation'),
   	path('inbox/send/', SendDirect, name='send_direct'),

]