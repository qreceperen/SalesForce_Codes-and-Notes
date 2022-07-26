@isTest
public with sharing class TemperatureConverterTest {
    @isTest static void testWarmTemp () {
        Decimal celsius = TemperatureConverter.FahrenheitToCelcius(70);
        System.assertEquals(21.11, celsius);

    }

    @isTest 
    public static void testFreezingPoint (){
        Decimal celsius = TemperatureConverter.FahrenheitToCelcius(32);
        System.assertEquals(0, celsius);
    }
    @isTest 
    public static void testBoilingPoint (){
        Decimal celsius = TemperatureConverter.FahrenheitToCelcius(212);
        System.assertEquals(100, celsius,'Boiling point temperature is not expected');
    }
    @isTest 
    public static void testNegativeTemp (){
        Decimal celsius = TemperatureConverter.FahrenheitToCelcius(-10);
        System.assertEquals(-23.33, celsius);
    }
}
