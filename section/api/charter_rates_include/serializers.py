from rest_framework import serializers
from section.models import DataCharterInclude, CharterRatesInclude

class DataCharterIncludeSerializer(serializers.ModelSerializer):
  class Meta:
    model = DataCharterInclude
    fields = [
      'id',
      'text'
    ]

class CharterRatesIncludeSerializer(serializers.ModelSerializer):
  data = DataCharterIncludeSerializer(many=True, read_only=True)

  class Meta:
    model = CharterRatesInclude
    fields = [
      'id',
      'name',
      'data',
      'created_at',
      'updated_at'
    ]