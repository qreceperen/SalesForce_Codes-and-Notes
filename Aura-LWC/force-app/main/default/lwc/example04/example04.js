import { LightningElement } from 'lwc';

export default class Example04 extends LightningElement {
    firstName;
    lastName;

    changeHandlerFirstName(event){
        this.firstName = event.target.value;
    }


    changeHandlerLastName(event){
        this.lastName = event.target.value;
    }
    handleClick(){

        alert("Hello " + this.firstName +' ' + this.lastName);
    }
}