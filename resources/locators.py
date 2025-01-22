LOCATORS = {
    "OnboardingPage": {
        "Android": {
            "onboardingTitle1": '//android.widget.TextView[@resource-id="com.telkomsel.telkomselcm:id/title"]',
            "buttonNext": '//android.widget.LinearLayout[@resource-id="com.telkomsel.telkomselcm:id/next_btn"]',
            "buttonSkip": '//android.widget.Button[@resource-id="com.telkomsel.telkomselcm:id/skip_btn"]',
        },
        "iOS": {
        }
    },
    "LoginPage": {
        "Android": {
            "loginLabel": '//android.widget.TextView[ends-with(@resource-id, ":id/title")]',
            "editTextPhoneNumber": '//android.widget.EditText[ends-with(@resource-id, ":id/etLoginForm")]',
            "buttonLoginWithTselNumber": '(//android.widget.LinearLayout[ends-with(@resource-id, ":id/container")])[1]',
            "buttonLoginWithOrbit": '(//android.widget.LinearLayout[ends-with(@resource-id, ":id/container")])[2]',
            "buttonLoginWithIndihome": '(//android.widget.LinearLayout[ends-with(@resource-id, ":id/container")])[3]',
            "buttonLogin": '//android.widget.Button[ends-with(@resource-id, ":id/btSecondTypePrimary")]',
            "buttonBack": '//android.widget.ImageView[@resource-id="com.telkomsel.telkomselcm:id/btBack"]',
            "lblVerification" : '//android.widget.TextView[@resource-id="com.telkomsel.telkomselcm:id/tvMsisdnText"]',

        },
        "iOS": {
        }
    },
    "HomePage": {
        "Android": {
            "greetingLabel": '//android.widget.TextView[ends-with(@resource-id, ":id/tv_account_info")]',
            "allowSendNotification" : '//android.widget.TextView[@text="Allow MyTelkomsel to send you notifications?"]',
            "btnAllowSendNotification": '//android.widget.Button[@text="Allow"]',
            "notificationIcon": "(//android.widget.ImageView[@resource-id='com.telkomsel.telkomselcm:id/iv_component_animation'])[2]",
            "popUpBanner": '(//android.widget.RelativeLayout[ends-with(@resource-id, ":id/com.telkomsel.telkomselcm:id/buttonContainer")])/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View[2]/android.view.View',
            "topUpMenuSwitcher": '(//android.view.ViewGroup[ends-with(@resource-id, ":id/clSwitcher")])',
            "homeSpecialngebut": '//android.widget.TextView[contains(@text, "Internetan ngebut dimanapun")]',
            "homeSearch": '//android.widget.TextView[ends-with(@resource-id, ":id/tv_search")]',
            "homeMenuMain": '//android.widget.FrameLayout[ends-with(@content-desc, "Beranda")]',
            "homeMenuBuyPacket": '//android.widget.FrameLayout[ends-with(@content-desc, "Beli Paket")]',
            "homeMenuMall": '//android.widget.ImageView[ends-with(@resource-id, ":id/ic_quick_menu")]',
            "homeMenuReward": '//android.widget.FrameLayout[ends-with(@content-desc, "Reward")]',
            "homeMenuLifestyle": '//android.widget.FrameLayout[ends-with(@content-desc, "Lifestyle")]',
            "btnHomeLogin": '//android.widget.Button[ends-with(@resource-id, ":id/btn_login")]',
            "btnDissmissAppUpdate": '//android.widget.ImageView[ends-with(@content-desc, "Dismiss update dialog")]',
            "homeProfilePicture": '//android.widget.ImageView[ends-with(@resource-id, ":id/picture")]',
            "btnBottomSheetNewUpdateTour": '//android.widget.Button[ends-with(@resource-id, ":id/btSecondTypePrimary")]',
            "whatNew": '//android.widget.TextView[contains(@text, "Rupiah")]'

        },
        "iOS": {
        }
    },

    # Add other pages and their locators similarly
}
