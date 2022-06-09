<template>
  <div class="nav-container">
    <!--<h1 v-on:click="routeHome()" class="app-name">Application name</h1>-->
    <div class="nav-items-container">
      <img class="main-logo" src="../assets/logo1.png">
      <ul class="nav-items">
        <router-link class="nav-item" to="/"
          >Home <ion-icon name="home-outline"></ion-icon
        ></router-link>
        <router-link class="nav-item" to="/about"
          >About
          <ion-icon name="information-outline"></ion-icon>
        </router-link>

        <router-link class="nav-item" to="/events"
          >Events
          <ion-icon name="beer-outline"></ion-icon>
        </router-link>

        <router-link class="nav-item-login" to="/login">
          <div class="button">
            <ion-icon size="large" name="log-in-outline"></ion-icon>
          </div>
        </router-link>

        <!-- <router-link class="nav-item" to="/signup">
          <div class="button">Sign-up</div>
        </router-link> -->
      </ul>
    </div>
  </div>
</template>

<script>
export default {
  methods: {
    routeHome() {
      this.$router.push({ name: "Home" });
    },
  },
};
</script>

<style scoped>

.main-logo{
    width: 240px;
    cursor: pointer;
}
.nav-container {
  height: 100px;
  display: inline-flex;
  width: 100vw;
  padding-left: 0.25vw;
  background-image: linear-gradient(-90deg, #d38312, #a83279);
  color: #fefae0;
}

.nav-items-container {
  padding-top: 1.5vh;
  display: flex;
  position: relative;   
  justify-content: space-around;
}

.nav-items{
    font-size: 1 rem;
    position: relative;
    margin-right: 15px;
}


.button {
  width: 5vw;
  padding: 5px;
  color: black;
}
.nav-item {
  padding: 5px;
  color: #fefae0;
  text-decoration: none;
  text-align: right;
}

.nav-item-login {
  /* text-aligns: right; */
  padding: 10px;
  margin-left: 55vw;
  color: #fefae0;
  /* margin-left: 80vw; */
}
</style>
