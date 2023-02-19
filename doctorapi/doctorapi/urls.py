from django.contrib import admin
from django.urls import path, include

from rest_framework import routers
from api.views import *
from rest_framework_simplejwt.views import TokenVerifyView, TokenRefreshView, TokenObtainPairView

router = routers.SimpleRouter()
router.register(r'users', UserViewSet)
router.register(r'staff', StaffViewSet)
router.register(r'orders', OrderViewSet)

urlpatterns = [
    path('admin/', admin.site.urls),
    path('api/', include(router.urls)),
    path('api/token/', TokenObtainPairView.as_view(), name='token_obtain_pair'),
    path('api/token/refresh/', TokenRefreshView.as_view(), name='token_refresh'),
    path('api/token/verify/', TokenVerifyView.as_view(), name='token_verify'),
]
