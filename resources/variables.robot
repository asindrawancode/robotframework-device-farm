*** Variables ***
# Application paths
${APP_PATH_ANDROID}
${APP_PATH_IOS}

# Platform and device configurations
${PLATFORM_NAME}                Android   # Default to Android if not set
${UDID}                           # Replace with your udid name
${APP_PACKAGE}                  com.telkomsel.telkomselcm
${APP_ACTIVITY}                 com.telkomsel.mytelkomsel.view.splash.ui.SplashActivityRevamp
${AUTOMATION_NAME}              UiAutomator2

# Appium Server URL replace with your appium server
${REMOTE_URL}

# Authentication
${NUMBER_INDIHOME}              085211435164
${INVALID_NUMBER}               088888888888
${INVALID_NUMBERRANGE}          085691065401123123


# Onboarding
@{ONBOARDING_CONTENT}
            ...                 Nikmati kemudahan beraktivitas dalam satu genggaman
            ...                 Warnai hari-harimu dengan film dan series favorite
            ...                 Jadikan deretan lagu asyik sebagai soundtrack hari-harimu!
            ...                 Temui sahabat barumu yang selalu siap sedia, Veronika!
            ...                 Selangkah menuju berbagai keseruan dan hadiah melimpah

${TOTAL_ONBOARDING_SCREENS}     5
${ONBOARDING_SCREEN1_TEXT}      Nikmati kemudahan beraktivitas dalam satu genggaman
${ONBOARDING_SCREEN3_TEXT}      Jadikan deretan lagu asyik sebagai soundtrack hari-harimu!

# Guest
@{SIMS}
            ...                 Prabayar
            ...                 Halo
            ...                 e-SIM Prabayar
            ...                 e-SIM Halo