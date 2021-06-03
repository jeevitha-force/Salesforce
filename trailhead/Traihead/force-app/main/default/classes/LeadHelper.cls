public with sharing class LeadHelper {
    public static void LeadPrefixDr(List<Lead> lst) {
        for(Lead l:lst){
            l.LastName = 'Dr '+ l.LastName;
        }
    }
}
