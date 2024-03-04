<template>
  <div><my-header-vue /> <router-view></router-view></div>
</template>

<script>
import MyHeaderVue from "./components/Header/MyHeader.vue";
export default {
  name: "App",
  components: { MyHeaderVue },
};
</script>

<style>
</style>
