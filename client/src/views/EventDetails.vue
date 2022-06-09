<template>
  <div class="event-details">
    <h1>Event Details</h1>
    <h2>Contains details from Event Database</h2>
    <h3>Will contain a calender with the event marked on it</h3>
    <img src="../assets/calendar-month-view-previous-past-months-1024x682.png">
  </div>
</template>

<style scoped>
.event-details {
  height: 125vh;
}

h1,
h2 {
  color: #fefae0;
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
};
</script>