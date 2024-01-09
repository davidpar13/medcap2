import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navigation"
export default class extends Controller {
  static targets = ["submenu"]
  connect() {
    document.addEventListener("click", this.handleOutsideClick.bind(this));
  }

  disconnect() {
    document.removeEventListener("click", this.handleOutsideClick.bind(this));
  }

  submenu(){
    this.submenuTarget.classList.toggle("hidden");
  }

  handleOutsideClick(event) {
    if (!this.element.contains(event.target)) {
      this.submenuTarget.classList.add("hidden");
    }
  }
}
