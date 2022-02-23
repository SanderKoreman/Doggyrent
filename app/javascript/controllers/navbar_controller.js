import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "output" ]

  connect() {
    this.addScroll()
  }

  addScroll() {
    window.onscroll = function() {addSticky()};

    const navbar = this.element;

    const sticky = navbar.offsetTop;

    function addSticky() {
      if (window.pageYOffset >= sticky) {
        navbar.classList.add("sticky")
      } else {
        navbar.classList.remove("sticky");
      }
    }
  }
}
