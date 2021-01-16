from django.contrib import admin
from django.urls import path, include
from django.conf.urls.static import static
from django.contrib.staticfiles.urls import staticfiles_urlpatterns
from django.conf import settings
from page_navigation.urls import router as pageRouter

urlpatterns = [
    path('admin/', admin.site.urls),
    path('tinymce/', include('tinymce.urls')),
    path('_nested_admin/', include('nested_admin.urls')),
    path('api/', include([
        path('auth/', include('djoser.urls')),
        path('auth/', include('djoser.urls.jwt')),
        path('sections/', include('section.urls')),
        path('', include(pageRouter.urls))
    ]))
]

urlpatterns += staticfiles_urlpatterns()
# urlpatterns += static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
# urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
# if settings.DEBUG:
#     urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
