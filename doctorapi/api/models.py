from django.contrib.auth.models import AbstractUser, Group
from django.db import models
from datetime import datetime

class User(AbstractUser):
    patronymic = models.CharField('Отчество', max_length=50)
    photo = models.ImageField('Фото пользователя', upload_to='')

    def __str__(self):
        return '%s %s %s' % (self.last_name, self.first_name, self.patronymic)


class Staff(models.Model):
    start = models.TimeField('Начало')
    end = models.TimeField('Конец')
    user = models.ForeignKey(User, on_delete=models.CASCADE)

    def __str__(self):
        return '%s %s %s %s %s %s' % (self.user.last_name,
                                      self.user.first_name,
                                      self.user.patronymic,
                                      self.start, '-', self.end)

    class Meta:
        verbose_name = 'Расписание'
        verbose_name_plural = 'Расписание врачей'


class Order(models.Model):
    order_date = models.DateTimeField('Дата записи')
    staff = models.ForeignKey(Staff, on_delete=models.CASCADE)

    def __str__(self):
        return '%s %s %s %s' % (self.staff.user.last_name,
                             self.staff.user.first_name,
                             self.staff.user.patronymic,
                             datetime.strftime(self.order_date, "%d-%m-%Y %H:%M"))

    class Meta:
        verbose_name = 'Запись'
        verbose_name_plural = 'Записи к врачам'

