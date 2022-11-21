# You can override those settings on the command line

PLATFORM ?= device
DEBUG ?= 0

HOME_DISPLAY_EXTERNALS ?= 1
EPSILON_VERSION ?= 15.5.0
OMEGA_VERSION ?= 2.0.3
# OMEGA_USERNAME ?= N/A
OMEGA_STATE ?= public
# EPSILON_APPS ?= calculation rpn graph code statistics probability solver atomic sequence regression settings external
EPSILON_APPS ?= calculation rpn graph settings
# EPSILON_APPS ?= calculation rpn graph code statistics probability atomic sequence regression settings external
SUBMODULES_APPS = atomic rpn
EPSILON_I18N ?= en fr nl pt it de es hu
EPSILON_COUNTRIES ?= WW CA DE ES FR GB IT NL PT US
EPSILON_GETOPT ?= 0
ESCHER_LOG_EVENTS_BINARY ?= 0
THEME_NAME ?= omega_dark
THEME_REPO ?= local
