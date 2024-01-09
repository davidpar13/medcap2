import { Controller } from "@hotwired/stimulus"
import SlimSelect from 'slim-select'

// Connects to data-controller="slim-select"
export default class extends Controller {
  static targets = ["language", "sex", "relationship"]
  connect() {
    new SlimSelect({
      select: this.languageTarget
    });

    new SlimSelect({
      select: this.sexTarget
    });
  }
}
