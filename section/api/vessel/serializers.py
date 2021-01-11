from rest_framework import serializers
from section.models import TheVessel

class TheVesselSerializer(serializers.ModelSerializer):
  class Meta:
    model = TheVessel
    fields = '__all__'
