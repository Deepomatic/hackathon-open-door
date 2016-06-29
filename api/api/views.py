from django.http import HttpResponse
import os

# when server restarts, we make sure the door is closed by calling the script
os.system("open-door &")

def index(request):
    os.system("open-door &")
    return HttpResponse({'done': True}, status = 200)