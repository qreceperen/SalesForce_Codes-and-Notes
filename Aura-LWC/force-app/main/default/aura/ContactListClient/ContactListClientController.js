({
    getContactClientController : function(component, event, helper) {

        var serverController = component.get("c.retrieveContactServerController")

        serverController.setCallback(this,function(response){

            var state = response.getState();
            if(state ==='SUCCESS'){
                var contactrecords = response.getReturnValue();
                component.set("v.multicontact",contactrecords);

            }else{
                var ErrMsg = response.getError()[0].message;
                component.set("v.Message",ErrMsg); 

            }


           

        }



        );
        $A.enqueueAction(serverController);
    }
})
