{
  "layout": [
    {
      "refKey": "profileInformation",
      "header": {
        "title": "Profile Fields",
        "showSubTitle": false
      },
      "type": "form",
      "data": [
        {
          "column": [
            {
              "title": "Profile ID",
              "bind": "profileInformation.profileId",
              "type": "input",
              "readonly": true,
              "required": true,
              "markSource": false
            }
          ]
        },
        {
          "column": [
            {
              "title": "Agreement No",
              "bind": "profileInformation.agreementNo",
              "type": "input",
              "readonly": true,
              "required": true,
              "markSource": false
            },
            {
              "title": "Agreement Type",
              "bind": "profileInformation.agreementType",
              "type": "input",
              "readonly": true,
              "markSource": false
            },
            {
              "title": "Status",
              "bind": "profileInformation.status",
              "type": "input",
              "readonly": true,
              "markSource": false
            }
          ]
        },
        {
          "column": [
            {
              "title": "Updated By",
              "bind": "profileInformation.updatedBy",
              "type": "input",
              "readonly": true,
              "markSource": false
            },
            {
              "title": "Updated At",
              "bind": "profileInformation.updatedAt",
              "type": "input",
              "readonly": true,
              "markSource": false
            }
          ]
        }
      ]
    },
    {
      "refKey": "productSetup",
      "header": {
        "title": "Product Setup",
        "showHighlight": true,
        "highlightText": "All ticks in scope",
        "highlightColor": "#9966ff"
      },
      "type": "form",
      "displayIf": "IS_PRODUCT_SETUP_ACTIVE",
      "data": [
        {
          "column": [
            {
              "title": "Product Setup Status",
              "bind": "productSetup.isActive",
              "type": "dropdown",
              "required": true,
              "optionPreset": "YES_NO",
              "onChange": "HANDLE_PRODUCT_SETUP_UPDATE"
            },
            {
              "title": "Highlight Color",
              "bind": "productSetup.highlightColor",
              "type": "input",
              "required": false,
              "displayIf": "IS_PRODUCT_SETUP_ACTIVE"
            }
          ]
        }
      ]
    },
    {
      "refKey": "crossProductMarginCalc",
      "header": {
        "title": "Cross Product Margin Calc"
      },
      "type": "form",
      "data": [
        {
          "column": [
            {
              "title": "Tier",
              "bind": "crossProductMarginCalc.tier",
              "type": "input",
              "inputType": "number",
              "required": true,
              "min": 1,
              "max": 10,
              "onBlur": "HANDLE_TIER_UPDATE"
            },
            {
              "title": "Tier Version",
              "bind": "crossProductMarginCalc.tierVersion",
              "type": "input",
              "required": true,
              "onBlur": "HANDLE_TIER_VERSION_UPDATE"
            },
            {
              "title": "Tier Effective Date",
              "bind": "crossProductMarginCalc.tierEffectiveDate",
              "type": "datepicker",
              "required": true,
              "onChange": "HANDLE_TIER_EFFECTIVE_DATE_UPDATE"
            }
          ]
        },
        {
          "column": [
            {
              "title": "Add On",
              "type": "checkboxGroup",
              "options": [
                {
                  "label": "Liquidity",
                  "bind": "crossProductMarginCalc.addOns.liquidity",
                  "type": "checkbox",
                  "onChange": "HANDLE_ADD_ON_TOGGLE"
                },
                {
                  "label": "Tenor",
                  "bind": "crossProductMarginCalc.addOns.tenor",
                  "type": "checkbox",
                  "onChange": "HANDLE_ADD_ON_TOGGLE"
                },
                {
                  "label": "FX Pair",
                  "bind": "crossProductMarginCalc.addOns.fxPair",
                  "type": "checkbox",
                  "onChange": "HANDLE_ADD_ON_TOGGLE"
                }
              ]
            }
          ]
        },
        {
          "column": [
            {
              "title": "House Multiplier",
              "bind": "crossProductMarginCalc.houseMultiplier",
              "type": "input",
              "inputType": "number",
              "required": true,
              "min": 1,
              "max": 100,
              "onBlur": "HANDLE_HOUSE_MULTIPLIER_UPDATE"
            }
          ]
        }
      ]
    },
    {
      "refKey": "inScopeMasterAgreements",
      "markSource": true,
      "bind": "inScopeMasterAgreements",
      "createKey": "newMasterAgreement",
      "header": {
        "title": "In Scope Master Agreements",
        "buttons": [
          {
            "title": "Create New",
            "events": {
              "onClick": "CREATE_NEW_MASTER_AGREEMENT"
            }
          }
        ]
      },
      "type": "datatable",
      "columnDefs": [
        {
          "field": "agreementNumber",
          "headerName": "Agreement #",
          "sortable": true,
          "filter": true
        },
        {
          "field": "agreementType",
          "headerName": "Agreement Type",
          "sortable": true,
          "filter": true
        },
        {
          "field": "legalEntityTypeA",
          "headerName": "Legal Entity Type A",
          "sortable": true,
          "filter": true
        },
        {
          "field": "legalEntityA",
          "headerName": "Legal Entity A",
          "sortable": true,
          "filter": true
        },
        {
          "headerName": "Actions",
          "actions": [
            {
              "name": "Edit",
              "applyClass": "masterAgreementEditBtn"
            },
            {
              "name": "Delete",
              "applyClass": "masterAgreementRemoveBtn"
            }
          ]
        }
      ],
      "tableFooter": {
        "text": "-- PLACE HOLDER DEMO ONLY --",
        "style": {
          "textAlign": "center",
          "fontStyle": "italic",
          "color": "#666"
        }
      }
    },
    {
      "refKey": "tabNavigation",
      "header": {
        "title": "Navigation Tabs"
      },
      "type": "tabs",
      "data": [
        {
          "id": "profile-information",
          "label": "Profile Information",
          "isActive": true,
          "onClick": "HANDLE_TAB_CHANGE"
        },
        {
          "id": "margin-entity",
          "label": "Margin Entity",
          "isActive": false,
          "onClick": "HANDLE_TAB_CHANGE"
        },
        {
          "id": "product",
          "label": "Product",
          "isActive": false,
          "onClick": "HANDLE_TAB_CHANGE"
        },
        {
          "id": "equipment",
          "label": "Equipment",
          "isActive": false,
          "onClick": "HANDLE_TAB_CHANGE"
        }
      ]
    }
  ],
  "create": {
    "newMasterAgreement": {
      "data": [
        {
          "column": [
            {
              "title": "Agreement ID",
              "bind": "id",
              "type": "input",
              "required": true,
              "max": 50
            },
            {
              "title": "Agreement Number",
              "bind": "agreementNumber",
              "type": "input",
              "required": true,
              "max": 100
            },
            {
              "title": "Agreement Type",
              "bind": "agreementType",
              "type": "dropdown",
              "required": true,
              "options": [
                "IRA",
                "ISDA", 
                "CLEARING",
                "PSA",
                "MSFTA"
              ]
            },
            {
              "title": "Legal Entity Type A",
              "bind": "legalEntityTypeA",
              "type": "input",
              "required": true,
              "inputType": "number"
            },
            {
              "title": "Legal Entity A",
              "bind": "legalEntityA",
              "type": "input",
              "required": true,
              "max": 200
            }
          ]
        }
      ]
    }
  },
  "validation": {
    "rules": [
      {
        "field": "profileInformation.profileId",
        "required": true,
        "message": "Profile ID is required"
      },
      {
        "field": "profileInformation.agreementNo",
        "required": true,
        "message": "Agreement Number is required"
      },
      {
        "field": "crossProductMarginCalc.tier",
        "required": true,
        "min": 1,
        "max": 10,
        "message": "Tier must be between 1 and 10"
      },
      {
        "field": "crossProductMarginCalc.tierVersion",
        "required": true,
        "pattern": "^\\d{4}-\\d{1,2}-\\d{1,2}$",
        "message": "Tier Version must be in YYYY-M-D format"
      },
      {
        "field": "crossProductMarginCalc.houseMultiplier",
        "required": true,
        "min": 1,
        "max": 100,
        "message": "House Multiplier must be between 1 and 100"
      }
    ]
  },
  "conditionalRendering": {
    "IS_PRODUCT_SETUP_ACTIVE": {
      "condition": "productSetup.isActive",
      "operator": "equals",
      "value": true
    },
    "IS_PROFILE_EDITABLE": {
      "condition": "profileInformation.status",
      "operator": "in",
      "value": ["New", "Live"]
    },
    "HAS_MASTER_AGREEMENTS": {
      "condition": "inScopeMasterAgreements.length",
      "operator": "greaterThan",
      "value": 0
    }
  },
  "optionPresets": {
    "YES_NO": [
      { "value": true, "label": "Yes" },
      { "value": false, "label": "No" }
    ],
    "AGREEMENT_TYPES": [
      { "value": "IRA", "label": "IRA" },
      { "value": "ISDA", "label": "ISDA" },
      { "value": "CLEARING", "label": "CLEARING" },
      { "value": "PSA", "label": "PSA" },
      { "value": "MSFTA", "label": "MSFTA" }
    ],
    "STATUS_OPTIONS": [
      { "value": "New", "label": "New" },
      { "value": "Live", "label": "Live" },
      { "value": "Inactive", "label": "Inactive" },
      { "value": "Terminated", "label": "Terminated" }
    ]
  },
  "styling": {
    "productSetupHighlight": {
      "backgroundColor": "#9966ff",
      "color": "white",
      "padding": "8px 12px",
      "borderRadius": "4px",
      "fontWeight": "bold"
    },
    "tableFooter": {
      "textAlign": "center",
      "fontStyle": "italic",
      "color": "#666",
      "padding": "10px",
      "borderTop": "1px solid #ddd"
    }
  },
  "permissions": {
    "readonly": {
      "fields": [
        "profileInformation.profileId",
        "profileInformation.agreementNo",
        "profileInformation.agreementType",
        "profileInformation.status",
        "profileInformation.updatedBy",
        "profileInformation.updatedAt"
      ]
    },
    "conditionalReadonly": {
      "rules": [
        {
          "condition": "profileInformation.status",
          "operator": "equals",
          "value": "Terminated",
          "fields": ["*"]
        }
      ]
    }
  },
  "eventHandlers": {
    "HANDLE_TAB_CHANGE": "handleTabChange",
    "HANDLE_PRODUCT_SETUP_UPDATE": "updateProductSetup",
    "HANDLE_TIER_UPDATE": "updateTierConfiguration",
    "HANDLE_TIER_VERSION_UPDATE": "updateTierVersion",
    "HANDLE_TIER_EFFECTIVE_DATE_UPDATE": "updateTierEffectiveDate",
    "HANDLE_ADD_ON_TOGGLE": "updateAddOnConfiguration",
    "HANDLE_HOUSE_MULTIPLIER_UPDATE": "updateHouseMultiplier",
    "CREATE_NEW_MASTER_AGREEMENT": "createNewMasterAgreement",
    "IS_PRODUCT_SETUP_ACTIVE": "isProductSetupActive",
    "IS_PROFILE_EDITABLE": "isProfileEditable"
  }
}
