<template>
  <div class="about">
    <h1>About</h1>
    <div class="about-description">
      <h1>{{ message }}</h1>
      <h3>
        This is your one stop event planner shop. Signup as an event admin or an event customer and and create/search for your dream
        event!
      </h3>
    </div>
  </div>
</template>

<script>

const API = "http://localhost:4000/test";


export default {
  data: () => ({
    message: ""
  }),
  mounted()
  {
    fetch(API)
    .then(response => response.json())
    .then(result => {
      this.message = result
    });
  },
}

</script>

<style scoped>
.about {
  height: 100vh;
}

.about-description {
  display: inline-flex;
  width: 75vw;
  text-align: center;
}
</style>
