using { Cores as schemaCores} from '../db/cores-schema';

@OData
service CoresService {
  annotate Cores with @odata.draft.enabled;
  entity Cores as projection on schemaCores;
}
