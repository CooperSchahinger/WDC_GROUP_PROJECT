import Vue from "vue";
import VueRouter from "vue-router";
import Home from "../views/Home.vue";
import About from "../views/About.vue";
import Event from "../views/Events.vue";
import Login from "../views/Login.vue";
import EventDetails from "../views/EventDetails.vue";
import SignUp from "../views/SignUp.vue";

Vue.use(VueRouter);

const routes = [
  {
    path: "/",
    name: "Home",
    component: Home,
  },
  {
    path: "/about",
    name: "About",
    component: About,
  },
  {
    path: "/events",
    name: "Events",
    component: Event,
  },
  {
    path: "/login",
    name: "Login",
    component: Login,
  },
  {
    path: "/eventdetails/:id",
    name: "eventdetails",
    component: EventDetails,
  },
  {
    path: "/signup",
    name: "SignUp",
    component: SignUp,
  },
];

const router = new VueRouter({
  routes,
  mode: "history",
});

export default router;
