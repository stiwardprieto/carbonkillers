from django.urls import path

from . import views

urlpatterns = [
    path("", views.index, name="index"),
    path("register", views.register, name="register"),
    path("logout", views.logout_view, name="logout"),
    path("login",views.login_view,name="login"),
    path("concepts",views.concepts,name="concepts"),
    path("game",views.game,name="game"),
    path("data", views.data,name="data"),
]