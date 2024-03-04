<template>
  <header>
    <router-link to="/login" class="a">登入</router-link>
    <router-link to="/register" class="a">免费注册</router-link>
    <h1>NBA球队数据</h1>
    <!-- 占位元素，用于平衡布局 -->
  </header>
</template>
<script>
export default { name: "MyHeader" };
</script>

<style>
header {
  height: 1.15rem;
  background: url("~@/assets/images/head_bg.png");
  background-size: cover;
}
header h1 {
  font-size: 0.475rem;
  color: #fff;
  text-align: center;
  line-height: 1rem;
}
</style>