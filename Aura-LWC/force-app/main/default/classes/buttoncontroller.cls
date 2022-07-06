public with sharing class buttoncontroller {

public Boolean buttonstatus {get;set;}

public buttoncontroller(){
buttonstatus = false;

}

    public PageReference buttonclick() {
    buttonstatus = !buttonstatus;
        return null;
    }

}