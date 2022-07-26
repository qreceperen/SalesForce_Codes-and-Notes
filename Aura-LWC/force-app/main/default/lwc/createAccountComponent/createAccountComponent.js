import { LightningElement } from 'lwc';
import { NavigationMixin } from 'lightning/navigation';
import Industry from '@salesforce/schema/Account.Industry';
import Name from '@salesforce/schema/Account.Name';
import Phone from '@salesforce/schema/Account.Phone';

export default class CreateAccountComponent extends NavigationMixin(LightningElement) {

    objectApiName = "Account";
    fieldList = [Name,Phone,Industry];


}