from rest_framework import serializers
from section.models import Personil, Team

class PersonilSerializer(serializers.ModelSerializer):
  class Meta:
    model = Personil
    fields = '__all__'

class TeamSerializer(serializers.ModelSerializer):
  data = PersonilSerializer(many=True, read_only=True)
  class Meta:
    model = Team
    fields = [
      'caption',
      'heading',
      'data'
    ]