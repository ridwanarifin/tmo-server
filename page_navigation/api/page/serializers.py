from rest_framework import serializers
from page_navigation.models import Page
from section.models import VoyagesItem
from section.api.deck_preview.serializers import DeckPreviewSerializer
from section.api.testimony.serializers import TestimonySerializer
from section.api.hero.serializers import HeroSerializer
from section.api.intro.serializers import IntroSerializer
from section.api.vessel.serializers import TheVesselSerializer
from section.api.voyages.serializers import VoyagesSerializer
from section.api.dining.serializers import DiningSerializer
from section.api.occasions.serializers import OccasionsSerializer
from section.api.deck_technical.serializers import DeckTechnicalSerializer
from section.api.table_spesification.serializers import TableSpesificationSerializer
from section.api.suites_and_stateroom.serializers import SuitesAndStateroomSerializer
from section.api.the_decks.serializers import TheDecksSerializer
from section.api.team.serializers import TeamSerializer
from section.api.sustainability.serializers import SustainabilitySerializer
from section.api.itinerary.serializers import ItinerarySerializer
from section.api.destination.serializers import DestinationSerializer
from section.api.admiral_suite.serializers import AdmiralSuiteSerializer
from section.api.commodore_suite.serializers import CommodoreSuiteSerializer
from section.api.deluxe_stateroom.serializers import DeluxeStateroomSerializer
from section.api.instagram_token.serializers import InstagramSerializer
from section.api.facility.serializers import FacilitySerializer
from section.api.table_full_chapter.serializers import TableFullChapterSerializer
from section.api.charter_rates_include.serializers import CharterRatesIncludeSerializer

class VoyagesItemSerializer(serializers.ModelSerializer):
  image = serializers.ImageField(max_length=None, allow_empty_file=False, use_url=False)
  class Meta:
    model = VoyagesItem
    fields = '__all__'

class PageSerializer(serializers.ModelSerializer):
  deck_previews             = DeckPreviewSerializer(many=True, read_only=True)
  voyages_items             = VoyagesItemSerializer(many=True, read_only=True)
  testimonies               = TestimonySerializer(many=True, read_only=True)
  hero                      = HeroSerializer(read_only=True)
  intro                     = IntroSerializer(read_only=True)
  the_vessel                = TheVesselSerializer(read_only=True)
  voyages                   = VoyagesSerializer(read_only=True)
  dining                    = DiningSerializer(read_only=True)
  occasions                 = OccasionsSerializer(read_only=True)
  deck_technical            = DeckTechnicalSerializer(read_only=True)
  table_spesification       = TableSpesificationSerializer(read_only=True)
  suites_and_staterooms     = SuitesAndStateroomSerializer(read_only=True)
  the_decks                 = TheDecksSerializer(many=True, read_only=True)
  teams                     = TeamSerializer(read_only=True)
  sustainability            = SustainabilitySerializer(read_only=True)
  itinerary                 = ItinerarySerializer(read_only=True)
  destinations              = DestinationSerializer(many=True, read_only=True)
  admiral_suite             = AdmiralSuiteSerializer(read_only=True)
  commodore_suite           = CommodoreSuiteSerializer(read_only=True)
  deluxe_stateroom          = DeluxeStateroomSerializer(read_only=True)
  instagram                 = InstagramSerializer(read_only=True)
  facilities                = FacilitySerializer(many=True, read_only=True)
  table_full_chapter        = TableFullChapterSerializer(read_only=True)
  charter_rate_includes     = CharterRatesIncludeSerializer(many=True, read_only=True)

  class Meta:
    model = Page
    fields = [
      'id',
      'name',
      'title',
      'hero',
      'intro',
      'the_vessel',
      'voyages',
      'dining',
      'occasions',
      'deck_technical',
      'table_spesification',
      'suites_and_staterooms',
      'admiral_suite',
      'commodore_suite',
      'deluxe_stateroom',
      'the_decks',
      'teams',
      'sustainability',
      'instagram',
      'itinerary',
      'deck_previews',
      'voyages_items',
      'testimonies',
      'destinations',
      'facilities',
      'table_full_chapter',
      'charter_rate_includes',
      'slug',
      'created_at',
      'updated_at'
    ]
    lookup_field = 'slug'