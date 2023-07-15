import { Controller } from "@hotwired/stimulus";
import "select2";
import "select2/dist/css/select2.min.css";

export default class extends Controller {
  connect() {
    console.log("olá")
    $(this.element).select2({
      width: "100%"
    });
  }
}
