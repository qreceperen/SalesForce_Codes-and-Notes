import { LightningElement } from 'lwc';


export default class Example02 extends LightningElement {
    text = "Kenny";

    changeHandler(event){
        this.text  = event.target.value;
    }

}