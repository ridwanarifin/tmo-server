from rest_framework import viewsets
from rest_framework import filters

from section.models import TableFullChapter
from section.api.table_full_chapter.serializers import TableFullChapterSerializer

class TableFullChapterViewSet(viewsets.ModelViewSet):
  serializer_class = TableFullChapterSerializer
  filter_backends = [
    filters.SearchFilter,
    filters.OrderingFilter
  ]
  queryset = TableFullChapter.objects.all()