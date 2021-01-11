from rest_framework import serializers
from section.models import DeckTechnical

class DeckTechnicalSerializer(serializers.ModelSerializer):
  class Meta:
    model = DeckTechnical
    fields = '__all__'