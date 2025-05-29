Feature: smoke test sauce lab apps

  Scenario: Buy 2 pcs the Sauce Lab Back Packs
    Given User open the app
    And User wait 3 seconds
    Then Element "//android.widget.ImageView[@content-desc='Sauce Lab Back Packs']" is displayed
    Then Verify element "//android.widget.TextView[@resource-id='com.saucelabs.mydemoapp.android:id/titleTV' and @text='Sauce Lab Back Packs']" is equal to "Sauce Lab Back Packs"
    Then Element "//android.widget.TextView[@resource-id='com.saucelabs.mydemoapp.android:id/priceTV' and @text='$ 29.99']" is displayed
    Then Element "(//android.widget.ImageView[@resource-id='com.saucelabs.mydemoapp.android:id/start1IV'])[1]" is displayed
    Then Element "(//android.widget.ImageView[@resource-id='com.saucelabs.mydemoapp.android:id/start2IV'])[1]" is displayed
    Then Element "(//android.widget.ImageView[@resource-id='com.saucelabs.mydemoapp.android:id/start3IV'])[1]" is displayed
    Then Element "(//android.widget.ImageView[@resource-id='com.saucelabs.mydemoapp.android:id/start4IV'])[1]" is displayed
    Then Element "(//android.widget.ImageView[@resource-id='com.saucelabs.mydemoapp.android:id/start5IV'])[1]" is displayed
    And User clicks "//android.widget.ImageView[@content-desc='Sauce Lab Back Packs']"
    And User wait 3 seconds
    Then Verify element "//android.widget.TextView[@resource-id='com.saucelabs.mydemoapp.android:id/productTV']" is equal to "Sauce Lab Back Packs"
    Then Element "//android.widget.ImageView[@content-desc='Displays selected product']" is displayed
    Then Verify element "//android.widget.TextView[@resource-id='com.saucelabs.mydemoapp.android:id/priceTV']" is equal to "$ 29.99"
    Then Element "(//android.widget.ImageView[@resource-id='com.saucelabs.mydemoapp.android:id/start1IV'])" is displayed
    Then Element "(//android.widget.ImageView[@resource-id='com.saucelabs.mydemoapp.android:id/start2IV'])" is displayed
    Then Element "(//android.widget.ImageView[@resource-id='com.saucelabs.mydemoapp.android:id/start3IV'])" is displayed
    Then Element "(//android.widget.ImageView[@resource-id='com.saucelabs.mydemoapp.android:id/start4IV'])" is displayed
    Then Element "(//android.widget.ImageView[@resource-id='com.saucelabs.mydemoapp.android:id/start5IV'])" is displayed
    And User swipe up 1 times
    And User wait 2 seconds
    Then Element "//android.widget.ImageView[@content-desc='Decrease item quantity']" is displayed
    Then Element "//android.widget.TextView[@resource-id='com.saucelabs.mydemoapp.android:id/noTV']" is displayed
    Then Element "//android.widget.ImageView[@content-desc='Increase item quantity']" is displayed
    Then Verify element "//android.widget.Button[@content-desc='Tap to add product to cart']" is equal to "Add to cart"
    Then Verify element "//android.widget.TextView[@resource-id='com.saucelabs.mydemoapp.android:id/productHeightLightsTV']" is equal to "Product Highlights"
    Then Verify element "//android.widget.TextView[@resource-id='com.saucelabs.mydemoapp.android:id/descTV']" is equal to "carry.allTheThings() with the sleek, streamlined Sly Pack that melds uncompromising style with unequaled laptop and tablet protection."
    And User clicks "//android.widget.ImageView[@content-desc='Increase item quantity']"
    And User wait 1 seconds
    Then Verify element "//android.widget.TextView[@resource-id='com.saucelabs.mydemoapp.android:id/noTV']" is equal to "2"
    Then Element "//android.widget.ImageView[@content-desc='Indicates when color is selected']" is displayed
    And User clicks "//android.widget.Button[@content-desc='Tap to add product to cart']"
    And User wait 1 seconds
    And User clicks "//android.widget.RelativeLayout[@content-desc='View cart']"
    And User wait 3 seconds
    Then Verify element "//android.widget.TextView[@resource-id='com.saucelabs.mydemoapp.android:id/titleTV']" is equal to "Sauce Lab Back Packs"
    Then Element "//android.widget.ImageView[@content-desc='Displays selected product']" is displayed
    Then Verify element "//android.widget.TextView[@resource-id='com.saucelabs.mydemoapp.android:id/priceTV']" is equal to "$ 29.99"
    Then Element "(//android.widget.ImageView[@resource-id='com.saucelabs.mydemoapp.android:id/start1IV'])" is displayed
    Then Element "(//android.widget.ImageView[@resource-id='com.saucelabs.mydemoapp.android:id/start2IV'])" is displayed
    Then Element "(//android.widget.ImageView[@resource-id='com.saucelabs.mydemoapp.android:id/start3IV'])" is displayed
    Then Element "(//android.widget.ImageView[@resource-id='com.saucelabs.mydemoapp.android:id/start4IV'])" is displayed
    Then Element "(//android.widget.ImageView[@resource-id='com.saucelabs.mydemoapp.android:id/start5IV'])" is displayed
    Then Element "//android.widget.ImageView[@content-desc='Decrease item quantity']" is displayed
    Then Verify element "//android.widget.TextView[@resource-id='com.saucelabs.mydemoapp.android:id/noTV']" is equal to "2"
    Then Element "//android.widget.ImageView[@content-desc='Increase item quantity']" is displayed
    Then Verify element "//android.widget.TextView[@resource-id='com.saucelabs.mydemoapp.android:id/colorTitleTV']" is equal to "Color:"
    Then Element "//android.widget.ImageView[@content-desc='Displays color of selected product']" is displayed
    Then Element "//android.widget.ImageView[@content-desc='Twitter']" is displayed
    Then Element "//android.widget.ImageView[@content-desc='Facebook']" is displayed
    Then Element "//android.widget.ImageView[@content-desc='LinkedIn']" is displayed
    Then Element "//android.widget.TextView[@text='© 2021 Sauce Labs All Rights Reserved. Terms of Service | Privacy Policy']" is displayed
    Then Element "//android.widget.TextView[@text='Total:']" is displayed
    Then Verify element "//android.widget.TextView[@resource-id='com.saucelabs.mydemoapp.android:id/itemsTV']" is equal to "2 Items"
    Then Verify element "//android.widget.TextView[@resource-id='com.saucelabs.mydemoapp.android:id/totalPriceTV']" is equal to "$ 59.98"
    Then Verify element "//android.widget.Button[@content-desc='Confirms products for checkout']" is equal to "Proceed To Checkout"
    And User clicks "//android.widget.Button[@content-desc='Confirms products for checkout']"
    And User wait 3 seconds
    And User fills "bod@example.com" into "//android.widget.EditText[@resource-id='com.saucelabs.mydemoapp.android:id/nameET']"
    And User fills "10203040" into "//android.widget.EditText[@resource-id='com.saucelabs.mydemoapp.android:id/passwordET']"
    And User clicks "//android.widget.Button[@content-desc='Tap to login with given credentials']"
    And User wait 3 seconds
    And User fills "momo" into "//android.widget.EditText[@resource-id='com.saucelabs.mydemoapp.android:id/fullNameET']"
    And User fills "line 123" into "//android.widget.EditText[@resource-id='com.saucelabs.mydemoapp.android:id/address1ET']"
    And User fills "line 456" into "//android.widget.EditText[@resource-id='com.saucelabs.mydemoapp.android:id/address2ET']"
    And User fills "Tokyo" into "//android.widget.EditText[@resource-id='com.saucelabs.mydemoapp.android:id/cityET']"
    And User fills "Chiba" into "//android.widget.EditText[@resource-id='com.saucelabs.mydemoapp.android:id/stateET']"
    And User fills "126367" into "//android.widget.EditText[@resource-id='com.saucelabs.mydemoapp.android:id/zipET']"
    And User fills "Japan" into "//android.widget.EditText[@resource-id='com.saucelabs.mydemoapp.android:id/countryET']"
    And User clicks "//android.widget.Button[@content-desc='Saves user info for checkout']"
    And User wait 3 seconds
    And User fills "momo" into "//android.widget.EditText[@resource-id='com.saucelabs.mydemoapp.android:id/nameET']"
    And User fills "4310648903547145" into "//android.widget.EditText[@resource-id='com.saucelabs.mydemoapp.android:id/cardNumberET']"
    And User fills "0930" into "//android.widget.EditText[@resource-id='com.saucelabs.mydemoapp.android:id/expirationDateET']"
    And User fills "143" into "//android.widget.EditText[@resource-id='com.saucelabs.mydemoapp.android:id/securityCodeET']"
    And User clicks "//android.widget.Button[@content-desc='Saves payment info and launches screen to review checkout data']"
    And User wait 3 seconds
    And User clicks "//android.widget.Button[@content-desc='Completes the process of checkout']"
    And User wait 3 seconds
    Then Verify element "//android.widget.TextView[@resource-id='com.saucelabs.mydemoapp.android:id/completeTV']" is equal to "Checkout Complete"





    
