from django.contrib import admin
import nested_admin

from page_navigation.models import *
from section.admin import (
  DeckPreviewInline,
  VoyagesItemInline,
  TestimonyInline,
  TheDecksInline,
  DestinationInline,
  FacilityInline,
  CharterRatesIncludeInline
)

# Register your models here.

# page
@admin.register(Page)
class PageAdmin(nested_admin.NestedModelAdmin):
  empty_value_display = '-empty-'
  inlines = [
    DeckPreviewInline,
    VoyagesItemInline,
    TestimonyInline,
    TheDecksInline,
    DestinationInline,
    FacilityInline,
    CharterRatesIncludeInline,
  ]
  list_display = [
    'name',
    'title',
    'slug',
    'created_at',
    'updated_at',
  ]
# end page


# navigation
class MenuInline(admin.StackedInline):
  model = Menu
  extra = 0

@admin.register(Navigation)
class NavigationAdmin(admin.ModelAdmin):
  empty_value_display = '-empty-'
  inlines = [MenuInline]
# end navigation
