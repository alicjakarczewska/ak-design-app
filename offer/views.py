from django.shortcuts import render
from django.views.generic import ListView, DetailView, CreateView, UpdateView, DeleteView
from .models import Service
from django.urls import reverse_lazy, reverse
from django.http import HttpResponseRedirect
from django.core.mail import send_mail


class OfferView(ListView):
    model = Service
    template_name = 'offer.html'

class AddServiceView(CreateView):
    model = Service
    template_name = 'add_service.html'
    fields='__all__'

class UpdateServiceView(UpdateView):
    model = Service
    template_name = 'update_service.html'
    fields='__all__'

class DeleteServiceView(DeleteView):
    model = Service
    template_name = 'delete_service.html'
    success_url = reverse_lazy('offer')

def contact(request):
    if request.method == "POST":
        message_name = request.POST['message-name']
        message_surname = request.POST['message-surname']
        message_email = request.POST['message-email']
        message = request.POST['message']

        #sending mail
        send_mail(
            'Wiadomość z portalu dla grafików - od: ' + message_name + ' ' + message_surname, #subject
            message + '\n' + message_name + ' ' + message_surname + '\n' + message_email, #message
            message_email, #from email
            ['alicja.karczewska.design@gmail.com', message_email], #to email
        )

        return render(request, 'contact.html', {'message_name': message_name})

    else:
        return render(request, 'contact.html', {})