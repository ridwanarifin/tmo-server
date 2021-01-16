from rest_framework import serializers
from section.models import FacilityGallery, Facility

class FacilityGallerySerializer(serializers.ModelSerializer):
  image = serializers.ImageField(max_length=None, allow_empty_file=False, use_url=False)
  class Meta:
    model = FacilityGallery
    fields = '__all__'

class FacilitySerializer(serializers.ModelSerializer):
  gallery = FacilityGallerySerializer(many=True, read_only=True)
  class Meta:
    model = Facility
    fields = [
      'caption',
      'heading',
      'description',
      'gallery',
      'reverse',
      'created_at',
      'updated_at',
    ]