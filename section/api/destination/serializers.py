from rest_framework import serializers
from section.models import DestinationGallery, Destination

class DestinationGallerySerializer(serializers.ModelSerializer):
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