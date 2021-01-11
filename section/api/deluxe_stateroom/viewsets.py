from rest_framework import viewsets
from rest_framework import filters

from section.models import DeluxeStateroom
from section.api.deluxe_stateroom.serializers import DeluxeStateroomSerializer

class DeluxeStateroomViewSet(viewsets.ModelViewSet):
  serializer_class = DeluxeStateroomSerializer
  filter_backends = [
    filters.SearchFilter,
    filters.OrderingFilter
  ]
  queryset = DeluxeStateroom.objects.all()