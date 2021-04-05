from django.db import models

# Create your models here.
class Content(models.Model):
    greeting = models.TextField(null=False)
