using {
    cuid,
    managed,
} from '@sap/cds/common';


entity Cores : cuid, managed {
    innerDiameter     : Decimal                @mandatory;
    innerDiameterUnit : String(2) default 'mm' @mandatory;
}
