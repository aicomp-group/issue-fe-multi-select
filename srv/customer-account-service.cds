using {
ContactFunctions as schemaContactFunctions,
    CustomerAccounts as schemaCustomerAccounts
} from '../db/customer-account-schema';


service CustomerAccountsService {
    @odata.draft.enabled    
    entity CustomerAccounts as projection on schemaCustomerAccounts;
    @odata.draft.enabled    
    entity ContactFunctions as projection on schemaContactFunctions;
}
