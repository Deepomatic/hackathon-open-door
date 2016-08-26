from django.template import loader
from django.http import HttpResponse
import os

def index(request):
    os.system("open-door")
    template = loader.get_template('index.html')
    return HttpResponse(template.render({}, request))

