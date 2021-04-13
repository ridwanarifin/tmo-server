from rest_framework import serializers
from section.models import GalleryDeluxeStateroom, IconDeluxeStateroom, DeluxeStateroom

class IconDeluxeStateroomSerializer(serializers.ModelSerializer):
  icon = serializers.ImageField(max_length=None, allow_empty_file=False, use_url=False)
  class Meta:
    model = IconDeluxeStateroom
    fields = ['icon']

class GalleryDeluxeStateroomSerializer(serializers.ModelSerializer):
  image = serializers.ImageField(max_length=None, allow_empty_file=False, use_url=False)
  class Meta:
    model = GalleryDeluxeStateroom
    fields = ['image']

class DeluxeStateroomSerializer(serializers.ModelSerializer):
  icons = IconDeluxeStateroomSerializer(many=True, read_only=True)
  gallery = GalleryDeluxeStateroomSerializer(many=True, read_only=True)
  class Meta:
    model = DeluxeStateroom
    fields = [
      'icons',
      'caption',
      'heading',
      'sqm',
      'description',
      'gallery',
      'created_at',
      'updated_at'
    ]