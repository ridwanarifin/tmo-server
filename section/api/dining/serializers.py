from rest_framework import serializers
from section.models import Dining

class DiningSerializer(serializers.ModelSerializer):
  class Meta:
    model = Dining
    fields = '__all__'