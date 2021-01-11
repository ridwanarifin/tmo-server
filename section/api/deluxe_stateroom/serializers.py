from rest_framework import serializers
from section.models import GalleryDeluxeStateroom, IconDeluxeStateroom, DeluxeStateroom

class IconDeluxeStateroomSerializer(serializers.ModelSerializer):
  class Meta:
    model = IconDeluxeStateroom
    fields = ['icon']

class GalleryDeluxeStateroomSerializer(serializers.ModelSerializer):
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