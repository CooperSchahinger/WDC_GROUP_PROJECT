<template>
  <div class="events">
    <h1>Events List</h1>
    <div class="container">
      <ul class="event-card-container" v-for="item in events" :key="item.id">
        <!-- <li> -->
        <EventCard
          :event="item"
          v-on:click="
            {
            }
          "
        />
        <!-- </li> -->
      </ul>
    </div>
  </div>
</template>

<style scoped>
.events {
  height: 100vh;
}

h1 {
  font: bold;
  color: #fefae0;
}

/*.container {

}*/

.event-card-container {
  display: inline-block;
  /* background-color: #606c38; */
}
</style>

<script>
import EventCard from "../components/EventCard.vue";
// import router from "../router";
export default {
  data() {
    return {
      events: [
        {
          id: 1,
          name: "Mock event 1",
          location: "this place",
          time: "this time",
          details: "blah blah blah",
        },
        {
          id: 2,
          name: "Mock event 2",
          location: "this place",
          time: "this time",
          details: "blah blah blah",
        },
        {
          id: 3,
          name: "Mock event 3",
          location: "this place",
          time: "this time",
          details: "blah blah blah",
        },
        {
          id: 4,
          name: "Mock event 4",
          location: "this place",
          time: "this time",
          details: "blah blah blah",
        },
      ],
    };
  },

  components: { EventCard },
};
</script>
