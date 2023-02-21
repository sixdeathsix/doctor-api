from django.contrib import admin
from django.urls import path, include
from django.conf import settings
from django.conf.urls.static import static

from rest_framework import routers
from api.views import *
from rest_framework_simplejwt.views import TokenVerifyView, TokenRefreshView, TokenObtainPairView

router = routers.SimpleRouter()
router.register(r'users', UserViewSet)
router.register(r'staff', StaffViewSet)
router.register(r'orders', OrderViewSet)
router.register(r'createorder', CreateOrderViewSet)
router.register(r'createuser', CreateUserViewSet)

urlpatterns = [
    path('admin/', admin.site.urls),
    path('api/', include(router.urls)),
    path('api/token/', MyTokenObtainPairView.as_view(), name='token_obtain_pair'),
    path('api/token/refresh/', TokenRefreshView.as_view(), name='token_refresh'),
    path('api/token/verify/', TokenVerifyView.as_view(), name='token_verify'),
] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
