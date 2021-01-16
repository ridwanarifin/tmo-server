from rest_framework import serializers
from section.models import Sustainability

class SustainabilitySerializer(serializers.ModelSerializer):
  image = serializers.ImageField(max_length=None, allow_empty_file=False, use_url=False)
  class Meta:
    model = Sustainability
    fields = '__all__'