from rest_framework import serializers
from section.models import TheVessel

class TheVesselSerializer(serializers.ModelSerializer):
  image = serializers.ImageField(max_length=None, allow_empty_file=True, use_url=False)
  class Meta:
    model = TheVessel
    fields = '__all__'
