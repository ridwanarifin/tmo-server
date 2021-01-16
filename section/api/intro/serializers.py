from rest_framework import serializers
from section.models import Intro

class IntroSerializer(serializers.ModelSerializer):
  image = serializers.ImageField(max_length=None, allow_empty_file=True, use_url=False)
  class Meta:
    model = Intro
    fields = '__all__'
