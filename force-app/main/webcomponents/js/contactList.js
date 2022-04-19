import { LightningElement, wire } from 'lwc';
import getContactList from '@salesforce/apex/ContactListController.getContacts';


export default class EventWithData extends LightningElement {
    accountId;

    constructor() {
        super();
        this.template.addEventListener('selected', evt => {
            this.accountId = evt.detail;
          });
      }

    @wire(getContactList, {accountId: '$accountId'}) contacts;
}