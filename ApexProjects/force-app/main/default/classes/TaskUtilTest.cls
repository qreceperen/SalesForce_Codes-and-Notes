@isTest
public with sharing class TaskUtilTest {
    
    @isTest static void TestTaskPriority() {
        String pri = TaskUtil.getTaskPriority('NY');
        System.assertEquals('Normal', pri);

    }
    @isTest static void TestTaskHighPriority() {
        String pri = TaskUtil.getTaskPriority('CA');
        System.assertEquals('High', pri);

    }
    @isTest static void TestTaskNullPriority() {
        String pri = TaskUtil.getTaskPriority(' ');
        System.assertEquals(null, pri);

    }
    @isTest static void TestTaskNull2Priority() {
        String pri = TaskUtil.getTaskPriority('CAL');
        System.assertEquals(null, pri);

    }
}
