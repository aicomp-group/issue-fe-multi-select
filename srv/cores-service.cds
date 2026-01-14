using { Cores as schemaCores, UnitOfMeasures as schemaUoM } from '../db/cores-schema';

@OData
service CoresService {
  annotate Cores with @odata.draft.enabled;

  entity Cores as projection on schemaCores;
  entity UnitOfMeasures as projection on schemaUoM;
}
