using {
  cuid,
  managed,
} from '@sap/cds/common';

using {
  UnitOfMeasureLength,
  UnitOfMeasureDensity,
} from './cds-reuse/common';

entity Cores : cuid, managed {
  innerDiameter     : Decimal(15, 10)      @mandatory;
  innerDiameterUnit : UnitOfMeasureDensity @mandatory;
  wallThickness     : Decimal              @mandatory;
  wallThicknessUnit : UnitOfMeasureLength  @mandatory;
}
