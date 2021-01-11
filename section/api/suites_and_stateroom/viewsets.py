from rest_framework import viewsets
from rest_framework import filters

from section.models import SuitesAndStateroom
from section.api.suites_and_stateroom.serializers import SuitesAndStateroomSerializer

class SuitesAndStateroomViewSet(viewsets.ModelViewSet):
  serializer_class = SuitesAndStateroomSerializer
  filter_backends = [
    filters.SearchFilter,
    filters.OrderingFilter
  ]
  queryset = SuitesAndStateroom.objects.all()