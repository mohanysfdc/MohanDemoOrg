public class DeleteAccountTasks {
    @InvocableMethod(label='Delete Tasks' description='Delete Tasks associated to account')
    Public static void deleteAccountContacts(List<Id> accId){
    List<Task> tasks =[SELECT Id FROM Task WHERE WhatId in:accId];
    if(tasks!=null && !tasks.isEmpty()){
    delete tasks;
    }
    }
}