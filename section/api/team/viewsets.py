from rest_framework import viewsets
from rest_framework import filters

from section.models import Team
from section.api.team.serializers import TeamSerializer

class TeamViewSet(viewsets.ModelViewSet):
  serializer_class = TeamSerializer
  filter_backends = [
    filters.SearchFilter,
    filters.OrderingFilter
  ]
  queryset = Team.objects.all()