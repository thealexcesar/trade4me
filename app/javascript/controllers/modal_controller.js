import { Controller } from "@hotwired/stimulus"
import {enter, leave, toggle} from 'el-transition'

export default class extends Controller {
    connect() {
        document.getElementById('modal-wrapper').addEventListener('click', this.closeModal);
    }

    closeModal(event) {
        const modalClicked = document.getElementById('modal-panel').contains(event.target);
        if (!modalClicked) {
            leave(document.getElementById('modal-wrapper'));
            leave(document.getElementById('modal-backdrop'));
            leave(document.getElementById('modal-panel'));
        }
    }

    showModal() {
        enter(document.getElementById('modal-wrapper'));
        enter(document.getElementById('modal-backdrop'));
        enter(document.getElementById('modal-panel'));
    }
}
