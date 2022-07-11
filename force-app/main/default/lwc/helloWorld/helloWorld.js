import { LightningElement } from 'lwc';

export default class HelloWorld extends LightningElement {
    name; //undefined
    fullname = "Salesforce Developer" //string
    age = 35
    location ={
        city:"Houston",
        country:"USA",
        postalCode:"07512"
    };
    fruit = ["banana", "apple", "grapes", 'kivi']; //array
}