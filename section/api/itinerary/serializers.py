from rest_framework import serializers
from section.models import Itinerary

class ItinerarySerializer(serializers.ModelSerializer):
  image = serializers.ImageField(max_length=None, allow_empty_file=False, use_url=False)
  class Meta:
    model = Itinerary
    fields = '__all__'