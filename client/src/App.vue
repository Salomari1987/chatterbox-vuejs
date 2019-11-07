<template>
  <div id="app">
    <div class="navbar">
      <div class="logo"><img alt="Vue logo" src="./assets/logo.png"></div>
    </div>
    <div class="content">
      <div class="container-grid">
        <div class="side-col-3 left">
          <div class="users">
            <Users :users="users"/>
          </div>
        </div>
        <div class="main-col">
          <div class="conversation-main">
            <div v-if="!current_chat_channel"
                 class="select-chat text-center">
                Select a user to start chatting...
              </div>
            <Conversation
                v-else
                :active_chat="active_chat_id"
                :messages="messages[current_chat_channel]"
            />
          </div>
          <div class="conversation-input">
            <ChatInput />
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import Users from './components/Users.vue';
import Conversation from './components/Conversation.vue';
import ChatInput from './components/ChatInput.vue';

export default {
  name: 'app',
  components: {
    Users,
    Conversation,
    ChatInput,
  },
  data() {
    return {
      users: [{
        userName: 'user1',
        id: 1,
      }, {
        userName: 'user2',
        id: 2,
      }, {
        userName: 'user3',
        id: 3,
      }],
      messages: [[{
        from_user: '1',
        to_user: '2',
        message: 'hi',
      }, {
        from_user: '2',
        to_user: '1',
        message: 'helloooo',
      }], [{
        from_user: '2',
        to_user: '3',
        message: 'hello mr, how are you?',
      }, {
        from_user: '3',
        to_user: '2',
        message: 'helloooo',
      }]],
      active_chat_id: 2,
      current_chat_channel: 1,
    };
  },
};
</script>

<style lang="scss">
  #app {
    font-family: 'Avenir', Helvetica, Arial, sans-serif;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    text-align: center;
    color: #2c3e50;
    margin-top: 60px;
  }
  .content {
    position: absolute;
    top: 10vh;
    left:0;
    height: calc(100vh - 60px);
    width: 100%;
  }
  .container-grid {
    display: flex;
    flex-direction: row;
    height: 100%;
  }

  .side-col-3 {
    width: 25%;
    border: 1px solid blue;
  }

  .main-col {
    flex-grow: 1;
    border: 1px solid blue;
    display: flex;
    flex-direction: column;
  }

  .conversation {
    &-main {
      flex-grow:1;
      border: 1px solid red;
    }

    &-input {
      height: 60px;
      border: 1px solid red;
    }
  }

  .message {
    display: flex;
  }

  .navbar {
    position:fixed;
    top:0;
    display:flex;
    flex-direction: row;
    height: 60px;
    align-items: center;
    width: 100%;
    left:0;
    padding: 10px;

    .logo {
      height: 100%;

      img {
        height: 100%;
      }
    }
  }
</style>
