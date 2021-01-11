from rest_framework import viewsets
from rest_framework import filters

from section.models import TableSpesification
from section.api.table_spesification.serializers import TableSpesificationSerializer

class TableSpesificationViewSet(viewsets.ModelViewSet):
  serializer_class = TableSpesificationSerializer
  filter_backends = [
    filters.SearchFilter,
    filters.OrderingFilter
  ]
  queryset = TableSpesification.objects.all()