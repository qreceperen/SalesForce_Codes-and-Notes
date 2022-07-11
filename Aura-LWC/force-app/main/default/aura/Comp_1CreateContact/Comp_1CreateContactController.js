({
    createContactClientController : function(component, event, helper) {

        var serverController = component.get("c.CreateServerController");
        var singleContactData = component.get("v.singleCon");
        // singleContact:singleContactData is JSON Object.
        serverController.setParams({singleContact:singleContactData});
        // This is how to wirte Function and IF (new version)
        serverController.setCallback(this,(response)=>{
            var state = response.getState();
            if(state==="SUCCESS"){
                var contid = response.getReturnValue();
                component.set("v.contactid",contid);
                component.set("v.Message","Contact is Created by id" + contid );
                
            }else{
                var errmes = response.getError()[0].message;
                component.set("v.Message",errmes);

            }

        });

        $A.enqueueAction(serverController);

    }
});
