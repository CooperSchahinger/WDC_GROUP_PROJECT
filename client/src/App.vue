<template>
  <div id="app">
    <div id="nav">
      <NavBar />
    </div>
    <router-view />
  </div>
</template>

<script>
import NavBar from "./components/NavBar.vue";

export default {
  components: {
    NavBar,
  },
};
</script>
>

<style>
#app {
  /* display: inlsine; */
  font-family: Avenir, Raleway, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: black;
  /* background-color: #dda15e; */
  background-image: url("assets/lights3.jpg");
  background-position: relative;
  background-size: cover;
}

body {
  margin: 0px;
}

h1,
h2,
h3 {
  color: #fefae0;
}

.sticky {
  position: fixed;
  top: 0;
  width: 100%;
}

.nav {
  /* display: block; */
  padding: 0px;
  margin: 0px;
}

.form-container {
  display: inline-block;
  border-radius: 10px;
  padding: 20px;
  background-color: #bc6c25;
  width: 25vw;
}

.button { /*login*/
  display: inline-block;
  background-color: #f4a460;
  border-radius: 10px;
  width: 10vw;
  padding: 5px;
  color: #606c38;
}

#nav a {
  font-weight: bold;
  color: #fefae0;
}

#nav a.router-link-exact-active {
  color: #dda15e;
}
</style>
