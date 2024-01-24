import { Controller } from "@hotwired/stimulus"
import flatpickr from 'flatpickr'

// Connects to data-controller="flatpickr"
export default class extends Controller {
  static targets = ["dob", "admitted", "discharge"]
  connect() {

    if (this.hasDobTarget) {
        flatpickr(this.dobTarget)
    }

    if (this.hasAdmittedTarget) {
        flatpickr(this.admittedTarget)
    }

    if (this.hasDischargeTarget) {
        flatpickr(this.dischargeTarget)
    }
  }
}
