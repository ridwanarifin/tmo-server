from rest_framework import serializers
from section.models import DeckTechnical

class DeckTechnicalSerializer(serializers.ModelSerializer):
  image = serializers.ImageField(max_length=None, allow_empty_file=False, use_url=False)
  class Meta:
    model = DeckTechnical
    fields = '__all__'