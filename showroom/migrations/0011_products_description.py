# Generated by Django 3.1.2 on 2020-12-07 08:28

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('showroom', '0010_auto_20201207_0612'),
    ]

    operations = [
        migrations.AddField(
            model_name='products',
            name='description',
            field=models.CharField(blank=True, default='', max_length=1000),
        ),
    ]
