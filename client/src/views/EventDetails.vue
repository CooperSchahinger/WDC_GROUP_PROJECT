<template>
  <div class="event-details">
    <h1>Event Details</h1>
    <h2>Contains details from Event Database</h2>
    <h3>Will contain a calender with the event marked on it</h3>
    <iframe src="https://calendar.google.com/calendar/embed?height=600&wkst=1&bgcolor=%23ffffff&ctz=Australia%2FAdelaide&src=ZW4uYXVzdHJhbGlhbiNob2xpZGF5QGdyb3VwLnYuY2FsZW5kYXIuZ29vZ2xlLmNvbQ&color=%230B8043" style="border:solid 1px #777" width="800" height="600" frameborder="0" scrolling="no"></iframe>
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