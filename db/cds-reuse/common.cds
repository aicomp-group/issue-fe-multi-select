using {sap.common.CodeList, } from '@sap/cds/common';


//Unit of Measure
entity UnitOfMeasures : CodeList {
    key code        : String @(title: '{i18n>UnitOfMeasure}');
        searchAlias : String(255);
        dimension   : String(30);
        scale       : Integer;
}

annotate UnitOfMeasures with {
    code        @Common.Text: name;
    searchAlias @Search.defaultSearchElement;
    descr       @Search.defaultSearchElement;
}


type UnitOfMeasure        : Association to UnitOfMeasures;
annotate UnitOfMeasure with @(title: '{i18n>UnitOfMeasure}');

entity UnitOfMeasuresLength  as
    select from UnitOfMeasures {
        key code : String(10) @(Common: {
                       UnitSpecificScale: scale,
                       Text             : name
                   }),
            name,
            descr,
            searchAlias
    }
    where
        dimension = 'Length';


type UnitOfMeasureLength  : Association to UnitOfMeasuresLength;
annotate UnitOfMeasureLength with @(title: '{i18n>UnitOfMeasure}');

entity UnitOfMeasuresWeight  as
    select from UnitOfMeasures {
        key code,
            name,
            descr,
            searchAlias
    }
    where
        dimension = 'Mass';


type UnitOfMeasureWeight  : Association to UnitOfMeasuresWeight;
annotate UnitOfMeasureWeight with @(title: '{i18n>UnitOfMeasure}');

entity UnitOfMeasuresDensity as
    select from UnitOfMeasures {
        key code,
            name,
            descr,
            searchAlias
    }
    where
        dimension = 'Density';

type UnitOfMeasureDensity : Association to UnitOfMeasuresDensity;
annotate UnitOfMeasureDensity with @(title: '{i18n>UnitOfMeasure}');
