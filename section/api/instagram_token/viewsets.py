from rest_framework import viewsets
from rest_framework import filters

from section.models import Instagram
from section.api.instagram_token.serializers import InstagramSerializer

class InstagramViewSet(viewsets.ModelViewSet):
  serializer_class = InstagramSerializer
  filter_backends = [
    filters.SearchFilter,
    filters.OrderingFilter
  ]
  queryset = Instagram.objects.all()