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
                        { "title": "Agreement Status", "bind": "compositeProfile.legalAgreement.profileStatus", "type": "input", "readonly": true, "markSource": false },
                        { "title": "Agreement Number", "bind": "compositeProfile.legalAgreement.profileId", "type": "input", "readonly": true, "required": true, "markSource": false},
                        { "title": "Agreement Name", "bind": "compositeProfile.legalAgreement.attributes.agreementName", "type": "input", "required": true, "max": 100},
                        { "title": "IMOS Agreement CAID", "bind": "compositeProfile.legalAgreement.attributes.imosAgreementCaid", "type": "input"},
                        { "title": "IMOS Ownership CAID", "bind": "compositeProfile.legalAgreement.attributes.imosOwnershipCaid", "type": "input"},
                        { "title": "CM Ownership CAID", "bind": "compositeProfile.legalAgreement.attributes.cmOwnershipCaid", "type": "input"},
                        { "title": "FX Region", "bind": "compositeProfile.legalAgreement.attributes.fxRegion", "readonly": true, "type": "input" ,"value": "AMERICA"},
                        { "title": "Comments", "bind": "compositeProfile.legalAgreement.attributes.comments", "type": "input", "required": true},
                        { "title": "Calculation Type", "bind": "compositeProfile.legalAgreement.attributes.calculationType", "type": "input", "readonly": true }
                    ]
                },
                {
                    "column": [
                        { "title": "Agreement Short Name","bind": "compositeProfile.legalAgreement.attributes.agreementShortName","type": "input", "max": 100},
                        { "title": "Agreement Short Name 2","bind": "compositeProfile.legalAgreement.attributes.agreementShortName2","type": "input","max": 100},
                        { "title": "Agreement Short Name 3","bind": "compositeProfile.legalAgreement.attributes.agreementShortName3","type": "input","max": 100},
                        { "title": "Legal Entity UCN", "bind": "compositeProfile.legalAgreement.attributes.legalEntityUcn", "type": "input", "required": true},
                        { "title": "Legal Entity Name", "bind": "compositeProfile.legalAgreement.attributes.legalEntityName", "readonly": true, "type": "input", "required": true},
                        { "title": "Legal Entity ECI", "bind": "compositeProfile.legalAgreement.attributes.legalEntityEci", "readonly": true, "type": "input", "required": true},
                        { "title": "Legal Entity SPN", "bind": "compositeProfile.legalAgreement.attributes.legalEntitySpn", "readonly": true, "type": "input", "required": true},
                        { "title": "Legal Entity LEI", "bind": "compositeProfile.legalAgreement.attributes.legalEntityLei", "readonly": true, "type": "input"},
                        { "title": "Parent LE UCN", "bind": "compositeProfile.legalAgreement.attributes.parentLegalEntityUcn", "type": "input", "required": true},
                        { "title": "Parent LE Name", "bind": "compositeProfile.legalAgreement.attributes.parentLegalEntityName", "type": "input", "required": true, "readonly": true},
                        { "title": "Parent LE LEI", "bind": "compositeProfile.legalAgreement.attributes.parentLegalEntityLei", "type": "input", "required": true, "readonly": true},
                        { "title": "Parent LE ECI", "bind": "compositeProfile.legalAgreement.attributes.parentLegalEntityEci", "readonly": true, "type": "input", "required": true},
                        { "title": "Counterparty UCN", "bind": "compositeProfile.legalAgreement.attributes.counterPartyUcn", "type": "input", "required": true},
                        { "title": "Counterparty Name", "bind": "compositeProfile.legalAgreement.attributes.counterPartyName", "readonly": true , "type": "input", "required": true},
                        { "title": "Counterparty ECI", "bind": "compositeProfile.legalAgreement.attributes.counterPartyEci", "readonly": true , "type": "input", "required": true},
                        { "title": "Counterparty SPN", "bind": "compositeProfile.legalAgreement.attributes.counterPartySpn", "readonly": true , "type": "input", "required": true},
                        { "title": "Counterparty LEI", "bind": "compositeProfile.legalAgreement.attributes.counterPartyLei", "readonly": true , "type": "input"}
                    ]
                }
            ]
        },
        {
            "refKey": "parameters",
            "header": {
                "title": "Parameters"
            },
            "type": "form",
            "data": [
                {
                    "column": [
                        { "title": "Calculation Type", "bind": "compositeProfile.legalAgreement.attributes.calculationType", "type": "input", "readonly": true, "render": false },
                        { "title": "Bilateral", "bind": "compositeProfile.legalAgreement.attributes.bilateralFlag", "type": "dropdown", "required": true, "options": ["YES", "NO"]},
                        { "title": "Unilateral CP Favour", "bind": "compositeProfile.legalAgreement.attributes.unilateralCPFavour","type": "dropdown", "required": true, "options": ["YES", "NO"]},
                        { "title": "Regulatory Agreement", "bind": "compositeProfile.legalAgreement.attributes.regulatoryAgreement","type": "dropdown", "required": true, "options": ["YES", "NO"]},
                        { "title": "Segregation Model", "bind": "compositeProfile.legalAgreement.attributes.segregationModel","type": "dropdown", "required": true, "options": ["Non-Segregated", "ACA", "NA"]},
                        { "title": "IM/VM Split Type", "bind": "compositeProfile.legalAgreement.attributes.splitType","type": "dropdown", "required": true, "options": ["IM", "VM", "COMB"]},
                        { "title": "Agreement Type", "bind": "compositeProfile.legalAgreement.attributes.agreementType","type": "dropdown", "required": true, "options": ["OTC", "Repo", "TBA", "Inter-Fund", "Other"]},
                        { "title": "MID/BID Price Indicator", "bind": "compositeProfile.legalAgreement.attributes.midBidPriceIndicator","type": "dropdown", "required": true, "options": ["MID", "BID"]},
                        { "title": "Deliver Rounding Amount", "bind": "compositeProfile.legalAgreement.attributes.roundingAmount", "type": "input", "inputType": "number", "required": true},
                        { "title": "Return Rounding Amount", "bind": "compositeProfile.legalAgreement.attributes.returnRoundingAmount", "type": "input", "inputType": "number", "required": true}
                    ]
                },
                {
                    "column": [
                        {"title": "Requirement Haircut/Multiplier", "bind": "compositeProfile.legalAgreement.attributes.requirementHairCut", "type": "input", "inputType": "number", "min": 0, "max": 10, "step": 0.01, "placeholder": "Enter value (decimals allowed, max 10)", "required": false}
                    ]
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
