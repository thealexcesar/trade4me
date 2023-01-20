import { Controller } from "@hotwired/stimulus"
import { enter, leave, toggle } from 'el-transition'

export default class extends Controller {
  static targets = ['openUserMenu', 'userAuthLink' ]
  connect() {
    this.openUserMenuTarget.addEventListener('click', this.toggleDropdownMenu);
    this.userAuthLinkTargets.forEach('click', () => {
      console.log("test......!");
    });
  }

  toggleDropdownMenu() {
    toggle(document.getElementById('menu-dropdown-items'));
  }
}
