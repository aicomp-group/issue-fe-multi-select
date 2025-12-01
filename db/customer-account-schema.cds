using { cuid, managed } from '@sap/cds/common';



entity CustomerAccounts : cuid, managed {
    accountName : String @title: '{i18n>AccountName}';
    contacts    : Composition of many Contacts
                    on contacts.account = $self;
}

entity Contacts : cuid, managed {
    key account   : Association to CustomerAccounts;
        name      : String  ;
        functions : Composition of many JobContactFunctions
                        on functions.contact = $self;
}

entity JobContactFunctions : cuid, managed {
    contact  : Association to Contacts;
    function : Association to ContactFunctions;   // FK column function_ID will be generated
}

entity ContactFunctions : cuid, managed {
    name : String @title: '{i18n>Function}';
}