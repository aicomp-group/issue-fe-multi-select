sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"cores/test/integration/pages/CoresList",
	"cores/test/integration/pages/CoresObjectPage"
], function (JourneyRunner, CoresList, CoresObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('cores') + '/test/flp.html#app-preview',
        pages: {
			onTheCoresList: CoresList,
			onTheCoresObjectPage: CoresObjectPage
        },
        async: true
    });

    return runner;
});

