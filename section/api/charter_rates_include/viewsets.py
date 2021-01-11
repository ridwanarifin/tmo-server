from rest_framework import viewsets
from rest_framework import filters

from section.models import CharterRatesInclude
from section.api.charter_rates_include.serializers import CharterRatesIncludeSerializer

class CharterRatesIncludeViewSet(viewsets.ModelViewSet):
  serializer_class = CharterRatesIncludeSerializer
  filter_backends = [
    filters.SearchFilter,
    filters.OrderingFilter
  ]
  queryset = CharterRatesInclude.objects.all()