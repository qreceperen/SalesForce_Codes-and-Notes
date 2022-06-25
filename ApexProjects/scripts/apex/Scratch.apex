// How to get a value from a Map

List<Account> ls = [SELECT Id,Name,Industry FROM Account];
Map<Id,Account> m = new Map<Id,Account>(ls);

for(String key : m.keyset()){ // iterate the map
    system.debug(m.get(key).Name); // take Name field from map
    system.debug(m.get(key).Industry);
    
}