from rest_framework import serializers
from section.models import Occasions

class OccasionsSerializer(serializers.ModelSerializer):
  class Meta:
    model = Occasions
    fields = '__all__'