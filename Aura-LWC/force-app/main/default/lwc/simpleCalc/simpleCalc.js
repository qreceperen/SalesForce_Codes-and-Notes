import { LightningElement } from 'lwc';

export default class SimpleCalc extends LightningElement {
    num1;
    num2;
    result;

    inputNumber(event){
        this.num1 = event.target.value;
        // console.log(this.num1);
    }
    inputNumber2(event){
        this.num2 = event.target.value;
        // console.log(typeof this.num2);
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
   
}

// inputNumber(event){
//     const currentInputName = event.target.name;
//     const currentval =event.target.value;
//     if(currentInputName==='number1'){
//         this.num1=currentval;
//     }else{
//         this.num2=currentval;
//     }
// }
// doAdd(){
//     this.result=parseInt(this.num1)+parseInt(this.num2);
// }



// add(event){
//    this.result= parseInt(this.number1) + parseInt(this.number2);
//    console.log(this.result);
    
// }