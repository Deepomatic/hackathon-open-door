from django.conf.urls import include, url

urlpatterns = [
    url(r'^door/open', include('api.urls')),
]
