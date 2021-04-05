from django.shortcuts import render

# Create your views here.
from django.views.generic import TemplateView

from hello.content.models import Content


class HelloWorld(TemplateView):

    template_name = "content/hello_world.html"

    def get_context_data(self, **kwargs):
        message, _ = Content.objects.get_or_create(greeting="Hello World")
        return {"greeting": message.greeting}
