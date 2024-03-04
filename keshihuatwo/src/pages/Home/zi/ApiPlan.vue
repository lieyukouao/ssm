<template>
  <div class="a">
    <el-table
      ref="singleTable"
      :data="tableData"
      :height="930"
      highlight-current-row
      @current-change="handleCurrentChange"
      style="width: 100%"
    >
      <el-table-column type="index" width="50"> </el-table-column>
      <el-table-column property="raceDate" label="日期" width="240">
      </el-table-column>
      <el-table-column property="raceTime" label="时间" width="80">
      </el-table-column>
      <el-table-column property="visitingTeam" label="客队" width="80">
      </el-table-column>
      <el-table-column property="hostTeam" label="主队" width="80">
      </el-table-column>
      <el-table-column fixed="right" label="操作" width="120">
        <template v-slot="{ row }">
          <el-button
            @click.prevent="deleteRow(row.id)"
            type="text"
            size="small"
          >
            移除
          </el-button>
        </template>
      </el-table-column>
    </el-table>
  </div>
</template>

<script>
import axios from "axios";
export default {
  data() {
    return {
      tableData: [],
      currentRow: null,
    };
  },
  mounted() {
    this.fetchData();
  },

  methods: {
    setCurrent(row) {
      this.$refs.singleTable.setCurrentRow(row);
    },
    handleCurrentChange(val) {
      this.currentRow = val;
    },
    deleteRow(row) {
      this.tableData.splice(row - 1, 1);
    },
    fetchData() {
      // 使用axios从API获取数据
      axios
        .get("http://localhost:8888/course/all")
        .then((response) => {
          // 数据获取成功，调用绘制图表的方法
          this.tableData = response.data;
          console.log(this.tableData);
        })
        .catch((error) => {
          console.error("获取数据失败：", error);
        });
    },
  },
};
</script>
<style scoped>
.el-table {
  color: bisque;
}
</style>