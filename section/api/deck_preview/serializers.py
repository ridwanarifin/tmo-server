from rest_framework import serializers
from section.models import DeckPreview

class DeckPreviewSerializer(serializers.ModelSerializer):
  image = serializers.FileField(max_length=None, allow_empty_file=False, use_url=False)
  mobile_image = serializers.FileField(max_length=None, allow_empty_file=False, use_url=False)
  class Meta:
    model = DeckPreview
    fields = '__all__'