from rest_framework import serializers
from section.models import InstagramTestimony, Testimony

class InstagramTestimonySerializer(serializers.ModelSerializer):
  class Meta:
    model = InstagramTestimony
    fields = '__all__'

class TestimonySerializer(serializers.ModelSerializer):
  image = serializers.ImageField(max_length=None, allow_empty_file=False, use_url=False)
  instagram = InstagramTestimonySerializer(read_only=True)
  class Meta:
    model = Testimony
    fields = '__all__'