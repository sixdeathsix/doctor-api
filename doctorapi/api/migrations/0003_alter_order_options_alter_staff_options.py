# Generated by Django 4.1.3 on 2023-02-19 10:43

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('api', '0002_alter_user_patronymic_alter_user_photo'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='order',
            options={'verbose_name': 'Запись', 'verbose_name_plural': 'Записи к врачам'},
        ),
        migrations.AlterModelOptions(
            name='staff',
            options={'verbose_name': 'Расписание', 'verbose_name_plural': 'Расписание врачей'},
        ),
    ]