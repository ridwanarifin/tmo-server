from rest_framework import serializers
from section.models import GalleryAdmiralSuite, AdmiralSuite

class GalleryAdmiralSuiteSerializer(serializers.ModelSerializer):
  image = serializers.ImageField(max_length=None, allow_empty_file=False, use_url=False)
  class Meta:
    model = GalleryAdmiralSuite
    fields = ['image']

class AdmiralSuiteSerializer(serializers.ModelSerializer):
  icon = serializers.ImageField(max_length=None, allow_empty_file=False, use_url=False)
  gallery = GalleryAdmiralSuiteSerializer(many=True, read_only=True)
  class Meta:
    model = AdmiralSuite
    fields = [
      'icon',
      'caption',
      'heading',
      'sqm',
      'description',
      'gallery',
      'created_at',
      'updated_at'
    ]