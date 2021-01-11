from rest_framework import viewsets
from rest_framework import filters

from section.models import Intro
from section.api.intro.serializers import IntroSerializer

class IntroViewSet(viewsets.ModelViewSet):
  serializer_class = IntroSerializer
  filter_backends = [
    filters.SearchFilter,
    filters.OrderingFilter
  ]
  queryset = Intro.objects.all()