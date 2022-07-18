import { LightningElement } from 'lwc';

export default class SimpleCalc extends LightningElement {
    num1;
    num2;
    result;

    inputNumber(event){
        const currentInputName = event.target.name; // Take the name from input
        const currentval =event.target.value;       // take value from input
        if(currentInputName==='number1'){           // Decide which input sends data ( number 1 or number 2)
            this.num1=currentval;
        }else{
            this.num2=currentval;
        }
    }

    
    doAdd(){
        this.result= parseInt(this.num1) + parseInt(this.num2);
    }
    doSub(){
        this.result= parseInt(this.num1) - parseInt(this.num2);
    }
    doMul(){
        this.result= parseInt(this.num1) * parseInt(this.num2);
    }
    doDiv(){
   
        this.result= parseInt(this.num1) / parseInt(this.num2);
    }

    clearAll(){
    
        this.template.querySelector('lightning-input[data-name="number1"]').value = null;
        this.template.querySelector('lightning-input[data-name="number2"]').value = null;   
        this.template.querySelector('lightning-input[data-name="result"]').value = null;  
    
      }
   
}
