from rest_framework import viewsets
from rest_framework import filters

from section.models import CommodoreSuite
from section.api.commodore_suite.serializers import CommodoreSuiteSerializer

class CommodoreSuiteViewSet(viewsets.ModelViewSet):
  serializer_class = CommodoreSuiteSerializer
  filter_backends = [
    filters.SearchFilter,
    filters.OrderingFilter
  ]
  queryset = CommodoreSuite.objects.all()