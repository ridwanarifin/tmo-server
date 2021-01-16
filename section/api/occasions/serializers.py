from rest_framework import serializers
from section.models import Occasions

class OccasionsSerializer(serializers.ModelSerializer):
  image = serializers.ImageField(max_length=None, allow_empty_file=False, use_url=False)
  class Meta:
    model = Occasions
    fields = '__all__'