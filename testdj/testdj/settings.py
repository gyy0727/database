"""
Django settings for testdj project.

Generated by 'django-admin startproject' using Django 4.2.2.

For more information on this file, see
https://docs.djangoproject.com/en/4.2/topics/settings/

For the full list of settings and their values, see
https://docs.djangoproject.com/en/4.2/ref/settings/
"""
import os
from pathlib import Path

# Build paths inside the project like this: BASE_DIR / 'subdir'.
BASE_DIR = Path(__file__).resolve().parent.parent

# Quick-start development settings - unsuitable for production
# See https://docs.djangoproject.com/en/4.2/howto/deployment/checklist/

# SECURITY WARNING: keep the secret key used in production secret!
SECRET_KEY = "django-insecure-+l-0khp((4zd3j$%%z#m%sjarn11smhw-#$e&2q3s1yg(6$o=8"

# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = True

ALLOWED_HOSTS = []

# Application definition

INSTALLED_APPS = [
    "django.contrib.admin",
    "django.contrib.auth",
    "django.contrib.contenttypes",
    "django.contrib.sessions",
    "django.contrib.messages",
    "django.contrib.staticfiles",
    "corsheaders",
    "rest_framework",

]

MIDDLEWARE = [
    "django.middleware.security.SecurityMiddleware",
    "django.contrib.sessions.middleware.SessionMiddleware",
    "django.middleware.common.CommonMiddleware",
    #"django.middleware.csrf.CsrfViewMiddleware",
    "django.contrib.auth.middleware.AuthenticationMiddleware",
    "django.contrib.messages.middleware.MessageMiddleware",
    "django.middleware.clickjacking.XFrameOptionsMiddleware",
    "corsheaders.middleware.CorsMiddleware",
]

ROOT_URLCONF = "testdj.urls"

TEMPLATES  =  [
     {
         'BACKEND' :  'django.template.backends.django.DjangoTemplates' ,
         'DIRS' : [os.path.join(BASE_DIR,  'template' )],
         'APP_DIRS' :  True ,
         'OPTIONS' : {
             'context_processors' : [
                 'django.template.context_processors.debug' ,
                 'django.template.context_processors.request' ,
                 'django.contrib.auth.context_processors.auth' ,
                 'django.contrib.messages.context_processors.messages' ,
             ],
         },
     },
]


WSGI_APPLICATION = "testdj.wsgi.application"

# Database
# https://docs.djangoproject.com/en/4.2/ref/settings/#databases

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'HOST': '127.0.0.1',		# 要连接的数据库ip
        'PORT': '3306',				# 数据库连接端口，一般默认为3306
        'NAME': 'volunteerAdmissionSystem',
        'USER': 'root',				# 用户名
        'PASSWORD': '12345678',				# 用户密码
        'OPTIONS': {
            'init_command': "SET sql_mode='STRICT_TRANS_TABLES'",
            }
    }
}


# Password validation
# https://docs.djangoproject.com/en/4.2/ref/settings/#auth-password-validators

AUTH_PASSWORD_VALIDATORS = [
    {
        "NAME": "django.contrib.auth.password_validation.UserAttributeSimilarityValidator",
    },
    {
        "NAME": "django.contrib.auth.password_validation.MinimumLengthValidator",
    },
    {
        "NAME": "django.contrib.auth.password_validation.CommonPasswordValidator",
    },
    {
        "NAME": "django.contrib.auth.password_validation.NumericPasswordValidator",
    },
]

# Internationalization
# https://docs.djangoproject.com/en/4.2/topics/i18n/

LANGUAGE_CODE = "en-us"

TIME_ZONE = "UTC"

USE_I18N = True

USE_TZ = True

# Static files (CSS, JavaScript, Images)
# https://docs.djangoproject.com/en/4.2/howto/static-files/

# STATIC_URL = "testdj/static/"

# Default primary key field type
# https://docs.djangoproject.com/en/4.2/ref/settings/#default-auto-field

DEFAULT_AUTO_FIELD = "django.db.models.BigAutoField"
CORS_ORIGN_ALLOW_ALL = True  # 允许所有源访问
CORS_ORIGIN_REGEX_WHITELIST = [  # 配置ip白名单
    'localhost:80'
]
ALLOWED_HOSTS = ['*']
CORS_ALLOW_CREDENTIALS = True  # 配置允许cookie
CORS_ALLOW_METHODS = ("*")  # 配置允许的请求方式
CORS_ALLOW_HEADERS = ("*")  # 配置允许的请求头
# STATICFILES_DIRS = (os.path.join(BASE_DIR, 'static'),)

DEFAULT_AUTO_FIELD = 'django.db.models.AutoField'
STATIC_URL = '/static/'
HERE = os.path.dirname(os.path.abspath(__file__))
HERE = os.path.join(HERE, '../')
STATICFILES_DIRS = (
    # Put strings here, like "/home/html/static" or "C:/www/django/static".
    # Always use forward slashes, even on Windows.
    # Don't forget to use absolute paths, not relative paths.
    os.path.join(HERE, 'static/'),
)