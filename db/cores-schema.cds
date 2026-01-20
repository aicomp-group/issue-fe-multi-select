using {
  cuid,
  managed,
  sap.common.CodeList
} from '@sap/cds/common';

entity Cores : cuid, managed {
  innerDiameter     : Decimal(15, 10)               @mandatory;
  innerDiameterUnit : Association to UnitOfMeasures @mandatory;
}

entity UnitOfMeasures : CodeList {
  key code  : String(10) @(Common: {
        UnitSpecificScale: scale,
        Text             : name
      });
      scale : Integer;
}
