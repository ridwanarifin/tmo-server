from rest_framework import serializers
from section.models import Intro

class IntroSerializer(serializers.ModelSerializer):
  class Meta:
    model = Intro
    fields = '__all__'
