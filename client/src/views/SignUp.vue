<template>
  <div class="SignUp">
    <h1>Sign-Up</h1>
    <div class="form-container">
      <h3>Username</h3>
      <input v-model="createUserDetails.username" class="input" type="text" />

      <h3>Password</h3>
      <input v-model="createUserDetails.password" class="input" type="text" />

      <hr />

      <h3>Email</h3>
      <input v-model="createUserDetails.email" class="input" type="text" />

      <h3>Contact Number</h3>
      <input
        v-model="createUserDetails.contactNumber"
        class="input"
        type="text"
      />

      <hr />

      <div v-if="error" class="error">
        <h3>Please ensure that all fields are filled in</h3>
      </div>

      <div class="button">
        <h3 v-on:click="signUp()">Sign-up</h3>
      </div>
    </div>
  </div>
</template>

<style scoped>
.SignUp {
  height: 100vh;
}

.form-container {
  display: inline-block;
  border-radius: 10px;
  padding: 15px;
  background-color: #bc6c25;
  width: 25vw;
}

hr {
  margin-top: 15px;
  margin-bottom: 15px;
}

.error {
  background-color: rgb(243, 90, 90);
  margin: 10px;
  padding: 10px;
  border-radius: 10px;
}

.input {
  width: 20vw;
  background-color: #fefae0;
  padding: 5px;
  border-radius: 10px;
  border-style: none;
}
</style>

<script>
export default {
  data() {
    return {
      createUserDetails: {
        username: null,
        password: null,
        email: null,
        contactNumber: null,
      },
      error: false,
    };
  },
  methods: {
    signUp() {
      if (
        this.createUserDetails.username &&
        this.createUserDetails.password &&
        this.createUserDetails.email &&
        this.createUserDetails.contactNumber
      ) {
        this.error = false;
        this.$router.push({ name: "Events" });
      } else {
        this.error = true;
      }
    },
  },
};
</script>
