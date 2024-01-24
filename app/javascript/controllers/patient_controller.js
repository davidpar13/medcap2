import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="patient"
export default class extends Controller {
  static targets = ["discharge", "admitted", "admissionForm"]
  connect() {
    if (!this.admittedTarget.value) {
            this.admissionFormTarget.style.display = "none";
        }
  }
  admit_click() {
              this.admissionFormTarget.style.display = "";
              const today = new Date();

              const year = today.getFullYear();
              const month = String(today.getMonth() + 1).padStart(2, '0');
              const day = String(today.getDate()).padStart(2, '0');

              const formattedDate = `${year}-${month}-${day}`;

               window.scrollTo({
                    top: document.body.scrollHeight,
                    behavior: 'smooth' // Optional: Smooth scrolling animation
                  });
              this.admittedTarget.value = formattedDate;
          }

    discharge_click() {
                const today = new Date();

                const year = today.getFullYear();
                const month = String(today.getMonth() + 1).padStart(2, '0');
                const day = String(today.getDate()).padStart(2, '0');

                const formattedDate = `${year}-${month}-${day}`;

                 window.scrollTo({
                      top: document.body.scrollHeight,
                      behavior: 'smooth' // Optional: Smooth scrolling animation
                    });
                this.dischargeTarget.value = formattedDate;
            }
}
