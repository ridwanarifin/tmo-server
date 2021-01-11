from rest_framework import viewsets
from rest_framework import filters

from section.models import Facility
from section.api.facility.serializers import FacilitySerializer

class FacilityViewSet(viewsets.ModelViewSet):
  serializer_class = FacilitySerializer
  filter_backends = [
    filters.SearchFilter,
    filters.OrderingFilter
  ]
  queryset = Facility.objects.all()