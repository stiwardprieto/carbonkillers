from django.db import models
from django.contrib.auth.models import AbstractBaseUser, BaseUserManager

class Concepts(models.Model):
    title = models.CharField(verbose_name='conceptName',max_length=90)
    description = models.TextField(verbose_name='conceptDescription')

class Questions(models.Model):
    ANSWER_CHOICES = (
        ('First', 1),
        ('Second', 2),
        ('Third', 3)
    )
    questionDescription = models.TextField(verbose_name='questionDescription',blank=True)
    answerOption1=models.TextField(verbose_name='answer1',blank=True)
    answerOption2=models.TextField(verbose_name='answer2',blank=True)
    answerOption3=models.TextField(verbose_name='answer3',blank=True)
    RightAnswer = models.CharField(max_length=30,choices=ANSWER_CHOICES)
    NeutralAnswer = models.CharField(max_length=30,choices=ANSWER_CHOICES)
    WrongAnswer = models.CharField(max_length=30,choices=ANSWER_CHOICES)

class PlayerManager(BaseUserManager):
    def create_user(self,email,username,password=None):
        if not email:
            raise ValueError("Users must have an email address")
        if not username:
            raise ValueError("Users must have an username")
        user = self.model(
            email= self.normalize_email(email),
            username=username,
            expoints=100,
        )
        user.set_password(password)
        user.save(using=self._db)
        return user
    def create_superuser(self,email,username,password):
        user = self.create_user(
            email=self.normalize_email(email),
            password=password,
            username=username
        )
        user.is_admin= True
        user.is_staff= True
        user.is_superuser= True
        user.save(using=self._db)
        return user

class Player(AbstractBaseUser):
    email = models.EmailField(verbose_name='email',max_length=60, unique=True)
    username = models.CharField(max_length=30, unique=True)
    date_joined = models.DateTimeField(verbose_name='date joined',auto_now_add=True)
    last_login = models.DateTimeField(verbose_name='last login',auto_now_add=True)
    is_admin = models.BooleanField(default=False)
    is_active = models.BooleanField(default=True)
    is_staff = models.BooleanField(default=False)
    is_superuser = models.BooleanField(default=False)
    expoints = models.IntegerField(verbose_name='CarbonPoints')
    USERNAME_FIELD = 'email'
    REQUIRED_FIELDS = ['username']
    objects = PlayerManager()
    def __str__(self):
        return self.email
    def has_perm(self, perm, obj=None):
        return self.is_admin
    def has_module_perms(self,app_label):
        return True
    
