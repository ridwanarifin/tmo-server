from rest_framework import routers

from section.api.hero.viewsets import HeroViewSet, VideoViewSet
from section.api.intro.viewsets import IntroViewSet
from section.api.vessel.viewsets import TheVesselViewSet
from section.api.voyages.viewsets import VoyagesViewSet
from section.api.dining.viewsets import DiningViewSet
from section.api.occasions.viewsets import OccasionsViewSet
from section.api.deck_technical.viewsets import DeckTechnicalViewSet
from section.api.deck_preview.viewsets import DeckPreviewViewSet
from section.api.table_spesification.viewsets import TableSpesificationViewSet
from section.api.admiral_suite.viewsets import AdmiralSuiteViewSet
from section.api.commodore_suite.viewsets import CommodoreSuiteViewSet
from section.api.deluxe_stateroom.viewsets import DeluxeStateroomViewSet
from section.api.testimony.viewsets import InstagramTestimonyViewSet, TestimonyViewSet
from section.api.itinerary.viewsets import ItineraryViewSet
from section.api.suites_and_stateroom.viewsets import SuitesAndStateroomViewSet
from section.api.the_decks.viewsets import TheDecksViewSet
from section.api.team.viewsets import TeamViewSet
from section.api.sustainability.viewsets import SustainabilityViewSet
from section.api.destination.viewsets import DestinationViewSet
from section.api.table_full_chapter.viewsets import TableFullChapterViewSet
from section.api.charter_rates_include.viewsets import CharterRatesIncludeViewSet

router = routers.SimpleRouter()
router.register(r'videos', VideoViewSet)
router.register(r'heros', HeroViewSet)
router.register(r'intro', IntroViewSet)
router.register(r'vessel', TheVesselViewSet)
router.register(r'voyages', VoyagesViewSet)
router.register(r'dining', DiningViewSet)
router.register(r'occasions', OccasionsViewSet)
router.register(r'deck-technicals', DeckTechnicalViewSet)
router.register(r'deck-previews', DeckPreviewViewSet)
router.register(r'table-spesifications', TableSpesificationViewSet)
router.register(r'admiral-suites', AdmiralSuiteViewSet)
router.register(r'commodore-suites', CommodoreSuiteViewSet)
router.register(r'deluxe-staterooms', DeluxeStateroomViewSet)
router.register(r'instagram', InstagramTestimonyViewSet)
router.register(r'testimoies', TestimonyViewSet)
router.register(r'itineraries', ItineraryViewSet)
router.register(r'suites-and-stateroom', SuitesAndStateroomViewSet)
router.register(r'the-decks', TheDecksViewSet)
router.register(r'teams', TeamViewSet)
router.register(r'sustainability', SustainabilityViewSet)
router.register(r'destinations', DestinationViewSet)
router.register(r'table-full-chapters', TableFullChapterViewSet)
router.register(r'charter-rates-includes', CharterRatesIncludeViewSet)

urlpatterns = router.urls
