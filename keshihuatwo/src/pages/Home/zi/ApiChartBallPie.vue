<template>
  <div ref="apiChartBallPie"></div>
</template>

<script>
import axios from "axios";
import * as echarts from "echarts";

export default {
  name: "ApiChartBallPie",
  data() {
    return {
      chartData: null,
      meiguizhi: null,
    };
  },
  mounted() {
    this.fetchData();
  },
  methods: {
    dedaomeigui(x) {
      let data = [];
      for (let i = 0; i < x.length; i++) {
        let obj = x[i];
        data.push({ value: obj.points, name: obj.team });
      }
      return data;
    },
    fetchData() {
      // 使用axios从API获取数据
      axios
        .get("http://localhost:8888/basketball/all")
        .then((response) => {
          // 数据获取成功，调用绘制图表的方法
          this.chartData = response.data;
          this.meiguizhi = this.dedaomeigui(response.data);

          this.drawChart(response.data);
        })
        .catch((error) => {
          console.error("获取数据失败：", error);
        });
    },

    drawChart() {
      // 基于准备好的dom，初始化echarts实例
      const myChart = echarts.init(this.$refs.apiChartBallPie);

      // 指定图表的配置项和数据
      const option = {
        legend: {
          top: "bottom",
        },
        toolbox: {
          show: true,
          feature: {
            mark: { show: true },
            dataView: { show: true, readOnly: false },
            restore: { show: true },
            saveAsImage: { show: true },
          },
        },
        series: [
          {
            name: "饼图-得分占比",
            type: "pie",
            radius: ["40%", "75%"],
            center: ["50%", "50%"],
            roseType: "area",
            itemStyle: {
              borderRadius: 8,
            },
            data: this.meiguizhi,
            label: {
              show: true,
              formatter: "{b} : {d}%", // 显示数值和百分比
            },
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
