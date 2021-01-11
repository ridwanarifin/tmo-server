from rest_framework import viewsets
from rest_framework import filters

from section.models import Dining
from section.api.dining.serializers import DiningSerializer

class DiningViewSet(viewsets.ModelViewSet):
  serializer_class = DiningSerializer
  filter_backends = [
    filters.SearchFilter,
    filters.OrderingFilter
  ]
  queryset = Dining.objects.all()