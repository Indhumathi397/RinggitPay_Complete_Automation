@E-Mandate
  Feature: E-Mandate Regression Test cases

    @TC_001
    Scenario: TC_001_E-Mandate_Merchant site_Merchant Onboard_New Merchant
      Given Open the Browser
      Given Launch Bills2U Merchant site URL
      Then Login as a BO User in Bills2U Merchant site
      And Click on "Setup" menu
      And Click to select the "Merchant" in sub-menu
      Then Click on "+ Add Merchant"
      Then Fill all the mandatory fields in "Contact Info" section
      And Click to select the "Is Active" Check box"
      When Click on "Save" button
      And Logout the BOUser

    @TC_003
    Scenario: TC_003_E-Mandate_Merchant site_Merchant Onboard_General settings_Display details
      Given Launch Bills2U Merchant site URL
      Given Login as a BO User in Bills2U Merchant site
      And Click on "Setup" menu
      And Click to select the "Merchant" in sub-menu
      Then Select the respective merchant in merchant's list
      And Click on "General settings" button in merchant profile
      Then Check the mentioned details in "General settings" page Given in Testcase
      And Logout the BOUser
    @TC_004
    Scenario: TC_004_E-Mandate_Merchant site_Merchant Onboard_E-Mandate settings_Display details
      Given Login as a BO User in Bills2U Merchant site
      And Click on "Setup" menu
      And Click to select the "Merchant" in sub-menu
      Then Select the respective merchant in merchant's list
      Then Click on "E-Mandate settings" button in merchant profile
      And Check the mentioned details in "E-Mandate settings" page Given in Testcase
      And Logout the BOUser
    @TC_005
    Scenario: TC_005_E-Mandate_Merchant site_Merchant Onboard_E-Mandate settings_Add Single merchant app
      Given Launch Bills2U Merchant site URL
      Given Login as a BO User in Bills2U Merchant site
      And Click on "Setup" menu
      And Click to select the "Merchant" in sub-menu
      Then Select the respective merchant in merchant's list
      Then Click on "E-Mandate settings" button in merchant profile
      And Click on "+ Add New"
      Then Enter the "Display Name"
      And Enter the valid "RP APP ID"
      And Enter the valid "DD Merchant ID"
      And Enter the valid "Request Key"
      And Enter the valid "Response Key"
      Then Click on "Is Active" check Box
      Then Check the "Save" button
      And Click on "Save" button
      When Check the pop-up
      And Logout the BOUser

    @TC_006
    Scenario: TC_006_E-Mandate_Merchant site_Single merchant app_Reflection in DD Merchant ID field
      Given Login as a created merchant user in Bills2U Merchant site URL
      Then Click on "E-Mandate-Direct Debit" menu >> DDA Registration
      Then Click on "+ Create DDA" button
      And Check "DD Merchant ID" field in create customer profile (DDA) pop-up
      When Create the DDA for the respective configured single "DD Merchant ID"
      And Logout the BOUser

    @TC_007
    Scenario: TC_007_E-Mandate_Merchant site_Merchant Onboard_E-Mandate settings_Add Multiple merchant apps
      Given Launch Bills2U Merchant site URL
      Given Login as a BO User in Bills2U Merchant site
      And Click on "Setup" menu
      And Click to select the "Merchant" in sub-menu
      Then Select the respective merchant in merchant's list
      And Logout the BOUser

    @TC_008
    Scenario: TC_008_E-Mandate_Merchant site_Multilple merchant apps_Reflection in DD Merchant ID field
      Given Login as a created merchant user in Bills2U Merchant site URL
      Then Click on "E-Mandate-Direct Debit" menu >> DDA Registration
      Then Click on "+ Create DDA" button
      And Logout the BOUser

    @TC_009
    Scenario: TC_009_E-Mandate_Merchant site_Setup_BO User_Detailed view
      Given Launch Bills2U Merchant site URL
      Given Login as a BO User in Bills2U Merchant site
      Then Click on "Setup" menu >> "BO User"
      And Verify fields & Icons in Add new BO User section Given in Testcase
      And Logout the BOUser

    @TC_010
    Scenario: TC_010_E-Mandate_Merchant site_Setup_BO User_Creation_Admin User
      Given Login as a BO User in Bills2U Merchant site
      Then Click on "Setup" menu >> "BO User"
      And Click "Add new"
      Then Enter the Valid data in following fields and check for mandatory symbol(*) for fields
      And Select the "Is Active?" checkbox
      And Select the "Is Admin?" checkbox
      Then Click the "Save" icon
      And Login as a BO User in Bills2U Merchant site
      And Logout the BOUser

    @TC_011
    Scenario: TC_011_E-Mandate_Merchant site_Setup_BO User_Creation_EMandate Access_Single Merchant
      Given Launch Bills2U Merchant site URL
      Given Login as a BO User in Bills2U Merchant site
      Then Click on "Setup" menu >> "BO User"
      And Click "Add new"
      Then Enter the Valid data in following fields and check for mandatory symbol(*) for fields
      And Select the "Is Active?" checkbox
      And Select any one Merchant from the "Allowed Merchants" drop down
      Then Select "E-Mandate" checkbox
      Then Click the "Save" icon
      Then Login as BO User in Bills2U Merchant site using received credentials
      And Click the "Profile" icon
      And Logout the BOUser

    @TC_012
    Scenario: TC_012_E-Mandate_Merchant site_Setup_BO User_Creation_EMandate Access_Multiple Merchant
      Given Launch Bills2U Merchant site URL
      Given Login as a BO User in Bills2U Merchant site
      Then Click on "Setup" menu >> "BO User"
      And Click "Add new"
      Then Enter the Valid data in following fields and check for mandatory symbol(*) for fields
      And Select the "Is Active?" checkbox
      Then Select Multiple Merchant/SelectAll from the "Allowed Merchants" drop down
      Then Select "E-Mandate" checkbox
      Then Click the "Save" icon
      Then Login as BO User in Bills2U Merchant site using received credentials
      And Click the "Profile" icon
      And Logout the BOUser

    @TC_013
    Scenario: TC_013_E-Mandate_Merchant site_Setup_BO User_Creation_Invoice Access_Single Merchant
      Given Launch Bills2U Merchant site URL
      Given Login as a BO User in Bills2U Merchant site
      Then Click on "Setup" menu >> "BO User"
      And Click "Add new"
      Then Enter the Valid data in following fields and check for mandatory symbol(*) for fields
      And Select the "Is Active?" checkbox
      And Select any one Merchant from the "Allowed Merchants" drop down
      Then Select "Invoice" checkbox
      Then Click the "Save" icon
      Then Login as BO User in Bills2U Merchant site using received credentials
      And Click the "Profile" icon
      And Logout the BOUser

    @TC_014
    Scenario: TC_014_E-Mandate_Merchant site_Setup_BO User_Creation_Invoice Access_Multiple Merchant
      Given Launch Bills2U Merchant site URL
      Given Login as a BO User in Bills2U Merchant site
      Then Click on "Setup" menu >> "BO User"
      And Click "Add new"
      Then Enter the Valid data in following fields and check for mandatory symbol(*) for fields
      And Select the "Is Active?" checkbox
      And Select the "Is Admin?" checkbox
      Then Select Multiple Merchant/SelectAll from the "Allowed Merchants" drop down
      Then Select "Invoice" checkbox
      Then Click the "Save" icon
      Then Login as BO User in Bills2U Merchant site using received credentials
      And Click the "Profile" icon
      And Logout the BOUser

    @TC_015
    Scenario: TC_015_E-Mandate_Merchant site_Setup_BO User_Creation_Admin With EMandate Access_Single Merchant
      Given Launch Bills2U Merchant site URL
      Given Login as a BO User in Bills2U Merchant site
      Then Click on "Setup" menu >> "BO User"
      And Click "Add new"
      Then Enter the Valid data in following fields and check for mandatory symbol(*) for fields
      And Select the "Is Active?" checkbox
      And Select the "Is Admin?" checkbox
      Then Select any one Merchant from the "Allowed Merchants" drop down
      Then Select "Invoice" checkbox
      Then Click the "Save" icon
      Then Login as BO User in Bills2U Merchant site using received credentials
      And Click the "Profile" icon
      And Logout the BOUser

    @TC_016
    Scenario: TC_016_E-Mandate_Merchant site_Setup_BO User_Clear_New User_Data






















