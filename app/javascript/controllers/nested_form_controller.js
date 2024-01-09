import NestedForm from 'stimulus-rails-nested-form'
import SlimSelect from 'slim-select'

export default class extends NestedForm {
  static targets = ["relationship"]
  connect() {
    super.connect()

    new SlimSelect({
      select: this.relationshipTarget
    });
  }
}
