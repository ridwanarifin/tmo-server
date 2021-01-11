from rest_framework import serializers
from section.models import Tabs, Voyages

class TabsSerializer(serializers.ModelSerializer):
  class Meta:
    model = Tabs
    fields = [
      'name',
      'heading',
      'description',
      'image',
      'to'
    ]

class VoyagesSerializer(serializers.ModelSerializer):
  tabs_data = TabsSerializer(many=True, read_only=True)
  class Meta:
    model = Voyages
    fields = [
      'heading',
      'description',
      'tabs_data',
      'created_at',
      'updated_at',
    ]
