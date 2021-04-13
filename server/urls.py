from django.contrib import admin
from django.urls import path, include
from django.conf.urls.static import static
from django.conf import settings

from django.views.generic import TemplateView
from rest_framework.schemas import get_schema_view
from rest_framework import routers

from page_navigation.api.page.viewsets import PageViewSet
from page_navigation.api.navagation.viewsets import NavigationViewSet

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

router = routers.DefaultRouter()
router.register(r'pages', PageViewSet)
router.register(r'navigations', NavigationViewSet)
router.register(r'sections/videos', VideoViewSet)
router.register(r'sections/heros', HeroViewSet)
router.register(r'sections/intro', IntroViewSet)
router.register(r'sections/vessel', TheVesselViewSet)
router.register(r'sections/voyages', VoyagesViewSet)
router.register(r'sections/dining', DiningViewSet)
router.register(r'sections/occasions', OccasionsViewSet)
router.register(r'sections/deck-technicals', DeckTechnicalViewSet)
router.register(r'sections/deck-previews', DeckPreviewViewSet)
router.register(r'sections/table-spesifications', TableSpesificationViewSet)
router.register(r'sections/admiral-suites', AdmiralSuiteViewSet)
router.register(r'sections/commodore-suites', CommodoreSuiteViewSet)
router.register(r'sections/deluxe-staterooms', DeluxeStateroomViewSet)
router.register(r'sections/instagram', InstagramTestimonyViewSet)
router.register(r'sections/testimoies', TestimonyViewSet)
router.register(r'sections/itineraries', ItineraryViewSet)
router.register(r'sections/suites-and-stateroom', SuitesAndStateroomViewSet)
router.register(r'sections/the-decks', TheDecksViewSet)
router.register(r'sections/teams', TeamViewSet)
router.register(r'sections/sustainability', SustainabilityViewSet)
router.register(r'sections/destinations', DestinationViewSet)
router.register(r'sections/table-full-chapters', TableFullChapterViewSet)
router.register(r'sections/charter-rates-includes', CharterRatesIncludeViewSet)

urlpatterns = [
    path('admin/', admin.site.urls),
    path('tinymce/', include('tinymce.urls')),
    path('_nested_admin/', include('nested_admin.urls')),
    path('openapi', get_schema_view(
        title="API Schema",
        description="API for all things …",
        version="1.0.0"
    ), name='openapi-schema'),
    path('api/', include([
        path('auth/', include('djoser.urls')),
        path('auth/', include('djoser.urls.jwt')),
        path('', include(router.urls)),
        path('schemas/', TemplateView.as_view(
            template_name='swagger-ui.html',
            extra_context={'schema_url':'openapi-schema'}
        ), name='swagger-ui'),
    ]))
]

if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
