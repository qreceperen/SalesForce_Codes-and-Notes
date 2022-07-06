({
    sumClientController : function(component, event, helper) {
        var numberX = component.get("v.xnumber");
        var numberY = component.get("v.ynumber");
        // var result = numberX+numberY;
        // component.set("v.result",result);
         var serverController = component.get("c.sumServerController"); // reaching Apex class method
         serverController.setParams( // sending required variables to apex class. (JSON)
            {
                "number1":numberX,
                "number2":numberY
            });

            serverController.setCallback(this,function(response){ //taking the result back from Apex class
                console.log(response.getReturnValue());
                component.set("v.result",response.getReturnValue()); // write the calculated result to component(v.var is in the component)
            }
            );
            $A.enqueueAction(serverController); //must to write to speak with apex server



        },
    subClientController : function(component, event, helper) {
        var numberX = component.get("v.xnumber");
        var numberY = component.get("v.ynumber");
        // var result = numberX+numberY;
        // component.set("v.result",result);
        var serverController = component.get("c.subServerController"); // reaching Apex class method
        serverController.setParams( // sending required variables to apex class. (JSON)
           {
               "number1":numberX,
               "number2":numberY
           });

           serverController.setCallback(this,function(response){ //taking the result back from Apex class
               console.log(response.getReturnValue());
               component.set("v.result",response.getReturnValue()); // write the calculated result to component(v.var is in the component)
           }
           );
           $A.enqueueAction(serverController); //must to write to speak with apex server

        },

    mulClientController : function(component, event, helper) {
        var numberX = component.get("v.xnumber");
        var numberY = component.get("v.ynumber");
        var serverController = component.get("c.mulServerController");
        serverController.setParams(
            {"number1":numberX,
             "number2":numberY

        });
        serverController.setCallback(this,function(response){
            component.set("v.result",response.getReturnValue());
        });

        $A.enqueueAction(serverController);

        
        },
    divClientController : function(component, event, helper) {
        var numberX = component.get("v.xnumber");
        var numberY = component.get("v.ynumber");
        var serverController = component.get("c.divServerController");
        serverController.setParams(
            {"number1":numberX,
             "number2":numberY

        });
        serverController.setCallback(this,function(response){
            component.set("v.result",response.getReturnValue());
        });

        $A.enqueueAction(serverController);
       
        },
})
