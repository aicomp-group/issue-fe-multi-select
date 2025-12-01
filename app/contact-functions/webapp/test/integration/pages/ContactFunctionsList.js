sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'contactfunctions',
            componentId: 'ContactFunctionsList',
            contextPath: '/ContactFunctions'
        },
        CustomPageDefinitions
    );
});