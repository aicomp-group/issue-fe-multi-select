using CustomerAccountsService as service from '../../srv/customer-account-service';
annotate service.ContactFunctions with @(
    UI.HeaderInfo                    : {
        Title         : {
            $Type: 'UI.DataField',
            Value: name,
        },
        TypeName      : 'Contact Function',
        TypeNamePlural: 'Contact Functions',
    },
    UI.LineItem                      : [{
        $Type: 'UI.DataField',
        Value: name,
    }, ],
    UI.Facets                        : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'General Information',
            ID    : 'GeneralInformation',
            Target: '@UI.FieldGroup#GeneralInformation',
        }
    ],
    UI.FieldGroup #Form              : {
        $Type: 'UI.FieldGroupType',
        Data : [],
    },
    UI.FieldGroup #GeneralInformation: {
        $Type: 'UI.FieldGroupType',
        Data : [{
            $Type: 'UI.DataField',
            Value: name,
        }, ],
    },
);

