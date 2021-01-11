from rest_framework import viewsets
from rest_framework import filters

from page_navigation.models import Navigation
from page_navigation.api.navagation.serializers import NavigationSerializer

class NavigationViewSet(viewsets.ModelViewSet):
  serializer_class = NavigationSerializer
  filter_backends = [
    filters.SearchFilter,
    filters.OrderingFilter
  ]
  queryset = Navigation.objects.all()