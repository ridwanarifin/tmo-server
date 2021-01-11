from rest_framework import serializers
from page_navigation.models import Menu, Navigation

class MenuSerializer(serializers.ModelSerializer):
  class Meta:
    model = Menu
    fields = [
      'id',
      'title',
      'to'
    ]

class NavigationSerializer(serializers.ModelSerializer):
  children = MenuSerializer(many=True, read_only=True)
  class Meta:
    model = Navigation
    fields = [
      'id',
      'title',
      'to',
      'children',
      'created_at',
      'updated_at'
    ]
