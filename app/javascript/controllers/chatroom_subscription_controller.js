import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable"

export default class extends Controller {
  static values = { chatroomId: Number }
  static targets = ["messages"]

  connect() {
    this.messagesTarget.scrollTo(0, this.messagesTarget.scrollHeight);
    this.channel = createConsumer().subscriptions.create(
      { channel: "ChatroomChannel", id: this.chatroomIdValue },
      { received: data => this.insertMessageAndScrollDown(data) }
    )
    console.log(`Subscribe to the chatroom with the id ${this.chatroomIdValue}.`)
  }

  insertMessageAndScrollDown(data) {
    if (!this.messageAlreadyExists(data)) {
      this.messagesTarget.insertAdjacentHTML("beforeend", data);
      this.messagesTarget.scrollTo(0, this.messagesTarget.scrollHeight);
    }
  }

  messageAlreadyExists(data) {
    return Array.from(this.messagesTarget.children).some(child => child.outerHTML === data);
  }

  resetForm(event) {
    event.target.reset()
  }
}
