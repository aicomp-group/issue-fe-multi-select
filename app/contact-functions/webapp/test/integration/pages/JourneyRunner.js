sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"contactfunctions/test/integration/pages/ContactFunctionsList",
	"contactfunctions/test/integration/pages/ContactFunctionsObjectPage"
], function (JourneyRunner, ContactFunctionsList, ContactFunctionsObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('contactfunctions') + '/test/flpSandbox.html#contactfunctions-tile',
        pages: {
			onTheContactFunctionsList: ContactFunctionsList,
			onTheContactFunctionsObjectPage: ContactFunctionsObjectPage
        },
        async: true
    });

    return runner;
});

