from rest_framework import serializers
from section.models import FacilityGallery, Facility

class FacilityGallerySerializer(serializers.ModelSerializer):
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