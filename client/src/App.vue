<template>
  <div id="app">
    <div class="navbar">
      <div class="logo"><img alt="Vue logo" src="./assets/logo.png"></div>
    </div>
    <div class="content">
      <div class="container-grid">
        <div class="side-col-3 left">
          <div class="users">
            users
          </div>
        </div>
        <div class="main-col">
          <div class="conversation-main">
            conversation
          </div>
          <div class="conversation-input">
            input
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>

export default {
  name: 'app',
  components: {},
};
</script>

<style>
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

  .conversation-main {
    flex-grow:1;
    border: 1px solid red;
  }
  .conversation-input {
    height: 60px;
    border: 1px solid red;
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
  }

  .navbar .logo {
    height: 100%;
  }

  .navbar .logo img {
    height: 100%;
  }
</style>
