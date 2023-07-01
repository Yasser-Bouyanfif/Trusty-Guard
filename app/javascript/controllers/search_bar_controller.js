import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "form", "list", "searchInput" ]


  connect() {
    console.log('hello');
    console.log(this.element);
    console.log(this.formTarget);
    console.log(this.listTarget);
    console.log(this.searchInputTarget);

    console.log('connected');
  }

  update() {
    const url = `${this.formTarget.action}?query=${this.searchInputTarget.value}`;
    fetch(url, { headers: { 'Accept': 'text/html' } })
      .then(response => response.text())
      .then((data) => {
        const parser = new DOMParser();
        const html = parser.parseFromString(data, 'text/html');
        const table = html.querySelector('.table');

        const existingTable = document.querySelector('.table');
        existingTable.innerHTML = table.innerHTML;

        console.log(data);
      });
  }


}
