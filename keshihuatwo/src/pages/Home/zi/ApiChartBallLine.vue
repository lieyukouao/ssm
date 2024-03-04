<template>
  <div ref="apiChartBallLine"></div>
</template>

<script>
import axios from "axios";
import * as echarts from "echarts";

export default {
  name: "ApiChartBallLine",
  data() {
    return {
      chartData: null,
    };
  },
  mounted() {
    this.fetchData();
  },
  methods: {
    fetchData() {
      // 使用axios从API获取数据
      axios
        .get("http://localhost:8888/basketball/all")
        .then((response) => {
          // 数据获取成功，调用绘制图表的方法
          this.chartData = response.data;
          this.drawChart(response.data);
        })
        .catch((error) => {
          console.error("获取数据失败：", error);
        });
    },

    drawChart() {
      // 基于准备好的dom，初始化echarts实例
      const myChart = echarts.init(this.$refs.apiChartBallLine);
      console.log(this.chartData);

      // 指定图表的配置项和数据
      const option = {
        // 根据你的数据和需求配置图表
        title: {
          text: "折线图-球队投篮命中排名",
          left: "center",
        },
        tooltip: {},
        // legend: {
        //   data: ["得分"],
        // },
        xAxis: {
          data: this.chartData.map((item) => item.team),
          // axisLabel: {
          //   formatter: function (value) {
          //     return value.substring(0, 2); // 只显示前两个字符
          //   },
          // },
        },
        yAxis: { type: "value" },
        series: [
          {
            name: "时间",
            type: "line",
            data: this.chartData.map((item) => parseFloat(item.fieldGoalsMade)), // 假设这是Y轴的数据
          },
        ],
      };

      // 使用刚指定的配置项和数据显示图表。
      myChart.setOption(option);
    },
  },
};
</script>

<style scoped>
/* 你可以在这里添加一些样式 */
</style>
