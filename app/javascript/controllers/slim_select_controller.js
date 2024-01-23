import { Controller } from "@hotwired/stimulus"
import SlimSelect from 'slim-select'

// Connects to data-controller="slim-select"
export default class extends Controller {
  static targets = ["language", "sex", "relationship", "stafftype", "diagnosis"]
  connect() {
      if (this.hasLanguageTarget) {
       new SlimSelect({
             select: this.languageTarget
           });
      }

      if (this.hasSexTarget) {
      new SlimSelect({
            select: this.sexTarget
          });
      }

     if (this.hasStafftypeTarget) {
        new SlimSelect({
              select: this.stafftypeTarget
            });
      }

     if (this.hasDiagnosisTarget) {
        new SlimSelect({
         select: this.diagnosisTarget
         });
     }
  }
}
