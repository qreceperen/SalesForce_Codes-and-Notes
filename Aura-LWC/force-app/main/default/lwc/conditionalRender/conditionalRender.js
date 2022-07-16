import { LightningElement } from 'lwc';

export default class ConditionalRender extends LightningElement {

    areDetailsVisible=false;

    changedBox (event){
      this.areDetailsVisible = event.target.checked;
    }
}