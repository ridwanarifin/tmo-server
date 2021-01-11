from rest_framework import viewsets
from rest_framework import filters

from section.models import Voyages
from section.api.voyages.serializers import VoyagesSerializer

class VoyagesViewSet(viewsets.ModelViewSet):
  serializer_class = VoyagesSerializer
  filter_backends = [
    filters.SearchFilter,
    filters.OrderingFilter
  ]
  queryset = Voyages.objects.all()