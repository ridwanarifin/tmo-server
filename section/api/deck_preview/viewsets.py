from rest_framework import viewsets
from rest_framework import filters

from section.models import DeckPreview
from section.api.deck_preview.serializers import DeckPreviewSerializer

class DeckPreviewViewSet(viewsets.ModelViewSet):
  serializer_class = DeckPreviewSerializer
  filter_backends = [
    filters.SearchFilter,
    filters.OrderingFilter
  ]
  queryset = DeckPreview.objects.all()