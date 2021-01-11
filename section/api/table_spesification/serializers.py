from rest_framework import serializers
from section.models import HeaderSpesification, BodySpesification, TableSpesification

class HeaderSpesificationSerializer(serializers.ModelSerializer):
  class Meta:
    model = HeaderSpesification
    fields = [
      'text',
      'value',
      'align'
    ]

class BodySpesificationSerializer(serializers.ModelSerializer):
  class Meta:
    model = BodySpesification
    fields = [
      'name',
      'value'
    ]

class TableSpesificationSerializer(serializers.ModelSerializer):
  headers = HeaderSpesificationSerializer(many=True, read_only=True)
  data = BodySpesificationSerializer(many=True, read_only=True)
  class Meta:
    model = TableSpesification
    fields = [
      'headers',
      'data',
      'created_at',
      'updated_at'
    ]