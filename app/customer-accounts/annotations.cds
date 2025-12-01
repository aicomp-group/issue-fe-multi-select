using CustomerAccountsService as service from '../../srv/customer-account-service';


annotate service.CustomerAccounts with @(
    UI.LineItem                  : [{
        $Type: 'UI.DataField',
        Label: '{i18n>AccountName}',
        Value: accountName,
    }],
    UI.FieldGroup #GeneratedGroup: {
        $Type: 'UI.FieldGroupType',
        Data : [
        {
            $Type: 'UI.DataField',
            Label: '{i18n>AccountName}',
            Value: accountName,
        }
        ],
    },
    UI.Facets                    : [
        {
            $Type : 'UI.ReferenceFacet',
            ID    : 'GeneratedFacet1',
            Label : 'General Information',
            Target: '@UI.FieldGroup#GeneratedGroup',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Contacts',
            ID    : 'Contacts',
            Target: 'contacts/@UI.LineItem#Contacts',
        },
    ],
    UI.HeaderInfo                : {
        Title         : {
            $Type: 'UI.DataField',
            Value: accountName,
        },
        TypeName      : 'Customer Account',
        TypeNamePlural: 'Customer Accounts',
    },
);

annotate service.Contacts with @(
    UI.LineItem #Contacts            : [
        {
            $Type                  : 'UI.DataField',
            Value                  : functions.function_ID,
            Label                  : '{i18n>Function}',
        },
        {
            $Type: 'UI.DataField',
            Value: name,
        },
    ],
    UI.FieldGroup #GeneralInformation: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type                  : 'UI.DataField',
                Value                  : functions.function_ID,
                Label                  : '{i18n>Function}',
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>Name}',
                Value: name,
            },
        ],
    },
    UI.Facets                        : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'General Information',
            ID    : 'GeneralInformation',
            Target: '@UI.FieldGroup#GeneralInformation',
        }
    ],
    UI.HeaderInfo                    : {
        Title         : {
            $Type: 'UI.DataField',
            Value: name,
        },
        TypeName      : '',
        TypeNamePlural: '',
    },
);

annotate service.JobContactFunctions with {
    function @(
        Common.ValueList               : {
            $Type         : 'Common.ValueListType',
            CollectionPath: 'ContactFunctions',
            Parameters    : [{
                $Type            : 'Common.ValueListParameterOut',
                LocalDataProperty: function_ID,
                ValueListProperty: 'name',
            }, ],
        },
        Common.ValueListWithFixedValues: true,
        Common.Text                    : {
            $value                : function.name,
            ![@UI.TextArrangement]: #TextOnly,
        },
    )
};
