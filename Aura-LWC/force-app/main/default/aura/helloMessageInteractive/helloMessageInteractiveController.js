({
    handleClick : function(component, event, helper) {

        let btnClicked = event.getSource(); // button taken
        let btnMessage = btnClicked.get("v.label"); //button Label specifically taken (like taking id)
        component.set("v.message",btnMessage); // update message

    },

    handleClick2 : function(component, event, helper){

        let newMessage = event.getSource().get("v.label");//Take label of the button clicked
        console.log("handleClick2: Message: " + newMessage);
        component.set("v.message", newMessage)

    },
    handleClick3 : function (component, event,helper){

        component.set("v.message", event.getSource().get("v.labe"));

    }
})
