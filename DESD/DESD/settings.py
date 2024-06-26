"""
Django settings for DESD project.

Generated by 'django-admin startproject' using Django 5.0.1.

For more information on this file, see
https://docs.djangoproject.com/en/5.0/topics/settings/

For the full list of settings and their values, see
https://docs.djangoproject.com/en/5.0/ref/settings/
"""

from pathlib import Path
import os 

# Build paths inside the project like this: BASE_DIR / 'subdir'.
BASE_DIR = Path(__file__).resolve().parent.parent


# Quick-start development settings - unsuitable for production
# See https://docs.djangoproject.com/en/5.0/howto/deployment/checklist/

# SECURITY WARNING: keep the secret key used in production secret!
SECRET_KEY = 'django-insecure-l)dfrb%q6*ij$tu$2p^*r28#xwnro1-tnj1u@5h+wlt_k1v-fm'

# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = True

ALLOWED_HOSTS = []

# Application definition

INSTALLED_APPS = [
    'database_models',
    'django.contrib.auth',
    'django.contrib.messages',
    'django.contrib.sessions',
    'login_page',
    'sign_up',
    'patients_appointments',
    'account_settings',
    'admin_payments',
    'admin_reports',
    'admin_staffrates',
    'admin_appointments',
    'patients_dashboard',
    'patients_prescription',
    'doctor_nurse_dashboard',
    'doctor_nurse_prescriptions',
    'doctor_nurse_appointments',
    'admins_dashboard',
    'static',
    'custom_filters',
    'django.contrib.staticfiles',
    'django.contrib.contenttypes',
    'staff_signup',
    'patient_signup',
]

MIDDLEWARE = [
    # 'django.middleware.security.SecurityMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    # 'django.middleware.clickjacking.XFrameOptionsMiddleware',
    # 'django.contrib.sessions.backends.signed_cookies',
    'DESD.middleware.SessionCheckMiddleware',
    # 'django_session_timeout.middleware.SessionTimeoutMiddleware',
]

ROOT_URLCONF = 'DESD.urls'

TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'DIRS': [
                 './patients_dashboard/templates/',
                 './patients_prescription/templates/',
                 './account_settings/templates/',
                 './patients/templates/',
                 './appointments/templates',
                 './sign_up/templates',
                 './doctor_nurse_dashboard/templates/',
                 './staff_signup/templates/',
                 './patient_signup/templates',
                #  './admin_appointments/templates/',
                 os.path.join(BASE_DIR, 'templates'),
                 os.path.join(BASE_DIR, 'static')],
        'APP_DIRS': True,
        'OPTIONS': {
            'context_processors': [
                'django.template.context_processors.debug',
                'django.template.context_processors.request',
                # 'django.contrib.auth.context_processors.auth',
                'django.contrib.messages.context_processors.messages',
                # 'django_auto_logout.context_processors.auto_logout_client',
            ],
        },
    },
]

WSGI_APPLICATION = 'DESD.wsgi.application'

# Database
# https://docs.djangoproject.com/en/5.0/ref/settings/#databases

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'SMARTCARE_DB',
        'USER': 'root',
        'PASSWORD': 'Administrator1#',
        'HOST': '62.80.229.10',
        'PORT': '32770',
        'OPTIONS': {
            'init_command': "SET sql_mode='STRICT_TRANS_TABLES'",
        },
    }
}

# Password validation
# https://docs.djangoproject.com/en/5.0/ref/settings/#auth-password-validators

AUTH_PASSWORD_VALIDATORS = [
    {
        'NAME': 'django.contrib.auth.password_validation.UserAttributeSimilarityValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.MinimumLengthValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.CommonPasswordValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.NumericPasswordValidator',
    },
]


# Internationalization
# https://docs.djangoproject.com/en/5.0/topics/i18n/

LANGUAGE_CODE = 'en-us'

TIME_ZONE = 'UTC'

USE_I18N = True

USE_TZ = True

# Static files (CSS, JavaScript, Images)
# https://docs.djangoproject.com/en/5.0/howto/static-files/

STATIC_URL = '/static/'

STATICFILES_DIRS = [
    os.path.join(BASE_DIR, 'static'),
]

# Default primary key field type
# https://docs.djangoproject.com/en/5.0/ref/settings/#default-auto-field

DEFAULT_AUTO_FIELD = 'django.db.models.BigAutoField'

# Session timeout handling
SESSION_EXEMPT_PATHS = [
    '',
    'login/',
    'signup_page/',

]

SESSION_COOKIE_AGE = 900
SESSION_SAVE_EVERY_REQUEST = True


# SESSION_EXPIRE_AFTER_LAST_ACTIVITY = True
# LOGIN_URL = 'login/'

# AUTO_LOGOUT = {
#     'IDLE_TIME': 5,
#     'REDIRECT_TO_LOGIN_IMMEDIATELY': True,
#     'MESSAGE': 'The session was expired. Please login again to continue',
              
#     }
