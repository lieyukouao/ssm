<!-- Dashboard.vue -->
<template>
  <div class="container">
    <div class="column left">
      <api-chart-vue class="row" />
      <api-chartline class="row" />
      <api-chart-pie class="row" />
    </div>
    <div class="column middle">
      <api-plan class="row" />
    </div>
    <div class="column right">
      <api-chart-ball-bar class="row" />
      <api-chart-ball-line class="row" />
      <api-chart-ball-pie class="row" />
    </div>
  </div>
</template>

<script>
// 导入所需的组件
import ApiChartVue from "@/pages/Home/zi/ApiChart.vue";
import ApiChartline from "@/pages/Home/zi/ApiChartline.vue";
import ApiChartPie from "@/pages/Home/zi/ApiChartPie.vue";
import ApiChartBallBar from "@/pages/Home/zi/ApiChartBallBar.vue";
import ApiChartBallLine from "@/pages/Home/zi/ApiChartBallLine.vue";
import ApiChartBallPie from "@/pages/Home/zi/ApiChartBallPie.vue";
import ApiPlan from "@/pages/Home/zi/ApiPlan.vue";

export default {
  name: "Home",
  components: {
    ApiChartVue,
    ApiChartline,
    ApiChartPie,
    ApiChartBallBar,
    ApiChartBallLine,
    ApiChartBallPie,
    ApiPlan,
  },
};
</script>

<!-- 你可以选择在这里或是在App.vue中定义相关的样式 -->
<style  scoped>
/* 样式内容 */
* {
  background: url("@/assets/images/bg.jpg") top center;
}
.container {
  display: flex;
  height: 100vh; /* 使用视口高度，使三列填满整个页面高度 */
}

.column {
  flex: 1; /* 三列平分宽度 */
  display: flex;
  flex-direction: column; /* 默认为列布局 */
}

.middle {
  display: flex;
}

.left,
.right {
  /* 左右两列的子项（行）平分高度 */
}

.row {
  flex: 1; /* 在左右两列中，行平分高度 */
  display: flex;
  justify-content: center; /* 行内容居中对齐 */
  align-items: center; /* 行内容居中对齐 */
  border: 1px solid black; /* 为了清晰看到分割，添加边框 */
}
</style>
