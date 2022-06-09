<template>
  <div class="about">
    <h1>About</h1>
    <div class="about-description">
      <h1>{{ message }}</h1>
      <h3>
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras hendrerit
        congue nisl non congue. Nam augue sapien, aliquet sollicitudin pretium
        vitae, cursus quis ex. Praesent mattis placerat nisl a bibendum. In
        pellentesque quam vestibulum magna fringilla, vel consectetur turpis
        tempor. Nullam eget libero neque. Proin porta laoreet urna non
        tincidunt. Mauris bibendum porta commodo.
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
