trigger TriggerTemplate on Lead (before insert,after insert,before update, after update,before delete, after delete, after undelete) {
    
            switch on Trigger.operationType {
                when BEFORE_INSERT {
                    for(Lead singleLead:Trigger.new){
                    }
                }
                when AFTER_INSERT {
                    for(Lead singleLead:Trigger.new){
                    }
                }
                when BEFORE_UPDATE {
                    for(Lead singleLead:Trigger.new){
                    }
                }
                when AFTER_UPDATE {
                    for(Lead singleLead:Trigger.new){
                    }
                }
                when BEFORE_DELETE {
                    for(Lead singleLead:Trigger.new){
                    }
                }
                when AFTER_DELETE {
                    for(Lead singleLead:Trigger.new){
                    }
                }
                when AFTER_UNDELETE {
                    for(Lead singleLead:Trigger.new){
                    }
                }
            }
        }