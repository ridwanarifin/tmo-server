from rest_framework import routers

from page_navigation.api.page.viewsets import PageViewSet
from page_navigation.api.navagation.viewsets import NavigationViewSet

router = routers.SimpleRouter()
router.register(r'pages', PageViewSet)
router.register(r'navigations', NavigationViewSet)
