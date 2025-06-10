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
                        { "title": "Agreement No", "bind": "compositeProfile.legalAgreement.agreementNo", "type": "input", "readonly": true, "required": true, "markSource": false},
                        { "title": "GPM", "bind": "compositeProfile.legalAgreement.attributes.gpm", "type": "input", "required": true},
                        { "title": "Status", "bind": "compositeProfile.legalAgreement.status", "type": "input", "readonly": true},
                        { "title": "Updated By", "bind": "compositeProfile.legalAgreement.updatedBy", "type": "input", "readonly": true},
                        { "title": "Version", "bind": "compositeProfile.legalAgreement.version", "type": "input", "readonly": true},
                        { "title": "Updated At", "bind": "compositeProfile.legalAgreement.updatedAt", "type": "input", "readonly": true},
                        { "title": "Agreement Type", "bind": "compositeProfile.legalAgreement.attributes.agreementType", "type": "dropdown", "options": ["ISDA", "PSA", "CLEARING", "GIMRA", "OTCIC"]},
                        { "title": "Legal Entity Name", "bind": "compositeProfile.legalAgreement.attributes.legalEntityName", "type": "input", "required": true}
                    ]
                },
                {
                    "column": [
                        { "title": "Agreement ID", "bind": "compositeProfile.legalAgreement.attributes.agreementId", "type": "input", "required": true},
                        { "title": "Tier", "bind": "compositeProfile.legalAgreement.attributes.tier", "type": "input"},
                        { "title": "Tier Effective Date", "bind": "compositeProfile.legalAgreement.attributes.tierEffectiveDate", "type": "datepicker"},
                        { "title": "Add On", "bind": "compositeProfile.legalAgreement.attributes.addOn", "type": "dropdown", "options": ["Liquidity", "Tenor", "All"]},
                        { "title": "House Navigator", "bind": "compositeProfile.legalAgreement.attributes.houseNavigator", "type": "input"},
                        { "title": "In Scope Master Agreements", "bind": "compositeProfile.legalAgreement.attributes.inScopeMasterAgreements", "type": "checkbox"},
                        { "title": "Agreement Details", "bind": "compositeProfile.legalAgreement.attributes.agreementDetails", "type": "textarea"}
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
