from rest_framework import viewsets
from rest_framework import filters

from section.models import TheVessel
from section.api.vessel.serializers import TheVesselSerializer

class TheVesselViewSet(viewsets.ModelViewSet):
  serializer_class = TheVesselSerializer
  filter_backends = [
    filters.SearchFilter,
    filters.OrderingFilter
  ]
  queryset = TheVessel.objects.all()