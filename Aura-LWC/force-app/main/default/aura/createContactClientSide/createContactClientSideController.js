({
    ContactClientController : function(component, event, helper) {

        var singleContactClient = component.get("v.singleCont");
        // console.log(singleContactClient.FirstName);

        var serverController = component.get("c.createServerController"); // connected to apex class 

        serverController.setParams({'singleContact':singleContactClient}); // apex method requires contact datas. js takes data from component as JSON.js ready to send required data to apex method.

        serverController.setCallback(this,function(response){   //apex method works and send back data. js catch data with this function.
            var state = response.getState();
            if(state==='SUCCESS'){
                var contid=response.getReturnValue();
                component.set("v.Message",'Contact Created by ID' + contid); // js send id that received from apex to component
            }else{
                var errMsg= response.getError()[0].message;
                component.set("v.Message",errMsg);
            }

        }

        )
        $A.enqueueAction(serverController);
    }
})
