import os

# Application paths
APP_PATH_ANDROID = '/Users/agussriindrawansigit/IdeaProjects/my-telkomsel-automatic-testing/apps/MyTelkomsel 8.6.2 fixing.apk'
APP_PATH_IOS = '/path/to/your/flutter/app.app'

# Platform and device configurations
PLATFORM_NAME = os.getenv('PLATFORM_NAME', 'Android')  # Default to Android if not set
UDID = ''  # Replace with your udid name
APP_PACKAGE = 'com.telkomsel.telkomselcm'
APP_ACTIVITY = 'com.telkomsel.mytelkomsel.view.splash.ui.SplashActivityRevamp'
AUTOMATION_NAME = 'UiAutomator2'

# Appium Server URL replace with your appium server
REMOTE_URL =''
