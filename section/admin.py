from django.contrib import admin
import nested_admin
from section.models import *
from tinymce.widgets import TinyMCE

# Register your models here.

# hero
class VideoInline(nested_admin.NestedStackedInline):
  model = Video
  extra = 0

@admin.register(Hero)
class HeroAdmin(nested_admin.NestedModelAdmin):
  empty_value_display = '-empty-'
  inlines = [VideoInline]
  formfield_overrides = {
    models.TextField: {'widget': TinyMCE},
    models.CharField: {'widget': TinyMCE},
  }
# end hero


# intro
@admin.register(Intro)
class IntroAdmin(nested_admin.NestedModelAdmin):
  empty_value_display = '-empty-'
  formfield_overrides = {
    models.TextField: {'widget': TinyMCE},
    models.CharField: {'widget': TinyMCE},
  }
# end intro


# vessel
@admin.register(TheVessel)
class TheVesselAdmin(nested_admin.NestedModelAdmin):
  empty_value_display = '-empty-'
  formfield_overrides = {
    models.TextField: {'widget': TinyMCE},
    models.CharField: {'widget': TinyMCE},
  }
# end vessel


# voyages
class TabsInline(nested_admin.NestedStackedInline):
  model = Tabs
  extra = 0
  formfield_overrides = {
    models.TextField: {'widget': TinyMCE},
    models.CharField: {'widget': TinyMCE},
  }

@admin.register(Voyages)
class VoyagesAdmin(nested_admin.NestedModelAdmin):
  empty_value_display = '-empty-'
  inlines = [TabsInline]
  formfield_overrides = {
    models.TextField: {'widget': TinyMCE},
    models.CharField: {'widget': TinyMCE},
  }
# end voyages


# dining
@admin.register(Dining)
class DiningAdmin(nested_admin.NestedModelAdmin):
  empty_value_display = '-empty-'
  formfield_overrides = {
    models.TextField: {'widget': TinyMCE},
    models.CharField: {'widget': TinyMCE},
  }
# end dining


# occasions
@admin.register(Occasions)
class OccasionsAdmin(nested_admin.NestedModelAdmin):
  empty_value_display = '-empty-'
  formfield_overrides = {
    models.TextField: {'widget': TinyMCE},
    models.CharField: {'widget': TinyMCE},
  }
# end occasions


# deck technical
@admin.register(DeckTechnical)
class DeckTechnicalAdmin(nested_admin.NestedModelAdmin):
  empty_value_display = '-empty-'
  formfield_overrides = {
    models.TextField: {'widget': TinyMCE},
    models.CharField: {'widget': TinyMCE},
  }
# end deck technical


# deck preview
class DeckPreviewInline(nested_admin.NestedStackedInline):
  model = DeckPreview
  extra = 0
  formfield_overrides = {
    models.TextField: {'widget': TinyMCE},
    models.CharField: {'widget': TinyMCE},
  }

@admin.register(DeckPreview)
class DeckPreviewAdmin(nested_admin.NestedModelAdmin):
  empty_value_display = '-empty-'
  formfield_overrides = {
    models.TextField: {'widget': TinyMCE},
    models.CharField: {'widget': TinyMCE},
  }
# end deck preview


# table spesification
class HeaderSpesificationInline(nested_admin.NestedStackedInline):
  model = HeaderSpesification
  extra = 0

class BodySpesificationInline(nested_admin.NestedStackedInline):
  model = BodySpesification
  extra = 0
  formfield_overrides = {
    models.TextField: {'widget': TinyMCE},
  }

@admin.register(TableSpesification)
class TableSpesificationAdmin(nested_admin.NestedModelAdmin):
  empty_value_display = '-empty-'
  inlines = [HeaderSpesificationInline, BodySpesificationInline]
# end table spesification


# suites and staterooms
class MenuSuitesroomInline(nested_admin.NestedStackedInline):
  model = MenuSuitesroom
  extra = 0

@admin.register(SuitesAndStateroom)
class SuitesAndStateroomAdmin(nested_admin.NestedModelAdmin):
  empty_value_display = '-empty-'
  inlines = [MenuSuitesroomInline]
# end suites and staterooms


# admiral suites
class GalleryAdmiralSuiteInline(nested_admin.NestedStackedInline):
  model = GalleryAdmiralSuite
  extra = 0

@admin.register(AdmiralSuite)
class AdmiralSuiteAdmin(nested_admin.NestedModelAdmin):
  empty_value_display = '-empty-'
  inlines = [GalleryAdmiralSuiteInline]
  formfield_overrides = {
    models.TextField: {'widget': TinyMCE},
    models.CharField: {'widget': TinyMCE},
  }
# end admiral suites


# commodore suite
class GalleryCommodoreSuiteInline(nested_admin.NestedStackedInline):
  model = GalleryCommodoreSuite
  extra = 0

@admin.register(CommodoreSuite)
class CommodoreSuiteAdmin(nested_admin.NestedModelAdmin):
  empty_value_display = '-empty-'
  inlines = [GalleryCommodoreSuiteInline]
  formfield_overrides = {
    models.TextField: {'widget': TinyMCE},
    models.CharField: {'widget': TinyMCE},
  }
# end commodore suite


# deluxe stateroom
class GalleryDeluxeStateroomInline(nested_admin.NestedStackedInline):
  model = GalleryDeluxeStateroom
  extra = 0

class IconDeluxeStateroomInline(nested_admin.NestedStackedInline):
  model = IconDeluxeStateroom
  extra = 0

@admin.register(DeluxeStateroom)
class DeluxeStateroomAdmin(nested_admin.NestedModelAdmin):
  empty_value_display = '-empty-'
  inlines = [IconDeluxeStateroomInline, GalleryDeluxeStateroomInline]
  formfield_overrides = {
    models.TextField: {'widget': TinyMCE},
    models.CharField: {'widget': TinyMCE},
  }
# end deluxe stateroom


# the decks
class TheDecksInline(nested_admin.NestedStackedInline):
  model = TheDecks
  extra = 0

@admin.register(TheDecks)
class TheDecksAdmin(nested_admin.NestedModelAdmin):
  empty_value_display = '-empty-'
  formfield_overrides = {
    models.TextField: {'widget': TinyMCE},
    models.CharField: {'widget': TinyMCE},
  }
# end the decks


# team
class PersonilInline(nested_admin.NestedStackedInline):
  model = Personil
  extra = 0

@admin.register(Team)
class TeamAdmin(nested_admin.NestedModelAdmin):
  empty_value_display = '-empty-'
  inlines = [PersonilInline]
# end team


# sustainability
@admin.register(Sustainability)
class SustainabilityAdmin(nested_admin.NestedModelAdmin):
  empty_value_display = '-empty-'
  formfield_overrides = {
    models.TextField: {'widget': TinyMCE},
  }
# end sustainabiliy


# voyages item
class VoyagesItemInline(nested_admin.NestedStackedInline):
  model = VoyagesItem
  extra = 0
  formfield_overrides = {
    models.TextField: {'widget': TinyMCE},
    models.CharField: {'widget': TinyMCE},
  }

@admin.register(VoyagesItem)
class VoyagesItemAdmin(nested_admin.NestedModelAdmin):
  empty_value_display = '-empty-'
  formfield_overrides = {
    models.TextField: {'widget': TinyMCE},
    models.CharField: {'widget': TinyMCE},
  }
# end voyages item


# testimony
class TestimonyInline(nested_admin.NestedStackedInline):
  model = Testimony
  extra = 0
  formfield_overrides = {
    models.TextField: {'widget': TinyMCE},
  }

@admin.register(InstagramTestimony)
class InstagramTestimonyAdmin(nested_admin.NestedModelAdmin):
  empty_value_display = '-empty-'

@admin.register(Testimony)
class TestimonyAdmin(nested_admin.NestedModelAdmin):
  empty_value_display = '-empty-'
  formfield_overrides = {
    models.TextField: {'widget': TinyMCE},
  }
# end testimony


# itinerary
@admin.register(Itinerary)
class ItineraryAdmin(nested_admin.NestedModelAdmin):
  empty_value_display = '-empty-'
  formfield_overrides = {
    models.TextField: {'widget': TinyMCE},
    models.CharField: {'widget': TinyMCE},
  }
# end itinerary


# destination
class DestinationGalleryInline(nested_admin.NestedStackedInline):
  model = DestinationGallery
  extra = 0

class DestinationInline(nested_admin.NestedStackedInline):
  model = Destination
  extra = 0
  formfield_overrides = {
    models.TextField: {'widget': TinyMCE}
  }

@admin.register(Destination)
class DestinationAdmin(nested_admin.NestedModelAdmin):
  empty_value_display = '-empty-'
  inlines = [DestinationGalleryInline]
  formfield_overrides = {
    models.TextField: {'widget': TinyMCE}
  }
# end destination


# instagram api
@admin.register(Instagram)
class InstagramToken(nested_admin.NestedModelAdmin):
  empty_value_display = '-empty-'
# end instagram api


# facility
class FacilityGalleryInline(nested_admin.NestedStackedInline):
  model = FacilityGallery
  extra = 0

class FacilityInline(nested_admin.NestedStackedInline):
  model = Facility
  extra = 0
  inlines = [FacilityGalleryInline]
  formfield_overrides = {
    models.TextField: {'widget': TinyMCE}
  }

@admin.register(Facility)
class FacilityAdmin(nested_admin.NestedModelAdmin):
  empty_value_display = '-empty-'
  inlines = [FacilityGalleryInline]
  formfield_overrides = {
    models.TextField: {'widget': TinyMCE}
  }
# end facility


# table full chapter
class HeaderFullChapterInline(nested_admin.NestedStackedInline):
  model = HeaderFullChapter
  extra = 0

class PerNightInline(nested_admin.NestedStackedInline):
  model = PerNight
  extra = 0

class BodyFullChapterInline(nested_admin.NestedStackedInline):
  model = BodyFullChapter
  inlines = [PerNightInline]
  extra = 0

@admin.register(TableFullChapter)
class TableFullChapterAdmin(nested_admin.NestedModelAdmin):
  empty_value_display = '-empty-'
  formfield_overrides = {
    models.TextField: {'widget': TinyMCE}
  }
  inlines = [
    HeaderFullChapterInline,
    BodyFullChapterInline,
  ]
  list_display = [
    'ship_capacity',
    'extra_guest',
    'relocation_fee',
    'created_at',
    'updated_at',
  ]
# end table full chapter


# charter rates include
class DataCharterIncludeInline(nested_admin.NestedStackedInline):
  model = DataCharterInclude
  formfield_overrides = {
    models.TextField: {'widget': TinyMCE},
    models.CharField: {'widget': TinyMCE},
  }
  extra = 0

class CharterRatesIncludeInline(nested_admin.NestedStackedInline):
  model = CharterRatesInclude
  inlines = [DataCharterIncludeInline]
  formfield_overrides = {
    models.TextField: {'widget': TinyMCE},
    models.CharField: {'widget': TinyMCE},
  }
  extra = 0

@admin.register(CharterRatesInclude)
class CharterRatesIncludeAdmin(nested_admin.NestedModelAdmin):
  empty_value_display = '-empty-'
  formfield_overrides = {
    models.TextField: {'widget': TinyMCE},
    models.CharField: {'widget': TinyMCE},
  }
  inlines = [DataCharterIncludeInline]
  list_display = [
    'name',
    'page',
    'created_at',
    'updated_at',
  ]
# end charter rates include
