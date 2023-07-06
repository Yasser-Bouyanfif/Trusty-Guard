import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";
import "flatpickr/dist/l10n/fr.js";

// Connects to data-controller="flatpickr"
export default class extends Controller {
  // Inform the controller that it has two targets in the form, which are our inputs
  static targets = [ "startTime", "endTime" ]

  connect() {
    flatpickr(this.startTimeTarget, { dateFormat: 'd-m-Y',  minDate: "today", locale: "fr"})
    flatpickr(this.endTimeTarget, { dateFormat: 'd-m-Y', locale: "fr"})
  }
}
