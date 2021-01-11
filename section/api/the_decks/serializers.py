from rest_framework import serializers
from section.models import TheDecks

class TheDecksSerializer(serializers.ModelSerializer):
  class Meta:
    model = TheDecks
    fields = '__all__'