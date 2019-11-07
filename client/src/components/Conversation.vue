<template>
   <div>
    <div v-for="(message, id) in messages" v-bind:key="id">
        <div class="chat-message"
          v-bind:class="[(message.from_user == active_chat) ? 'to-message' : 'from-message']">
          {{message.message}}
        </div>
    </div>
   </div>
</template>
<script>
export default {
  name: 'Conversation',
  props: {
    messages: Array,
    active_chat: Number,
  },
};
</script>
<style>
  .from-message {
    background: #17a2b8;
    color: white;
    border-radius: 3px;
    padding: 8px 2px;
    margin-bottom: 4px;
    width: 50%;
  }
  .to-message {
    background: rgb(201, 209, 209);
    color: rgb(41, 53, 52);
    border-radius: 3px;
    padding: 8px 2px;
    margin-bottom: 4px;
    width: 50%;
    margin-left: auto;
  }
</style>
