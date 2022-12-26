from django.urls import include, path
from rest_framework import routers

from users.apps import UsersConfig
from users.views import UserViewSet

router = routers.SimpleRouter()
router.register("", UserViewSet)

app_name = UsersConfig.name

urlpatterns = [

]
urlpatterns += router.urls
