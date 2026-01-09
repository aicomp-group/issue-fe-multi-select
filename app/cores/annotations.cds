using CoresService as service from '../../srv/cores-service';

annotate service.Cores with @(
    UI.FieldGroup #GeneratedGroup: {
        $Type: 'UI.FieldGroupType',
        Data : [{
            $Type: 'UI.DataField',
            Label: 'Inner Diameter',
            Value: innerDiameter,
        }, ],
    },
    UI.Facets                    : [{
        $Type : 'UI.ReferenceFacet',
        ID    : 'GeneratedFacet1',
        Label : 'General Information',
        Target: '@UI.FieldGroup#GeneratedGroup',
    }, ],
    UI.LineItem                  : [{
        $Type: 'UI.DataField',
        Label: 'Inner Diameter',
        Value: innerDiameter,
    }, ],
);

annotate service.Cores with {
    innerDiameter @Measures.Unit: innerDiameterUnit;
}
