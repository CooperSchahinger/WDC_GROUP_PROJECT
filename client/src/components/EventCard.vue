<template>
  <div class="event-card-container" v-on:click="routeToEvent()">
    <!-- <router-link to="/"> -->
    <h1>{{ event.name }}</h1>
    <h2>{{ event.location }}</h2>
    <h2>{{ event.time }}</h2>
    <h2>{{ event.details }}</h2>
    <!-- </router-link> -->
  </div>
</template>

<style scoped>
.event-card-container {
  display: inline-block;
  padding: 20px;
  margin: 10px;
  border-radius: 10px;
  background-color: #bc6c25;
}
</style>

<script>
export default {
  props: {
    event: {
      type: Object,
      required: true,
    },
  },
  methods: {
    routeToEvent() {
      this.$router.push({
        name: "eventdetails",
        params: { id: this.event.id },
      });
    },
  },
};
</script>
