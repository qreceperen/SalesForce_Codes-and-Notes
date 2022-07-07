public with sharing class SimpleCalcServerController {

    public SimpleCalcServerController() {

        // constructor method

    }
    @AuraEnabled
    public static Decimal sumServerController(Decimal number1, Decimal number2){
        return number1+number2;

    }
    @AuraEnabled
    public static Decimal subServerController(Decimal number1, Decimal number2){
        return number1-number2;

    }
    @AuraEnabled
    public static Decimal mulServerController(Decimal number1, Decimal number2){
        return number1*number2;

    }
    @AuraEnabled
    public static Decimal divServerController(Decimal number1, Decimal number2){
        return number1/number2;

    }
    @
    

}
