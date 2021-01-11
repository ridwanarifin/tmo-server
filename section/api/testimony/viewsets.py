from rest_framework import viewsets
from rest_framework import filters

from section.models import InstagramTestimony, Testimony
from section.api.testimony.serializers import InstagramTestimonySerializer, TestimonySerializer

class InstagramTestimonyViewSet(viewsets.ModelViewSet):
  serializer_class = InstagramTestimonySerializer
  filter_backends = [
    filters.SearchFilter,
    filters.OrderingFilter
  ]
  queryset = InstagramTestimony.objects.all()

class TestimonyViewSet(viewsets.ModelViewSet):
  serializer_class = TestimonySerializer
  filter_backends = [
    filters.SearchFilter,
    filters.OrderingFilter
  ]
  queryset = Testimony.objects.all()