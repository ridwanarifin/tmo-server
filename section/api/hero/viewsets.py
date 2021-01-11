from rest_framework import viewsets
from rest_framework import filters

from section.models import Hero, Video
from section.api.hero.serializers import HeroSerializer, VideoSerializer

class VideoViewSet(viewsets.ModelViewSet):
  serializer_class = VideoSerializer
  filter_backends = [
    filters.SearchFilter,
    filters.OrderingFilter
  ]
  queryset = Video.objects.all()

class HeroViewSet(viewsets.ModelViewSet):
  serializer_class = HeroSerializer
  filter_backends = [
    filters.SearchFilter,
    filters.OrderingFilter
  ]
  queryset = Hero.objects.all()
