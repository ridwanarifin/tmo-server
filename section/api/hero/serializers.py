from rest_framework import serializers
from section.models import Hero, Video

class VideoSerializer(serializers.ModelSerializer):
  class Meta:
    model = Video
    fields = [
      'type',
      'src'
    ]

class HeroSerializer(serializers.ModelSerializer):
  videos = VideoSerializer(many=True, read_only=True)
  class Meta:
    model = Hero
    fields = [
      'id',
      'heading',
      'image',
      'mobile_image',
      'videos',
      'created_at',
      'updated_at'
    ]
