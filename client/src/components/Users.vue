<template>
  <div>
    <div v-for="(user, id) in users" v-bind:key="id">
      <div v-bind:class="[activeUser == user.id ? 'user active' : 'user']"
           v-on:click="chat(user.id)">
        <div class="user-details">{{user.userName}}</div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'Users',
  props: {
    users: Array,
  },
  data() {
    return {
      activeUser: null,
    };
  },
  methods: {
    chat(id) {
      this.activeUser = id;
      this.$emit('chat', id);
    },
  },
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style lang="scss" scoped>
.user {
  height: 60px;
  display: flex;
  width: 100%;

  &-avatar {
    height: 100%;
    max-width: 20%

    img {
      height: 100%;
    }
  }
}
</style>
