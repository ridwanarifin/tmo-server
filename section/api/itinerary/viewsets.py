from rest_framework import viewsets
from rest_framework import filters

from section.models import Itinerary
from section.api.itinerary.serializers import ItinerarySerializer

class ItineraryViewSet(viewsets.ModelViewSet):
  serializer_class = ItinerarySerializer
  filter_backends = [
    filters.SearchFilter,
    filters.OrderingFilter
  ]
  queryset = Itinerary.objects.all()