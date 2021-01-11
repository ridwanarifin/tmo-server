from rest_framework import viewsets
from rest_framework import filters

from section.models import Destination
from section.api.destination.serializers import DestinationSerializer

class DestinationViewSet(viewsets.ModelViewSet):
  serializer_class = DestinationSerializer
  filter_backends = [
    filters.SearchFilter,
    filters.OrderingFilter
  ]
  ordering = ['created_at']
  queryset = Destination.objects.all()