from rest_framework import viewsets
from rest_framework import filters

from section.models import TheDecks
from section.api.the_decks.serializers import TheDecksSerializer

class TheDecksViewSet(viewsets.ModelViewSet):
  serializer_class = TheDecksSerializer
  filter_backends = [
    filters.SearchFilter,
    filters.OrderingFilter
  ]
  queryset = TheDecks.objects.all()