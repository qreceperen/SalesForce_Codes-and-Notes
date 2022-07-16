import { LightningElement } from 'lwc';

export default class Calculator extends LightningElement {
    firstNumber;
    secondNumber;
    result;


    changeHandlerfirstNumber(event){
        this.firstNumber = event.target.value;
        console.log(typeof this.firstNumber);

    }
    changeHandlersecondNumber(event){
        this.secondNumber = event.target.value;
        console.log(typeof this.secondNumber);

    }


    add(){
         
        this.result = Number(this.firstNumber) + Number(this.secondNumber);
        // console.log(this.result); 
    }
    sub(){
         
        this.result = Number(this.firstNumber) - Number(this.secondNumber);
        // console.log(this.result); 
    }
    mul(){
         
        this.result = Number(this.firstNumber) * Number(this.secondNumber);
        // console.log(this.result); 
    }
    div(){
         
        this.result = Number(this.firstNumber) / Number(this.secondNumber);
        // console.log(this.result); 
    }
}