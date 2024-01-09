import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="modal"
export default class extends Controller {
  static targets = ["guardian"]
  connect() {
  }
  openModal() {
    console.log("Clicked!", this.guardianTarget)
    this.guardianTarget.style.display = 'block';
  }

  closeModal() {
    this.guardianTarget.style.display = 'none';
  }
}
