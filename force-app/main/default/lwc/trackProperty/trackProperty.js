import { LightningElement, track } from 'lwc';

export default class TrackProperty extends LightningElement {
    @track location = {
        city : "New York City",
        country : "USA",
        zipCode : "09876"
    };
    handleChange2(event) {
        this.location.city = event.target.value;
    }

}