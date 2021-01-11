from django.db import models
import uuid

# Create your models here.

# hero
class Hero(models.Model):
  id            = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
  heading       = models.CharField(max_length=200, blank=True)
  image         = models.ImageField()
  mobile_image  = models.ImageField(null=True, blank=True)
  created_at    = models.DateTimeField(auto_now_add=True)
  updated_at    = models.DateTimeField(auto_now=True)

  class Meta:
    verbose_name = 'Section Hero'
    verbose_name_plural = 'Heroes'

  def __str__(self):
    return '%s - %s' % (self.id, self.heading)


class Video(models.Model):
  id            = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
  src           = models.FileField()
  type          = models.CharField(max_length=20, help_text='example: video/mp4')
  hero          = models.ForeignKey('section.Hero', related_name='videos', on_delete=models.SET_NULL, null=True, blank=True)

  def __str__(self):
    return '%s - %s' % (self.id, self.src)
# end hero


# intro
class Intro(models.Model):
  id            = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
  heading       = models.CharField(max_length=225, blank=True)
  description   = models.TextField(max_length=800, blank=True)
  image         = models.ImageField(null=True, blank=True)
  youtube_id    = models.CharField(max_length=100, blank=True)
  created_at    = models.DateTimeField(auto_now_add=True)
  updated_at    = models.DateTimeField(auto_now=True)

  class Meta:
    verbose_name = 'Section Intro'
    verbose_name_plural = 'Intro'

  def __str__(self):
    return self.heading
# end intro


# the vessel
class TheVessel(models.Model):
  caption       = models.CharField(max_length=225, default='The Vessel')
  heading       = models.CharField(max_length=225)
  description   = models.TextField(max_length=800, blank=True)
  image         = models.ImageField()
  to            = models.CharField(max_length=225, default='/the-vessel', help_text='button link')
  created_at    = models.DateTimeField(auto_now_add=True)
  updated_at    = models.DateTimeField(auto_now=True)

  class Meta:
    verbose_name = 'Section The Vessel'
    verbose_name_plural = 'The Vessel'

  def __str__(self):
    return '%s - %s' % (self.caption, self.heading)
# end the vessel


# voyages
class Voyages(models.Model):
  heading       = models.CharField(max_length=225, default='Voyages')
  description   = models.TextField(max_length=800, blank=True)
  created_at    = models.DateTimeField(auto_now_add=True)
  updated_at    = models.DateTimeField(auto_now=True)

  class Meta:
    verbose_name = 'Section Voyages'
    verbose_name_plural = 'Voyages'

  def __str__(self):
    return self.heading


class Tabs(models.Model):
  name          = models.CharField(max_length=100)
  heading       = models.CharField(max_length=225)
  description   = models.TextField(max_length=800)
  image         = models.ImageField()
  to            = models.CharField(max_length=225, default='/voyages', help_text='button link')
  voyages       = models.ForeignKey('section.Voyages', related_name='tabs_data', on_delete=models.CASCADE)

  class Meta:
    verbose_name = 'Tab'
    verbose_name_plural = 'Tabs'

  def __str__(self):
    return '%s - %s' % (self.name, self.heading)
# end voyages


# dining
class Dining(models.Model):
  caption         = models.CharField(max_length=225, default='Dining')
  heading         = models.CharField(max_length=225)
  description     = models.TextField(max_length=800)
  image           = models.ImageField()
  to              = models.CharField(max_length=225, default='/contact-us', help_text='button link')
  created_at    = models.DateTimeField(auto_now_add=True)
  updated_at    = models.DateTimeField(auto_now=True)

  class Meta:
    verbose_name = 'Section Dining'
    verbose_name_plural = 'Dining'

  def __str__(self):
    return '%s - %s' % (self.caption, self.heading)
# end dining


# occasions
class Occasions(models.Model):
  caption         = models.CharField(max_length=225, default='Occasions')
  heading         = models.CharField(max_length=225)
  description     = models.TextField(max_length=800)
  image           = models.ImageField()
  to              = models.CharField(max_length=225, default='/contact-us', help_text='button link')
  created_at      = models.DateTimeField(auto_now_add=True)
  updated_at      = models.DateTimeField(auto_now=True)

  class Meta:
    verbose_name = 'Section Occasions'
    verbose_name_plural = 'Occasions'

  def __str__(self):
    return '%s - %s' % (self.caption, self.heading)
# end Occasions


# deck technical
class DeckTechnical(models.Model):
  heading         = models.CharField(max_length=225)
  description     = models.TextField(max_length=800)
  image           = models.ImageField()
  created_at      = models.DateTimeField(auto_now_add=True)
  updated_at      = models.DateTimeField(auto_now=True)

  class Meta:
    verbose_name = 'Section Deck Technical'
    verbose_name_plural = 'Deck Technical'

  def __str__(self):
    return self.heading
# end deck technical


# deck previews
class DeckPreview(models.Model):
  name            = models.CharField(max_length=225)
  description     = models.TextField(max_length=800)
  image           = models.FileField()
  mobile_image    = models.FileField()
  page            = models.ForeignKey('page_navigation.Page', related_name='deck_previews', on_delete=models.SET_NULL, null=True, blank=True)
  created_at      = models.DateTimeField(auto_now_add=True)
  updated_at      = models.DateTimeField(auto_now=True)

  class Meta:
    verbose_name = 'Section Deck Preview'
    verbose_name_plural = 'Deck Previews'

  def __str__(self):
    return self.name
# end deck previews


# table spesification
class HeaderSpesification(models.Model):
  text    = models.CharField(max_length=225, blank=True)
  value   = models.CharField(max_length=225)
  align   = models.CharField(
    max_length=6,
    choices=[
      ('start', 'Start'),
      ('center', 'Center'),
      ('end', 'End')
    ],
    default='start'
  )
  table_spesification = models.ForeignKey('section.TableSpesification', related_name='headers', on_delete=models.CASCADE)

  def __str__(self):
    return self.text


class BodySpesification(models.Model):
  name    = models.CharField(max_length=225)
  value   = models.TextField(max_length=500)
  table_spesification = models.ForeignKey('section.TableSpesification', related_name='data', on_delete=models.CASCADE)

  def __str__(self):
    return self.name


class TableSpesification(models.Model):
  created_at      = models.DateTimeField(auto_now_add=True)
  updated_at      = models.DateTimeField(auto_now=True)

  class Meta:
    verbose_name = 'Section Table Spesification'
    verbose_name_plural = 'Table Spesifications'

  def __str__(self):
    return '%s' % self.id
# end table spesification


# suites and staterooms
class SuitesAndStateroom(models.Model):
  caption       = models.CharField(max_length=255)
  heading       = models.CharField(max_length=225)
  to            = models.CharField(max_length=225, default='/suites-and-staterooms')

  class Meta:
    verbose_name = 'Section Suites And Staterooms'
    verbose_name_plural = 'Suites And Staterooms'

  def __str__(self):
    return '%s - %s' % (self.caption, self.heading)


class MenuSuitesroom(models.Model):
  suites        = models.ForeignKey('section.SuitesAndStateroom', related_name='data', on_delete=models.CASCADE)
  admiral       = models.OneToOneField('section.AdmiralSuite', on_delete=models.CASCADE)
  commodore     = models.OneToOneField('section.CommodoreSuite', on_delete=models.CASCADE)
  deluxe        = models.OneToOneField('section.DeluxeStateroom', on_delete=models.CASCADE)


# admiral suites
class GalleryAdmiralSuite(models.Model):
  image         = models.ImageField()
  admiral_suite = models.ForeignKey('section.AdmiralSuite', related_name='gallery', on_delete=models.CASCADE)

  class Meta:
    verbose_name = 'Gallery'
    verbose_name_plural = 'Gallery'


class AdmiralSuite(models.Model):
  icon          = models.ImageField()
  caption       = models.CharField(max_length=225, default='admiral suite')
  heading       = models.CharField(max_length=225)
  sqm           = models.PositiveSmallIntegerField(verbose_name='sqm')
  description   = models.TextField(max_length=800)
  created_at      = models.DateTimeField(auto_now_add=True)
  updated_at      = models.DateTimeField(auto_now=True)

  class Meta:
    verbose_name = 'Section Admiral Suite'
    verbose_name_plural = 'Admiral Suites'

  def __str__(self):
    return '%s - %s' % (self.caption, self.heading)
# end admiral suites


# commodore suite
class GalleryCommodoreSuite(models.Model):
  image         = models.ImageField()
  commodore_suite = models.ForeignKey('section.CommodoreSuite', related_name='gallery', on_delete=models.CASCADE)

  class Meta:
    verbose_name = 'Gallery'
    verbose_name_plural = 'Gallery'


class CommodoreSuite(models.Model):
  icon          = models.ImageField()
  caption       = models.CharField(max_length=225, default='commodore suite')
  heading       = models.CharField(max_length=225)
  sqm           = models.PositiveSmallIntegerField(verbose_name='sqm')
  description   = models.TextField(max_length=800)
  created_at      = models.DateTimeField(auto_now_add=True)
  updated_at      = models.DateTimeField(auto_now=True)

  class Meta:
    verbose_name = 'Section Commodore Suite'
    verbose_name_plural = 'Commodore Suites'

  def __str__(self):
    return '%s - %s' % (self.caption, self.heading)
# end commodore suite


# deluxe stateroom
class GalleryDeluxeStateroom(models.Model):
  image         = models.ImageField()
  deluxe_stateroom = models.ForeignKey('section.DeluxeStateroom', related_name='gallery', on_delete=models.CASCADE)

  class Meta:
    verbose_name = 'Gallery'
    verbose_name_plural = 'Gallery'


class IconDeluxeStateroom(models.Model):
  icon              = models.ImageField()
  deluxe_stateroom  = models.ForeignKey('section.DeluxeStateroom', related_name='icons', on_delete=models.CASCADE)

  class Meta:
    verbose_name = 'Icon'
    verbose_name_plural = 'Icons'


class DeluxeStateroom(models.Model):
  caption       = models.CharField(max_length=225, default='deluxe staterooms')
  heading       = models.CharField(max_length=225)
  sqm           = models.PositiveSmallIntegerField(verbose_name='sqm')
  description   = models.TextField(max_length=800)
  created_at    = models.DateTimeField(auto_now_add=True)
  updated_at    = models.DateTimeField(auto_now=True)

  class Meta:
    verbose_name = 'Section Deluxe Stateroom'
    verbose_name_plural = 'Deluxe Staterooms'

  def __str__(self):
    return '%s - %s' % (self.caption, self.heading)
# end deluxe stateroom


# the decks
class TheDecks(models.Model):
  id            = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
  caption       = models.CharField(max_length=100, default='The Decks')
  heading       = models.CharField(max_length=225)
  description   = models.TextField(max_length=800)
  image         = models.ImageField()
  to            = models.CharField(max_length=225, help_text='button link', default='/the-vessel/specification')
  created_at    = models.DateTimeField(auto_now_add=True)
  updated_at    = models.DateTimeField(auto_now=True)
  page          = models.ForeignKey('page_navigation.Page', related_name='the_decks', on_delete=models.CASCADE)

  class Meta:
    verbose_name = 'Section The Decks'
    verbose_name_plural = 'The Decks'

  def __str__(self):
    return '%s - %s' % (self.id, self.caption)


# teams
class Personil(models.Model):
  id            = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
  title         = models.CharField(max_length=225)
  name          = models.CharField(max_length=225)
  image         = models.ImageField()
  team          = models.ForeignKey('section.Team', related_name='data', on_delete=models.SET_NULL, null=True, blank=True)

  class Meta:
    verbose_name = 'Section Personil'
    verbose_name_plural = 'Personil'

  def __str__(self):
    return '%s - %s' % (self.id, self.name)


class Team(models.Model):
  id            = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
  caption       = models.CharField(max_length=100)
  heading       = models.CharField(max_length=200)
  created_at    = models.DateTimeField(auto_now_add=True)
  updated_at    = models.DateTimeField(auto_now=True)

  class Meta:
    verbose_name = 'Section Team'
    verbose_name_plural = 'Teams'

  def __str__(self):
    return '%s - %s' % (self.id, self.caption)
# end teams


# sustainability
class Sustainability(models.Model):
  id            = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
  caption       = models.CharField(max_length=100)
  heading       = models.CharField(max_length=225)
  description   = models.TextField(max_length=800)
  image         = models.ImageField()
  to            = models.CharField(max_length=100, help_text='button link', default='/contact-us')
  created_at    = models.DateTimeField(auto_now_add=True)
  updated_at    = models.DateTimeField(auto_now=True)

  class Meta:
    verbose_name = 'Section Sustainability'
    verbose_name_plural = 'Sustainability'

  def __str__(self):
    return '%s - %s' % (self.id, self.caption)
# end sustainability


# instagram
class Instagram(models.Model):
  heading       = models.CharField(max_length=225)
  access_token  = models.CharField(max_length=225)

  class Meta:
    verbose_name = 'Section Instagram'
    verbose_name_plural = 'Instagram Token'

  def __str__(self):
    return self.heading
# end instagram


# voyages item
class VoyagesItem(models.Model):
  image         = models.ImageField()
  heading       = models.CharField(max_length=225)
  description   = models.TextField(max_length=800)
  to            = models.CharField(max_length=225, help_text='button link')
  page          = models.ForeignKey('page_navigation.Page', related_name='voyages_items', on_delete=models.CASCADE)

  class Meta:
    verbose_name = 'Section Voyages Item'
    verbose_name_plural = 'Voyages Items'

  def __str__(self):
    return self.heading
# end voyages item


# testimony
class InstagramTestimony(models.Model):
  username      = models.CharField(max_length=225)
  link          = models.URLField(max_length=225, blank=True)
  updated_at    = models.DateTimeField(auto_now=True)

  class Meta:
    verbose_name = 'Instagram'
    verbose_name_plural = 'Instagram'

  def __str__(self):
    return self.username

  def save(self, *args, **kwargs):
    if self.link is None and self.username is not None:
      self.link = 'https://www.instagram.com/' + self.username
    super().save(*args, **kwargs)


class Testimony(models.Model):
  name          = models.CharField(max_length=225)
  image         = models.ImageField()
  comment       = models.TextField(max_length=800)
  instagram     = models.OneToOneField('section.InstagramTestimony', related_name='testimony', on_delete=models.CASCADE)
  created_at    = models.DateTimeField(auto_now_add=True)
  updated_at    = models.DateTimeField(auto_now=True)
  page          = models.ForeignKey('page_navigation.Page', related_name='testimonies', on_delete=models.CASCADE)

  class Meta:
    verbose_name = 'Section Testimony'
    verbose_name_plural = 'Testimonies'

  def __str__(self):
    return self.name
# end testimony


# itinerary
class Itinerary(models.Model):
  caption     = models.CharField(max_length=225, default='itineraries')
  image       = models.ImageField()
  heading     = models.CharField(max_length=225)
  description = models.TextField(max_length=800)
  to          = models.CharField(max_length=225, default='/rates-and-schedule', help_text='button link')

  class Meta:
    verbose_name = 'Section Itinerary'
    verbose_name_plural = 'Itineraries'

  def __str__(self):
    return '%s - %s' % (self.caption, self.heading)
# end itinerary


# destination
class DestinationGallery(models.Model):
  image             = models.ImageField()
  mobile_image      = models.ImageField(null=True, blank=True)
  destination       = models.ForeignKey('section.Destination', related_name='gallery', on_delete=models.SET_NULL, null=True, blank=True)

  class Meta:
    verbose_name = 'Destination Gallery'
    verbose_name_plural = 'Destination Galleries'

  def __str__(self):
    return '%s - %s' % (self.id, self.image)


class Destination(models.Model):
  id            = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
  heading       = models.CharField(max_length=225, blank=True)
  description   = models.TextField(max_length=800, blank=True)
  created_at    = models.DateTimeField(auto_now_add=True)
  updated_at    = models.DateTimeField(auto_now=True)
  page          = models.ForeignKey('page_navigation.Page', related_name='destinations', on_delete=models.SET_NULL, null=True, blank=True)

  class Meta:
    verbose_name = 'Section Destination'
    verbose_name_plural = 'Destination'
    ordering = ['created_at']

  def __str__(self):
    return '%s' % (self.id)
# end destination


# facility
class FacilityGallery(models.Model):
  image       = models.ImageField()
  facility  = models.ForeignKey('section.Facility', related_name='gallery', on_delete=models.SET_NULL, null=True, blank=True)

  class Meta:
    verbose_name = 'Facility Gallery'
    verbose_name_plural = 'Facility Galleries'

  def __str__(self):
    return '%s - %s' % (self.id, self.image)


class Facility(models.Model):
  id            = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
  caption       = models.CharField(max_length=225)
  heading       = models.CharField(max_length=225)
  description   = models.TextField(max_length=800)
  reverse       = models.BooleanField(default=False)
  created_at    = models.DateTimeField(auto_now_add=True)
  updated_at    = models.DateTimeField(auto_now=True)
  page          = models.ForeignKey('page_navigation.Page', related_name='facilities', on_delete=models.SET_NULL, null=True, blank=True)

  class Meta:
    verbose_name = 'Section Facility'
    verbose_name_plural = 'Facilities'
    ordering = ['created_at']

  def __str__(self):
    return '%s - %s' % (self.caption, self.heading)
# end watersport


# table full chapter
class HeaderFullChapter(models.Model):
  text    = models.CharField(max_length=225, blank=True)
  value   = models.CharField(max_length=225)
  align   = models.CharField(
    max_length=6,
    choices=[
      ('start', 'Start'),
      ('center', 'Center'),
      ('end', 'End')
    ],
    default='start'
  )
  width     = models.PositiveSmallIntegerField(null=True, blank=True)
  table_full_chapter = models.ForeignKey('section.TableFullChapter', related_name='headers', on_delete=models.CASCADE)

  def __str__(self):
    return self.text


class PerNight(models.Model):
  year      = models.PositiveSmallIntegerField(null=True, blank=True)
  price     = models.DecimalField(max_digits=19, decimal_places=0, null=True, blank=True)
  body      = models.ForeignKey('section.BodyFullChapter', related_name='rates_per_night', on_delete=models.SET_NULL, null=True, blank=True)


class BodyFullChapter(models.Model):
  headline        = models.CharField(max_length=225)
  sailing_area    = models.CharField(max_length=225)
  minimum_nights  = models.PositiveSmallIntegerField()
  table_full_chapter = models.ForeignKey('section.TableFullChapter', related_name='data', on_delete=models.CASCADE)

  def __str__(self):
    return self.headline


class TableFullChapter(models.Model):
  ship_capacity   = models.CharField(max_length=225, blank=True)
  extra_guest     = models.TextField(max_length=800, blank=True)
  relocation_fee  = models.CharField(max_length=225, blank=True)
  created_at      = models.DateTimeField(auto_now_add=True)
  updated_at      = models.DateTimeField(auto_now=True)

  class Meta:
    verbose_name = 'Section Table Full Chapter'
    verbose_name_plural = 'Table Full Chapters'

  def __str__(self):
    return '%s' % self.id
# end table full chapter


# charter rates include
class DataCharterInclude(models.Model):
  text          = models.TextField(max_length=800)
  charter_rate  = models.ForeignKey('section.CharterRatesInclude', related_name='data', on_delete=models.SET_NULL, null=True, blank=True)

  class Meta:
    verbose_name = 'Data Charter Include'
    verbose_name_plural = 'Data Charter Includes'

  def __str__(self):
    return '%s' % (self.text)


class CharterRatesInclude(models.Model):
  id            = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
  name          = models.CharField(max_length=225, blank=True)
  created_at    = models.DateTimeField(auto_now_add=True)
  updated_at    = models.DateTimeField(auto_now=True)
  page          = models.ForeignKey('page_navigation.Page', related_name='charter_rate_includes', on_delete=models.SET_NULL, null=True, blank=True)

  class Meta:
    verbose_name = 'Section Charter Rates Include'
    verbose_name_plural = 'Charter Rates Include'
    ordering = ['created_at']

  def __str__(self):
    return '%s - %s' % (self.id, self.name)
# end charter rates include
