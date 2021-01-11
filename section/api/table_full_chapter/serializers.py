from rest_framework import serializers
from section.models import PerNight, HeaderFullChapter, BodyFullChapter, TableFullChapter

class PerNightSerializer(serializers.ModelSerializer):
  class Meta:
    model = PerNight
    fields = [
      'year',
      'price'
    ]

class HeaderFullChapterSerializer(serializers.ModelSerializer):
  class Meta:
    model = HeaderFullChapter
    fields = [
      'text',
      'value',
      'align',
      'width'
    ]

class BodyFullChapterSerializer(serializers.ModelSerializer):
  rates_per_night = PerNightSerializer(many=True, read_only=True)
  class Meta:
    model = BodyFullChapter
    fields = [
      'headline',
      'sailing_area',
      'minimum_nights',
      'rates_per_night',
    ]

class TableFullChapterSerializer(serializers.ModelSerializer):
  headers = HeaderFullChapterSerializer(many=True, read_only=True)
  data    = BodyFullChapterSerializer(many=True, read_only=True)
  class Meta:
    model = TableFullChapter
    fields = '__all__'