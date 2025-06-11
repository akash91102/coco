{
    "layout": [
        {
            "refKey": "agreement",
            "header": {
                "title": "Agreement",
                "showSubTitle": true
            },
            "type": "form",
            "data": [
                {
                    "column": [
                        { "title": "Profile ID", "bind": "compositeProfile.legalAgreement.profileId", "type": "input", "readonly": true, "markSource": false },
                        { "title": "Agreement No", "bind": "compositeProfile.legalAgreement.profileId", "type": "input", "required": true, "markSource": false},
                        { "title": "Agreement Type", "bind": "compositeProfile.legalAgreement.attributes.agreementType", "type": "dropdown", "options": ["ISDA", "FEMA", "PESA", "CLEARING", "GIMRA", "OTCIC"]},
                        { "title": "Updated By", "bind": "compositeProfile.legalAgreement.updatedBy", "type": "input"}
                    ]
                },
                {
                    "column": [
                        { "title": "SPN", "bind": "compositeProfile.legalAgreement.attributes.spn", "type": "input"},
                        { "title": "Status", "bind": "compositeProfile.legalAgreement.status", "type": "input"},
                        { "title": "Version", "bind": "compositeProfile.legalAgreement.version", "type": "input"},
                        { "title": "Updated At", "bind": "compositeProfile.legalAgreement.updatedAt", "type": "input"},
                        { "title": "ECD", "bind": "compositeProfile.legalAgreement.attributes.ecd", "type": "input"}
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
                        { "title": "Tier", "bind": "compositeProfile.legalAgreement.attributes.tier", "type": "input"},
                        { "title": "Tier Version", "bind": "compositeProfile.legalAgreement.attributes.tierVersion", "type": "input"},
                        { "title": "Tier Effective Date", "bind": "compositeProfile.legalAgreement.attributes.tierEffectiveDate", "type": "input"},
                        { "title": "House Multiplier", "bind": "compositeProfile.legalAgreement.attributes.houseMultiplier", "type": "input"}
                    ]
                },
                {
                    "column": [
                        { 
                            "title": "Liquidity", 
                            "bind": "compositeProfile.legalAgreement.attributes.addOnLiquidity", 
                            "type": "checkbox"
                        },
                        { 
                            "title": "Tenor", 
                            "bind": "compositeProfile.legalAgreement.attributes.addOnTenor", 
                            "type": "checkbox"
                        },
                        { 
                            "title": "FX", 
                            "bind": "compositeProfile.legalAgreement.attributes.addOnFX", 
                            "type": "checkbox"
                        }
                    ]
                }
            ]
        },
        {
            "refKey": "masterAgreements",
            "header": {
                "title": "In Scope Master Agreements"
            },
            "type": "datatable",
            "bind": "compositeProfile.legalAgreement.attributes.masterAgreements",
            "columnDefs": [
                {
                    "field": "agreementId",
                    "headerName": "Agreement ID",
                    "checkboxSelection": true
                },
                {
                    "field": "agreementType", 
                    "headerName": "Agreement Type"
                },
                {
                    "field": "legalEntityName",
                    "headerName": "Legal Entity Name"
                },
                {
                    "field": "status",
                    "headerName": "Status"
                },
                {
                    "field": "updatedBy",
                    "headerName": "Updated By"
                }
            ]
        }
    ],
    "create": {
        "newCalculation": {
            "data": [
                {
                    "column": [
                        {
                            "title": "Calculation Method",
                            "bind": "calculationMethod",
                            "type": "dropdown",
                            "options": ["SIMM", "SCHEDULE"]
                        },
                        {
                            "title": "Calculation Product",
                            "bind": "calculationProduct",
                            "type": "input"
                        }
                    ]
                }
            ]
        }
    }
}
