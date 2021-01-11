from rest_framework import serializers
from section.models import Sustainability

class SustainabilitySerializer(serializers.ModelSerializer):
  class Meta:
    model = Sustainability
    fields = '__all__'