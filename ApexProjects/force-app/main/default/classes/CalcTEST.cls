@isTest 
public class CalcTEST {
// // SUM TEST STARTS HERE -----------------------------------------------------------------------------
//     @isTest 
//     public static void sumTest1() {
//         Calc testCalc = new Calc();
//         Decimal testResult = testCalc.sum(2,3);
//         System.assertEquals(5, testResult, 'sumTEST1 Result is NOT as EXPECTED');


//     }
//     @isTest 
//     public static void sumTest2() {
//         Calc testCalc = new Calc();
//         Decimal testResult = testCalc.sum(-10,-2);
//         System.assertEquals(-12, testResult, 'sumTEST2 Result is NOT as EXPECTED');

//     }
//     @isTest 
//     public static void sumTest3() {
//         Calc testCalc = new Calc();
//         Decimal testResult = testCalc.sum(5.0,-5.0);
//         System.assertEquals(0, testResult, 'sumTEST3 Result is NOT as EXPECTED');

//     }
//     @isTest 
//     public static void sumTest4() {
//         Calc testCalc = new Calc();
//         Decimal testResult = testCalc.sum(0,0);
//         System.assertEquals(0, testResult, 'sumTEST4 Result is NOT as EXPECTED');

//     }
//     @isTest 
//     public static void sumTest5() {
//         Calc testCalc = new Calc();
//         Decimal testResult = testCalc.sum(-4.2,-3.0);
//         System.assertEquals(-7.20, testResult, 'sumTEST4 Result is NOT as EXPECTED');
    // }
    // SUB METHOD TEST STARTS HERE -------------------------------------------------------------------
    @isTest 
    public static void subTest1() {
        Calc testCalc = new Calc();
        Decimal testResult = testCalc.sub(3,56);
        System.assertEquals(-53, testResult, 'subTest1 Result is NOT as EXPECTED');
    }
    @isTest 
    public static void subTest2() {
        Calc testCalc = new Calc();
        Decimal testResult = testCalc.sub(3,56);
        System.assertEquals(-53, testResult, 'subTest2 Result is NOT as EXPECTED');
    }
    @isTest 
    public static void subTest3() {
        Calc testCalc = new Calc();
        Decimal testResult = testCalc.sub(20,10);
        System.assertEquals(10, testResult, 'subTest3 Result is NOT as EXPECTED');
    }
    @isTest 
    public static void subTest4() {
        Calc testCalc = new Calc();
        Decimal testResult = testCalc.sub(0,0);
        System.assertEquals(0, testResult, 'subTest4 Result is NOT as EXPECTED');
    }
    @isTest 
    public static void subTest5() {
        Calc testCalc = new Calc();
        Decimal testResult = testCalc.sub(90000,10);
        System.assertEquals(89990, testResult, 'subTest4 Result is NOT as EXPECTED');
    }


    // MULIPLICATION  METHOD TEST STARTS HERE  -----------------------------------------------------------------
    @isTest 
    public static void mulTest1() {
        Calc testCalc = new Calc();
        Decimal testResult = testCalc.mul(2,3);
        System.assertEquals(6, testResult, 'mulTEST1 Result is NOT as EXPECTED');
    }
    @isTest 
    public static void mulTest2() {
        Calc testCalc = new Calc();
        Decimal testResult = testCalc.mul(-3,-5);
        System.assertEquals(15, testResult, 'mulTEST2 Result is NOT as EXPECTED');
    }
    @isTest 
    public static void mulTest3() {
        Calc testCalc = new Calc();
        Decimal testResult = testCalc.mul(-10,+10);
        System.assertEquals(-100, testResult, 'mulTEST3 Result is NOT as EXPECTED');
    }
    @isTest 
    public static void mulTest4() {
        Calc testCalc = new Calc();
        Decimal testResult = testCalc.mul(0,0);
        System.assertEquals(0, testResult, 'mulTEST4 Result is NOT as EXPECTED');
    }
    @isTest 
    public static void mulTest5() {
        Calc testCalc = new Calc();
        Decimal testResult = testCalc.mul(-10,0);
        System.assertEquals(0, testResult, 'mulTEST5 Result is NOT as EXPECTED');
    }

    // DIV METHOD TEST STARTS HERE -------------------------------------------------------------------
    @isTest 
    public static void divTest1() {
        Calc testCalc = new Calc();
        Decimal testResult = testCalc.div(20,4);
        System.assertEquals(5, testResult, 'mulTEST5 Result is NOT as EXPECTED');
    }
    @isTest 
    public static void divTest2() {
        Calc testCalc = new Calc();
        Decimal testResult = testCalc.div(20,0);
        System.assertEquals(20, testResult, 'mulTEST2 Result is NOT as EXPECTED');
    }
    @isTest 
    public static void divTest3() {
        Calc testCalc = new Calc();
        Decimal testResult = testCalc.div(10,3);
        System.assertEquals(3.33, testResult, 'mulTEST3 Result is NOT as EXPECTED');
    }
}
