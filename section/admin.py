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
  list_display = [
    'safe_heading',
    'image',
    'mobile_image',
    'created_at',
    'updated_at',
  ]
# end hero


# intro
@admin.register(Intro)
class IntroAdmin(nested_admin.NestedModelAdmin):
  empty_value_display = '-empty-'
  formfield_overrides = {
    models.TextField: {'widget': TinyMCE},
    models.CharField: {'widget': TinyMCE},
  }
  list_display = [
    'safe_heading',
    'short_description',
    'image',
    'youtube_id',
    'created_at',
    'updated_at',
  ]
# end intro


# vessel
@admin.register(TheVessel)
class TheVesselAdmin(nested_admin.NestedModelAdmin):
  empty_value_display = '-empty-'
  formfield_overrides = {
    models.TextField: {'widget': TinyMCE},
    models.CharField: {'widget': TinyMCE},
  }
  list_display = [
    'heading',
    'short_description',
    'created_at',
    'updated_at',
  ]
# end vessel


# voyages
class TabsInline(nested_admin.NestedStackedInline):
  model = Tabs
  extra = 0
  formfield_overrides = {
    models.TextField: {'widget': TinyMCE},
  }

@admin.register(Voyages)
class VoyagesAdmin(nested_admin.NestedModelAdmin):
  empty_value_display = '-empty-'
  inlines = [TabsInline]
  formfield_overrides = {
    models.TextField: {'widget': TinyMCE},
  }
  list_display = [
    'heading',
    'short_description',
    'created_at',
    'updated_at',
  ]
# end voyages


# dining
@admin.register(Dining)
class DiningAdmin(nested_admin.NestedModelAdmin):
  empty_value_display = '-empty-'
  formfield_overrides = {
    models.TextField: {'widget': TinyMCE},
  }
  list_display = [
    'caption',
    'heading',
    'short_description',
    'image',
    'created_at',
    'updated_at',
  ]
# end dining


# occasions
@admin.register(Occasions)
class OccasionsAdmin(nested_admin.NestedModelAdmin):
  empty_value_display = '-empty-'
  formfield_overrides = {
    models.TextField: {'widget': TinyMCE},
  }
  list_display = [
    'caption',
    'heading',
    'short_description',
    'image',
    'created_at',
    'updated_at',
  ]
# end occasions


# deck technical
@admin.register(DeckTechnical)
class DeckTechnicalAdmin(nested_admin.NestedModelAdmin):
  empty_value_display = '-empty-'
  formfield_overrides = {
    models.TextField: {'widget': TinyMCE},
  }
  list_display = [
    'heading',
    'short_description',
    'image',
    'created_at',
    'updated_at',
  ]
# end deck technical


# deck preview
class DeckPreviewInline(nested_admin.NestedStackedInline):
  model = DeckPreview
  extra = 0
  formfield_overrides = {
    models.TextField: {'widget': TinyMCE},
  }

@admin.register(DeckPreview)
class DeckPreviewAdmin(nested_admin.NestedModelAdmin):
  empty_value_display = '-empty-'
  formfield_overrides = {
    models.TextField: {'widget': TinyMCE},
  }
  list_display = [
    'name',
    'short_description',
    'image',
    'mobile_image',
    'created_at',
    'updated_at',
  ]
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
  list_display = [
    'headers',
    'body',
    'created_at',
    'updated_at',
  ]
  def headers(self, obj):
    return obj.headers.count()
  def body(self, obj):
    return obj.data.count()
# end table spesification


# suites and staterooms
class MenuSuitesroomInline(nested_admin.NestedStackedInline):
  model = MenuSuitesroom
  extra = 0

@admin.register(SuitesAndStateroom)
class SuitesAndStateroomAdmin(nested_admin.NestedModelAdmin):
  empty_value_display = '-empty-'
  inlines = [MenuSuitesroomInline]
  list_display = [
    'caption',
    'heading',
  ]
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
  }
  list_display = [
    'icon',
    'caption',
    'heading',
    'sqm',
    'short_description',
    'gallery',
    'created_at',
    'updated_at',
  ]
  list_display_links = ['caption']
  def gallery(self, obj):
    return '%s image' % obj.gallery.count()
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
  }
  list_display = [
    'icon',
    'caption',
    'heading',
    'sqm',
    'short_description',
    'gallery',
    'created_at',
    'updated_at',
  ]
  list_display_links = ['caption']
  def gallery(self, obj):
    return '%s image' % obj.gallery.count()
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
  }
  list_display = [
    'icons',
    'caption',
    'Heading',
    'sqm',
    'short_description',
    'gallery',
    'created_at',
    'updated_at',
  ]
  list_display_links = ['caption']
  def Heading(self, obj):
    return mark_safe(obj.heading)
  def icons(self, obj):
    return '%s icon' % obj.icons.count()
  def gallery(self, obj):
    return '%s image' % obj.gallery.count()
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
  }
  list_display = [
    'caption',
    'heading',
    'short_description',
    'image',
    'created_at',
    'updated_at',
  ]
# end the decks


# team
class PersonilInline(nested_admin.NestedStackedInline):
  model = Personil
  extra = 0

@admin.register(Team)
class TeamAdmin(nested_admin.NestedModelAdmin):
  empty_value_display = '-empty-'
  inlines = [PersonilInline]
  list_display = [
    'caption',
    'heading',
    'personil',
    'created_at',
    'updated_at',
  ]
  def personil(self, obj):
    return '%s data' % obj.data.count()
# end team


# sustainability
@admin.register(Sustainability)
class SustainabilityAdmin(nested_admin.NestedModelAdmin):
  empty_value_display = '-empty-'
  formfield_overrides = {
    models.TextField: {'widget': TinyMCE},
  }
  list_display = [
    'caption',
    'heading',
    'short_description',
    'image',
    'created_at',
    'updated_at',
  ]
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
  }
  list_display = [
    'Heading',
    'short_description',
    'image',
  ]
  def Heading(self, obj):
    return mark_safe('%s' % (obj.heading))
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
  list_display = [
    'username',
    'link',
  ]

@admin.register(Testimony)
class TestimonyAdmin(nested_admin.NestedModelAdmin):
  empty_value_display = '-empty-'
  formfield_overrides = {
    models.TextField: {'widget': TinyMCE},
  }
  list_display = [
    'name',
    'image',
    'short_comment',
    'created_at',
    'updated_at',
    'instagram',
  ]
# end testimony


# itinerary
@admin.register(Itinerary)
class ItineraryAdmin(nested_admin.NestedModelAdmin):
  empty_value_display = '-empty-'
  formfield_overrides = {
    models.TextField: {'widget': TinyMCE},
  }
  list_display = [
    'caption',
    'heading',
    'short_description',
    'image'
  ]
# end itinerary


# destination
class DestinationGalleryInline(nested_admin.NestedStackedInline):
  model = DestinationGallery
  extra = 0

class DestinationInline(nested_admin.NestedStackedInline):
  model = Destination
  extra = 0
  inlines = [DestinationGalleryInline]
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
  list_display = [
    'Id',
    'heading',
    'short_description',
    'gallery',
    'page',
    'created_at',
    'updated_at',
  ]
  def Id(self, obj):
    return truncatechars(obj.id, 8)
  def gallery(self, obj):
    return '%s image' % obj.gallery.count()
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
  list_display = [
    'caption',
    'heading',
    'short_description',
    'reverse',
    'gallery',
    'page',
    'created_at',
    'updated_at',
  ]
  def gallery(self, obj):
    return '%s image' % obj.gallery.count()
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
    'headers',
    'body',
    'ship_capacity',
    'extra_guest',
    'relocation_fee',
    'created_at',
    'updated_at',
  ]
  def headers(self, obj):
    return '%s data' % obj.headers.count()
  def body(self, obj):
    return '%s data' % obj.data.count()
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
    'Name',
    'includes',
    'page',
    'created_at',
    'updated_at',
  ]
  def Name(self, obj):
    return mark_safe('%s' % (obj.name))
  def includes(self, obj):
    return '%s data' % obj.data.count()
# end charter rates include
