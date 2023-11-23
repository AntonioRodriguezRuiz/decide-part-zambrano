# Generated by Django 4.1 on 2023-11-23 10:59

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('voting', '0006_remove_questionoption_question_type_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='question',
            name='question_type',
            field=models.CharField(choices=[('S', 'Single'), ('M', 'Multiple'), ('P', 'Priority')], default='S', max_length=1),
        ),
    ]