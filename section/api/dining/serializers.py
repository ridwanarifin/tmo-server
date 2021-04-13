from rest_framework import serializers
from section.models import Dining

class DiningSerializer(serializers.ModelSerializer):
  image = serializers.ImageField(max_length=None, allow_empty_file=False, use_url=False)
  class Meta:
    model = Dining
    fields = '__all__'