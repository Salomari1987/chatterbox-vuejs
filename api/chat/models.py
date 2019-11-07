from django.db import models
from django.contrib.auth.models import User


class Channel(models.Model):
    name = models.CharField(max_length=60)
    from_user = models.ForeignKey(User, on_delete=models.CASCADE, related_name='%(class)s_from_user')
    to_user = models.ForeignKey(User, on_delete=models.CASCADE, related_name='%(class)s_to_user')


class Message(models.Model):
    message = models.TextField()
    from_user = models.ForeignKey(User, on_delete=models.CASCADE, related_name='%(class)s_from_user')
    to_user = models.ForeignKey(User, on_delete=models.CASCADE, related_name='%(class)s_to_user')
    channel_id = models.ForeignKey(Channel, on_delete=models.CASCADE)