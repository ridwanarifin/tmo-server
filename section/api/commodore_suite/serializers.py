from rest_framework import serializers
from section.models import GalleryCommodoreSuite, CommodoreSuite

class GalleryCommodoreSuiteSerializer(serializers.ModelSerializer):
  class Meta:
    model = GalleryCommodoreSuite
    fields = ['image']


class CommodoreSuiteSerializer(serializers.ModelSerializer):
  gallery = GalleryCommodoreSuiteSerializer(many=True, read_only=True)
  class Meta:
    model = CommodoreSuite
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