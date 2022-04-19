import {LigthningElement, wire} from 'lwc';
import getAccounts from '@salesforce/apex/AccountListController.getAccounts';

const table_columns = [
    {label: 'Id', fieldName: 'Id', type:'text'},
    {label: 'Name', fieldName: 'Name', type:'text'},
    {label: 'Website', fieldName: 'Website' , type : 'url'},
    {label: 'Description', fieldName: 'Description', type:'text'},
];

export default class AccountList extends LigthningElement{
    columns = table_columns;

    getSelectedAccountContact(event){
        const idAccount = event.detail.selectedRow.Id;
        
        event.preventDefault();

        const selectedEvent = new CustomEvent('selected', { detail: idAccount });

        this.dispatchEvent(selectedEvent);
    }

    @wire(getAccounts) accounts;
}