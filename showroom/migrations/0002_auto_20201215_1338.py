# Generated by Django 3.1.4 on 2020-12-15 07:38

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('showroom', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='customer',
            name='profile_pic',
            field=models.ImageField(null=True, upload_to='static/img/user_dp'),
        ),
    ]
