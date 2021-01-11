from rest_framework import serializers
from section.models import GalleryAdmiralSuite, AdmiralSuite

class GalleryAdmiralSuiteSerializer(serializers.ModelSerializer):
  class Meta:
    model = GalleryAdmiralSuite
    fields = ['image']

class AdmiralSuiteSerializer(serializers.ModelSerializer):
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