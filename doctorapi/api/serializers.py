from django.contrib.auth.hashers import make_password
from rest_framework import serializers
from rest_framework_simplejwt.serializers import TokenObtainPairSerializer
from rest_framework_simplejwt.views import TokenObtainPairView

from .models import *


class StaffUserSerializer(serializers.ModelSerializer):
    groups = serializers.StringRelatedField(many=True, default='8')

    class Meta:
        model = User
        fields = ['first_name', 'last_name', 'patronymic', 'photo', 'groups']


class StaffSerializer(serializers.ModelSerializer):
    user = StaffUserSerializer(read_only=True)

    class Meta:
        model = Staff
        fields = '__all__'


class OrderSerializer(serializers.ModelSerializer):
    staff = StaffSerializer(read_only=True)

    class Meta:
        model = Order
        fields = '__all__'


class UserSerializer(serializers.ModelSerializer):
    groups = serializers.StringRelatedField(many=True, default='8')
    orders = OrderSerializer(many=True)

    class Meta:
        model = User
        fields = ['id', 'first_name', 'last_name', 'patronymic', 'username', 'orders', 'photo', 'password', 'groups']


class CreateOrderSerializer(serializers.ModelSerializer):

    class Meta:
        model = Order
        fields = '__all__'


class CreateUserSerializer(serializers.ModelSerializer):
    groups = serializers.StringRelatedField(many=True, default='8')

    class Meta:
        model = User
        fields = ['id', 'first_name', 'last_name', 'patronymic', 'email', 'username', 'password', 'groups']

    def create(self, validated_data):
        validated_data['password'] = make_password(validated_data['password'])
        return super(CreateUserSerializer, self).create(validated_data)


class MyTokenObtainPairSerializer(TokenObtainPairSerializer):
    def validate(self, attrs):
        data = super().validate(attrs)
        data['user_id'] = self.user.pk
        data['photo'] = str(self.user.photo)
        return data

