export const fetchConfig = (lob) => {
    // Return the XMargin configuration
    const config = {
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
                            { "title": "Calculation Type", "bind": "compositeProfile.legalAgreement.attributes.calculationType", "type": "input", "readonly": true }
                        ]
                    },
                    {
                        "column": [
                            { "title": "Agreement Short Name","bind": "compositeProfile.legalAgreement.attributes.agreementShortName","type": "input", "max": 100},
                            { "title": "Legal Entity UCN", "bind": "compositeProfile.legalAgreement.attributes.legalEntityUcn", "type": "input", "required": true},
                            { "title": "Legal Entity Name", "bind": "compositeProfile.legalAgreement.attributes.legalEntityName", "readonly": true, "type": "input", "required": true},
                            { "title": "Counterparty UCN", "bind": "compositeProfile.legalAgreement.attributes.counterPartyUcn", "type": "input", "required": true}
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
                            { "title": "Bilateral", "bind": "compositeProfile.legalAgreement.attributes.bilateralFlag", "type": "dropdown", "required": true, "options": ["YES", "NO"]},
                            { "title": "Agreement Type", "bind": "compositeProfile.legalAgreement.attributes.agreementType","type": "dropdown", "required": true, "options": ["OTC", "Repo", "TBA", "Inter-Fund", "Other"]},
                            { "title": "MID/BID Price Indicator", "bind": "compositeProfile.legalAgreement.attributes.midBidPriceIndicator","type": "dropdown", "required": true, "options": ["MID", "BID"]},
                            { "title": "Deliver Rounding Amount", "bind": "compositeProfile.legalAgreement.attributes.roundingAmount", "type": "input", "inputType": "number", "required": true}
                        ]
                    },
                    {
                        "column": [
                            { "title": "Requirement Haircut/Multiplier", "bind": "compositeProfile.legalAgreement.attributes.requirementHairCut", "type": "input", "inputType": "number", "min": 0, "max": 10, "step": 0.01, "placeholder": "Enter value (decimals allowed, max 10)", "required": false},
                            { "title": "Return Rounding Amount", "bind": "compositeProfile.legalAgreement.attributes.returnRoundingAmount", "type": "input", "inputType": "number", "required": true}
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
            },
            "newSplitTypeConfig": {
                "data": [
                    {
                        "column": [
                            {
                                "title": "Split Type",
                                "bind": "splitType",
                                "type": "dropdown",
                                "required": true,
                                "options": ["IM", "VM", "COMB", "Settlement"]
                            },
                            {
                                "title": "Margin Type",
                                "bind": "marginType",
                                "type": "dropdown",
                                "required": true,
                                "options": ["SCM", "MCM"]
                            }
                        ]
                    }
                ]
            },
            "newCallFrequency": {
                "data": [
                    {
                        "column": [
                            {
                                "title": "Frequency",
                                "bind": "frequency",
                                "type": "dropdown",
                                "options": ["DAILY", "WEEKLY", "MONTHLY", "QUARTERLY"]
                            }
                        ]
                    }
                ]
            }
        }
    };

    console.log('fetchConfig returning:', config);
    return config;
};
