from django.db import models

class Client(models.Model):
    first_name = models.CharField(max_length=200, null=True, blank=True)
    last_name = models.CharField(max_length=200, null=True, blank=True)


    def __str__(self):
        return self.first_name + ' ' + self.last_name
