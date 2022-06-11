<template>
  <div class="home">
    <div class="textbox">
      <h1> Your One-Stop Events Planner and Database</h1>
      <div class="search-container">
      <input type="text" placeholder="Search.." name="search">
      <button type="submit"><ion-icon name="search-outline"></ion-icon></button>
  </div>
    </div>
  </div>
</template>

<style scoped>
.home {
  height: 100vh;
}

.textbox{
  position: relative;
    top: 10%;
    font-size: 15px;
    color: white;
    text-align: center;

}

.search-container{
  float: middle;
}

.div input[type=text] {
  padding: 6px;
  margin-top: 8px;
  font-size: 17px;
  border: none;
}

</style>

<script>
// @ is an alias to /src
// import HelloWorld from "@/components/HelloWorld.vue";
// import NavBar from "../components/NavBar.vue";

export default {
  name: "Home",
  components: {
    // HelloWorld,
    // NavBar
  },
};
</script>
