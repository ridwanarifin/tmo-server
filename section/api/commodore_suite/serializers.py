from rest_framework import serializers
from section.models import GalleryCommodoreSuite, CommodoreSuite

class GalleryCommodoreSuiteSerializer(serializers.ModelSerializer):
  image = serializers.ImageField(max_length=None, allow_empty_file=False, use_url=False)
  class Meta:
    model = GalleryCommodoreSuite
    fields = ['image']


class CommodoreSuiteSerializer(serializers.ModelSerializer):
  icon = serializers.ImageField(max_length=None, allow_empty_file=False, use_url=False)
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