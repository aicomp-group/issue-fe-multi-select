using CoresService as service from '../../srv/cores-service';

annotate service.Cores with @(
  UI.FieldGroup #GeneratedGroup: {
    $Type: 'UI.FieldGroupType',
    Data : [
      {
        $Type: 'UI.DataField',
        Label: 'Inner Diameter',
        Value: innerDiameter,
      },
      {
        $Type: 'UI.DataField',
        Label: 'Wall Thickness',
        Value: wallThickness,
      }
    ],
  },
  UI.Facets                    : [{
    $Type : 'UI.ReferenceFacet',
    ID    : 'GeneratedFacet1',
    Label : 'General Information',
    Target: '@UI.FieldGroup#GeneratedGroup',
  }, ],
  UI.LineItem                  : [
    {
      $Type: 'UI.DataField',
      Label: 'Inner Diameter',
      Value: innerDiameter,
    },
    {
      $Type: 'UI.DataField',
      Label: 'Wall Thickness',
      Value: wallThickness,
    }
  ],
);

annotate service.Cores with {
  innerDiameter @Measures.Unit: innerDiameterUnit_code;
  wallThickness @Measures.Unit: wallThicknessUnit_code;
}

annotate service.Cores with {
  innerDiameterUnit @Common.ValueList: {
    CollectionPath: 'UnitOfMeasureDensity',
    Parameters    : [
      {
        $Type            : 'Common.ValueListParameterInOut',
        LocalDataProperty: innerDiameterUnit_code,
        ValueListProperty: 'code'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'name'
      }
    ]
  };
};

annotate service.Cores with {
  wallThickness @Common.ValueList: {
    CollectionPath: 'UnitOfMeasureLength',
    Parameters    : [
      {
        $Type            : 'Common.ValueListParameterInOut',
        LocalDataProperty: wallThicknessUnit_code,
        ValueListProperty: 'code'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'name'
      }
    ]
  };
};

annotate service with @CodeList.UnitsOfMeasure: {
  Url           : './$metadata',
  CollectionPath: 'UnitOfMeasures'
};
