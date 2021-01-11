from rest_framework import viewsets
from rest_framework import filters

from page_navigation.models import Page
from page_navigation.api.page.serializers import PageSerializer

class PageViewSet(viewsets.ModelViewSet):
  serializer_class = PageSerializer
  filter_backends = [
    filters.SearchFilter,
    filters.OrderingFilter
  ]
  queryset = Page.objects.all()
  lookup_field = 'slug'