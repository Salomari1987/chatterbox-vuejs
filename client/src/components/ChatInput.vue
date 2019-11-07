<template>
  <div class="chat-input">
    <input
      v-model="chat_input"
      type="text"
      placeholder="Enter your message"
      />
    <button v-on:click="send_message">Send</button>
  </div>
</template>

<script>
export default {
  name: 'ChatInput',
  data() {
    return {
      chat_input: '',
    };
  },
  methods: {
    send_message() {
      this.$emit('send_message', this.chat_input);
      this.chat_input = '';
    },
  },
};
</script>

<style lang="scss" scoped>
.chat-input {
  position: absolute;
  bottom: 0px;
  width: 100%;
  display: flex;
  flex-direction: row;

  input {
    width: 50%;
  }

  button {
    background-color: blue;
    color: white;
    border-radius: 2px;
    border-color: transparent;
    padding: 10px 20px;
  }
}
</style>
