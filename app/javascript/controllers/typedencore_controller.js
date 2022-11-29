import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js"

// Connects to data-controller="typedencore"
export default class extends Controller {
  connect() {
    new Typed(this.element, {
      strings: ["Se connecter"],
      typeSpeed: 100000000,
      loop: true
    })
  }
}
