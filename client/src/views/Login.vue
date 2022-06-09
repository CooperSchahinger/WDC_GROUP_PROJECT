<template>
  <div class="login">
    <h1>Login</h1>
    <div class="form-container">
      <h3>Username</h3>
      <input class="input" v-model="userDetails.username" type="text" />
      <h3>Password</h3>
      <input class="input" v-model="userDetails.password" type="text" />

      <div v-if="error" class="error">
        <h3>Please enter a username and password</h3>
      </div>

      <hr />

      <div class="login-button">
        <h3 v-on:click="redirectToEvents()">Login</h3>
      </div>

      <hr />

      <div class="col">
        <a href="#" class="facebook">
          <i class="fa fa-facebook fa-fw"></i> Sign in with Facebook
        </a>
        <br>
        <br>
        <a href="#" class="google">
          <i class="fa fa-google fa-fw"></i> Sign with Google+
        </a>
        <br>
        <br>
        <a href="#" class="github">
          <i class="fa fa-github fa-fw"></i> Sign in with Github
        </a>
      </div>

      <h3>Haven't got an account? </h3>
      <div class="button">
        <h3 v-on:click="redirectToSignUp()">Sign up now</h3>
      </div>
    </div>
  </div>
</template>

<style scoped>
.login {
  height: 100vh;
}

hr {
  margin-top: 20px;
  margin-bottom: 20px;
}

h1,
h3 {
  color: #fefae0;
  margin-top: 10px;
  margin-bottom: 10px;
}

.button { /*sign up button */
  display: inline-block;
  background-color: #e9967a;
  border-radius: 10px;
  width: 10vw;
}

.login-button {
  display: inline-block;
  background-color: #e9967a;
  border-radius: 10px;
  width: 5vw;
}

.input {
  width: 20vw;
  background-color: #fefae0;
  padding: 5px;
  border-radius: 10px;
  border-style: none;
}

.error {
  background-color: rgb(243, 90, 90);
  margin: 20px;
  padding: 20px;
  border-radius: 10px;
}

.form-container {
  display: inline-block;
  border-radius: 10px;
  padding: 10px;
  background-color: #bc6c25;
  width: 25vw;
}

.facebook {
  background-color: #3B5998;
  color: white;
  padding: 5px;
  border-radius: 10px;
}

.google {
  background-color: #dd4b39;
  color: white;
  padding: 5px;
  border-radius: 10px;
}

.github {
  background-color: #24292e;
  color: white;
  padding: 5px;
  border-radius: 10px;
}

.col {
  float: center;
  width: 20vw;
  margin-left: 30px;
  padding: 5px;
}

</style>

<script>
export default {
  data() {
    return {
      userDetails: {
        username: null,
        password: null,
      },
      error: false,
    };
  },
  methods: {
    redirectToEvents() {
      if ((this.userDetails.username = !null && this.userDetails.password)) {
        this.error = false;
        this.$router.push({ name: "Events" });
      } else {
        this.error = true;
      }
    },
    redirectToSignUp() {
      this.error = false;

      this.$router.push({ name: "SignUp" });
    },
  },
};
</script>
