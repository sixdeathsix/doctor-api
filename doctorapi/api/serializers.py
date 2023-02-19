from rest_framework import serializers
from rest_framework_simplejwt.serializers import TokenObtainPairSerializer
from rest_framework_simplejwt.views import TokenObtainPairView

from .models import *


class StaffSerializer(serializers.ModelSerializer):
    user = serializers.StringRelatedField()

    class Meta:
        model = Staff
        fields = '__all__'


class OrderSerializer(serializers.ModelSerializer):
    staff = StaffSerializer(read_only=True)

    class Meta:
        model = Order
        fields = '__all__'


class UserSerializer(serializers.ModelSerializer):
    groups = serializers.StringRelatedField(many=True)
    orders = OrderSerializer(read_only=True)

    class Meta:

        model = User
        fields = ['id', 'first_name', 'last_name', 'patronymic', 'username', 'email', 'photo', 'groups', 'orders']

