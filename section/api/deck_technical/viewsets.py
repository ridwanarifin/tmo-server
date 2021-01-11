from rest_framework import viewsets
from rest_framework import filters

from section.models import DeckTechnical
from section.api.deck_technical.serializers import DeckTechnicalSerializer

class DeckTechnicalViewSet(viewsets.ModelViewSet):
  serializer_class = DeckTechnicalSerializer
  filter_backends = [
    filters.SearchFilter,
    filters.OrderingFilter
  ]
  queryset = DeckTechnical.objects.all()