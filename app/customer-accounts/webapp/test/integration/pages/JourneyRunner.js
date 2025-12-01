sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"customeraccounts/test/integration/pages/CustomerAccountsList",
	"customeraccounts/test/integration/pages/CustomerAccountsObjectPage"
], function (JourneyRunner, CustomerAccountsList, CustomerAccountsObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('customeraccounts') + '/test/flpSandbox.html#customeraccounts-tile',
        pages: {
			onTheCustomerAccountsList: CustomerAccountsList,
			onTheCustomerAccountsObjectPage: CustomerAccountsObjectPage
        },
        async: true
    });

    return runner;
});

