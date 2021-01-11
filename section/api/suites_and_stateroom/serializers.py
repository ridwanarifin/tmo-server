from rest_framework import serializers
from section.models import MenuSuitesroom, SuitesAndStateroom
from section.api.admiral_suite.serializers import AdmiralSuiteSerializer
from section.api.commodore_suite.serializers import CommodoreSuiteSerializer
from section.api.deluxe_stateroom.serializers import DeluxeStateroomSerializer

class MenuSuitesroomSerializer(serializers.ModelSerializer):
  admiral     = AdmiralSuiteSerializer(read_only=True)
  commodore   = CommodoreSuiteSerializer(read_only=True)
  deluxe      = DeluxeStateroomSerializer(read_only=True)

  class Meta:
    model = MenuSuitesroom
    fields = [
      'admiral',
      'commodore',
      'deluxe'
    ]

class SuitesAndStateroomSerializer(serializers.ModelSerializer):
  data = MenuSuitesroomSerializer(many=True, read_only=True)

  class Meta:
    model = SuitesAndStateroom
    fields = [
      'caption',
      'heading',
      'to',
      'data'
    ]