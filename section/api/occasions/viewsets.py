from rest_framework import viewsets
from rest_framework import filters

from section.models import Occasions
from section.api.occasions.serializers import OccasionsSerializer

class OccasionsViewSet(viewsets.ModelViewSet):
  serializer_class = OccasionsSerializer
  filter_backends = [
    filters.SearchFilter,
    filters.OrderingFilter
  ]
  queryset = Occasions.objects.all()