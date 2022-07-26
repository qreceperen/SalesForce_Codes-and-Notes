import { LightningElement,wire, track} from 'lwc';

import getAccountRecords from '@salesforce/apex/wireDecoratorController.getAccountRecords';
// import Name from '@salesforce/schema/Account.Name';
// import Id from '@salesforce/schema/Account.Id';
// import CreatedDate from '@salesforce/schema/Account.CreatedDate';


export default class WireDecoratorAccount extends LightningElement {

    @track columns = [
        {label: 'Id',fieldName:'Id', type:'text'},
        {label: 'Name',fieldName:'Name', type:'text'},
        {label: 'Created Date',fieldName:'CreatedDate', type:'date'},
    ];
    @track multiAccountList;
    @wire(getAccountRecords) accrecords ({error,data}){ // this is like a new method with wire method name is accrecords.

        if(data){
            this.multiAccountList=data;

        }else if(error){
            this.multiAccountList = undefined;
        }

    }

}