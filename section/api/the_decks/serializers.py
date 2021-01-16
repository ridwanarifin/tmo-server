from rest_framework import serializers
from section.models import TheDecks

class TheDecksSerializer(serializers.ModelSerializer):
  image = serializers.ImageField(max_length=None, allow_empty_file=False, use_url=False)
  class Meta:
    model = TheDecks
    fields = '__all__'