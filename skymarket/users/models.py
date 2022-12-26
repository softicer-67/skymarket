from enum import Enum

from django.contrib.auth.models import AbstractBaseUser, AbstractUser
from django.db import models
from users.managers import UserManager
from phonenumber_field.modelfields import PhoneNumberField
from django.utils.translation import gettext_lazy as _


NULLABLE = {'null': True, 'blank': True}


class UserRoles(models.TextChoices):
    ADMIN = 'admin', 'администратор'
    USER = 'user', 'пользователь'


class User(AbstractBaseUser):
    first_name = models.CharField(max_length=50, verbose_name='имя')
    last_name = models.CharField(max_length=50, verbose_name='фамилия')
    phone = models.CharField(max_length=12, verbose_name='номер телефона', **NULLABLE)
    email = models.EmailField(unique=True)
    role = models.CharField(choices= UserRoles.choices, default=UserRoles.USER, max_length=14, verbose_name='роль')
    image = models.ImageField(upload_to='users', verbose_name='аватарка', **NULLABLE)

    is_active = models.BooleanField(default=True)
    is_staff = models.BooleanField(default=False)

    USERNAME_FIELD = 'email'
    REQUIRED_FIELDS = ['first_name', 'last_name', 'phone', 'role', 'image']

    objects = UserManager()

    class Meta:
        verbose_name = 'пользователь'
        verbose_name_plural = 'пользователи'

    def __str__(self):
        return f"{self.email}"

