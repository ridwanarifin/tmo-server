from rest_framework import viewsets
from rest_framework import filters

from section.models import Sustainability
from section.api.sustainability.serializers import SustainabilitySerializer

class SustainabilityViewSet(viewsets.ModelViewSet):
  serializer_class = SustainabilitySerializer
  filter_backends = [
    filters.SearchFilter,
    filters.OrderingFilter
  ]
  queryset = Sustainability.objects.all()