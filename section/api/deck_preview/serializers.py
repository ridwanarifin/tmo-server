from rest_framework import serializers
from section.models import DeckPreview

class DeckPreviewSerializer(serializers.ModelSerializer):
  class Meta:
    model = DeckPreview
    fields = '__all__'