import consumer from '../channels/consumer';

const initChatRoom = () => {
  const chatRoom = document.querySelector('.js-chatroom');

  if (chatRoom) {
    const id = chatRoom.dataset.id;
    const messages = document.querySelector('.messages');
    const userID = parseInt(chatRoom.dataset.user);
    const inputField = document.getElementById('message_content');

    console.log('I am here', messages.scrollHeight);
    messages.scrollTo(0, messages.scrollHeight);
    inputField.focus();

    consumer.subscriptions.create({ channel: 'ChatroomsChannel', chatroom_id: id },
    {
      received(data) {
        if (data.user == userID) {
          data.msg = data.msg.replace('left', 'right');
          inputField.value = '';
        }

        messages.insertAdjacentHTML('beforeend', data.msg);
        messages.scrollTo(0, messages.scrollHeight);
      }
    });
  }
};


export { initChatRoom };
