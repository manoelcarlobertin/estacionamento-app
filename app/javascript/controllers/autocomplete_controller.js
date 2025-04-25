import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["input", "list"]

  connect() {
    this.inputTarget.addEventListener("input", () => this.fetchPlates())
  }

  fetchPlates() {
    fetch(`/veiculos/search_by_plate?q=${this.inputTarget.value}`)
      .then(res => res.json())
      .then(data => {
        this.listTarget.innerHTML = data
          .map(v => `<option value="${v[0]}" data-id="${v[1]}">`)
          .join("")
      })
  }
}