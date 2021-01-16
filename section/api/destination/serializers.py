from rest_framework import serializers
from section.models import DestinationGallery, Destination

class DestinationGallerySerializer(serializers.ModelSerializer):
  image = serializers.ImageField(max_length=None, allow_empty_file=False, use_url=False)
  mobile_image = serializers.ImageField(max_length=None, allow_empty_file=True, use_url=False)
  class Meta:
    model = DestinationGallery
    fields = [
      'image',
      'mobile_image'
    ]

class DestinationSerializer(serializers.ModelSerializer):
  gallery = DestinationGallerySerializer(many=True, read_only=True)

  class Meta:
    model = Destination
    fields = '__all__'