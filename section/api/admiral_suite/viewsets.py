from rest_framework import viewsets
from rest_framework import filters

from section.models import AdmiralSuite
from section.api.admiral_suite.serializers import AdmiralSuiteSerializer

class AdmiralSuiteViewSet(viewsets.ModelViewSet):
  serializer_class = AdmiralSuiteSerializer
  filter_backends = [
    filters.SearchFilter,
    filters.OrderingFilter
  ]
  queryset = AdmiralSuite.objects.all()