from django.contrib.auth import authenticate, login, logout
from django.db import IntegrityError
from django.http import HttpResponse, HttpResponseRedirect
from django.shortcuts import render
from django.urls import reverse
from django.contrib.auth.decorators import login_required
from .models import Player,Concepts,Questions
import json
def index(request):
    return render (request, "slag/index.html")
def data(request):
    return render (request,"slag/data.html")
@login_required(login_url='login')
def game(request):
    questionSet = Questions.objects.all()
    completed = request.GET.get('completed')
    if completed == "1":
        request.user.expoints = 1000
    #questionSet = [ serializer(question) for question in questionSet ]
    return render(request, "slag/game.html",{
        "questions" : questionSet,
    })
def serializer(question):
    return{'description':question.questionDescription,'right':question.RightAnswer, 'neutral':question.NeutralAnswer, 'wrong':question.WrongAnswer}
def login_view(request):
    if request.method == "POST":

        # Attempt to sign user in
        email = request.POST["email"]
        password = request.POST["password"]
        user = authenticate(request, username=email, password=password)

        # Check if authentication successful
        if user is not None:
            login(request, user)
            return HttpResponseRedirect(reverse("index"))
        else:
            return render(request, "slag/login.html", {
                "message": "Invalid username and/or password."
            })
    else:
        return render(request, "slag/login.html")
def register(request):
    if request.method == "POST":
        username = request.POST["username"]
        email = request.POST["email"]

        # Ensure password matches confirmation
        password = request.POST["password"]
        confirmation = request.POST["confirmation"]
        if password != confirmation:
            return render(request, "slag/register.html", {
                "message": "Passwords must match."
            })

        # Attempt to create new user
        try:
            user = Player.objects.create_user(email, username, password)
            user.save()
        except IntegrityError:
            return render(request, "slag/register.html", {
                "message": "Username already taken."
            })
        login(request, user)
        return HttpResponseRedirect(reverse("index"))
    else:
        return render(request, "slag/register.html")
def logout_view(request):
    logout(request)
    return HttpResponseRedirect(reverse("index"))

def concepts(request):
    x= Concepts.objects.all()
    x = x.order_by('title')
    return render(request,"slag/concepts.html", {
        "concepts" : x,
    })


