import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable"

export default class extends Controller {
  static values = { chatroomId: Number }
  static targets = ["messages"]

  connect() {
    this.channel = createConsumer().subscriptions.create(
      { channel: "ChatroomChannel", id: this.chatroomIdValue },
      {
        received: data => {
          if (!this.messageAlreadyExists(data)) {
            this.messagesTarget.insertAdjacentHTML("beforeend", data);
            this.#insertMessageAndScrollDown();
          }
        }
      }
    );
    console.log(`Subscribed to the chatroom with the id ${this.chatroomIdValue}.`);
  }

  #insertMessageAndScrollDown() {
    this.messagesTarget.scrollTo(0, this.messagesTarget.scrollHeight);
  }

  messageAlreadyExists(data) {
    return Array.from(this.messagesTarget.children).some(child => child.outerHTML === data);
  }
}
