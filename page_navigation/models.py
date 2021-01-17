import uuid
from django.db import models
from django.conf import settings
from django.utils.text import slugify

# Create your models here.

# page
class Page(models.Model):
  id                  = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
  name                = models.CharField(max_length=225)
  title               = models.CharField(max_length=225, blank=True)
  hero                = models.OneToOneField('section.Hero', verbose_name='Section Hero', on_delete=models.SET_NULL, null=True, blank=True)
  intro               = models.ForeignKey('section.Intro', verbose_name='Section Intro', on_delete=models.SET_NULL, null=True, blank=True)
  the_vessel          = models.OneToOneField('section.TheVessel', verbose_name='Section The Vessel', on_delete=models.SET_NULL, null=True, blank=True)
  voyages             = models.OneToOneField('section.Voyages', verbose_name='Section Voyages', on_delete=models.SET_NULL, null=True, blank=True)
  dining              = models.OneToOneField('section.Dining', verbose_name='Section Dining', on_delete=models.SET_NULL, null=True, blank=True)
  occasions           = models.OneToOneField('section.Occasions', verbose_name='Section Occasions', on_delete=models.SET_NULL, null=True, blank=True)
  deck_technical      = models.OneToOneField('section.DeckTechnical', verbose_name='Section Deck Technical', on_delete=models.SET_NULL, null=True, blank=True)
  table_spesification = models.OneToOneField('section.TableSpesification', verbose_name='Section Table Spesification', on_delete=models.SET_NULL, null=True, blank=True)
  suites_and_staterooms = models.OneToOneField('section.SuitesAndStateroom', verbose_name='Section Suites And Staterooms', on_delete=models.SET_NULL, null=True, blank=True)
  admiral_suite       = models.OneToOneField('section.AdmiralSuite', verbose_name='Section Admiral Suite', on_delete=models.SET_NULL, null=True, blank=True)
  commodore_suite     = models.OneToOneField('section.CommodoreSuite', verbose_name='Section Commodore Suite', on_delete=models.SET_NULL, null=True, blank=True)
  deluxe_stateroom    = models.OneToOneField('section.DeluxeStateroom', verbose_name='Section Deluxe Stateroom', on_delete=models.SET_NULL, null=True, blank=True)
  teams               = models.OneToOneField('section.Team', verbose_name='Section Team', on_delete=models.SET_NULL, null=True, blank=True)
  sustainability      = models.OneToOneField('section.Sustainability', verbose_name='Section Sustainability', on_delete=models.SET_NULL, null=True, blank=True)
  instagram           = models.OneToOneField('section.Instagram', verbose_name='Section Instagram', on_delete=models.SET_NULL, null=True, blank=True)
  itinerary           = models.OneToOneField('section.Itinerary', verbose_name='Section Itinerary', on_delete=models.SET_NULL, null=True, blank=True)
  table_full_chapter  = models.OneToOneField('section.TableFullChapter', verbose_name='Section Table Full Chapter', on_delete=models.SET_NULL, null=True, blank=True)
  slug                = models.SlugField(blank=True, editable=False)
  created_at          = models.DateTimeField(auto_now_add=True)
  updated_at          = models.DateTimeField(auto_now=True)

  def __str__(self):
    return '%s' % (self.name)

  def save(self, *args, **kwargs):
    self.slug = slugify('%s' % (self.name.lower()))
    super().save(*args, **kwargs)
# end page


# navigation
class Menu(models.Model):
  id            = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
  title         = models.CharField(max_length=100)
  to            = models.CharField(max_length=100, help_text='link btn navigation')
  navigation    = models.ForeignKey('page_navigation.Navigation', related_name='children', on_delete=models.CASCADE)

  class Meta:
    verbose_name = 'Menu'
    verbose_name_plural = 'Menu'

  def __str__(self):
    return self.title


class Navigation(models.Model):
  id            = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
  title         = models.CharField(max_length=100)
  to            = models.CharField(max_length=100, help_text='link btn navigation')
  created_at    = models.DateTimeField(auto_now_add=True)
  updated_at    = models.DateTimeField(auto_now=True)

  def __str__(self):
    return self.title
# end navigation

