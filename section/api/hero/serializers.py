from rest_framework import serializers
from section.models import Hero, Video

class VideoSerializer(serializers.ModelSerializer):
  src = serializers.ImageField(max_length=None, allow_empty_file=False, use_url=False)
  class Meta:
    model = Video
    fields = [
      'type',
      'src'
    ]

class HeroSerializer(serializers.ModelSerializer):
  videos = VideoSerializer(many=True, read_only=True)
  image = serializers.ImageField(max_length=None, allow_empty_file=True, use_url=False)
  mobile_image = serializers.ImageField(max_length=None, allow_empty_file=True, use_url=False)
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
