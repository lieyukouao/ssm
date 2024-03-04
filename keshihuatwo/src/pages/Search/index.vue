<template>
  <div class="full-screen">
    <h1 style="text-align: center">NBA分析模块</h1>

    <!-- <el-input type="textarea" :rows="5" placeholder="" v-model="output_text">
      </el-input> -->

    <textarea id="output_text" v-model="outputText"></textarea>

    <!-- <div>
      <el-input
        type="textarea"
        :rows="5"
        placeholder="请输入内容"
        v-model="inputText"
      >
      </el-input>
    </div> -->

    <textarea id="input_text" v-model="inputText"></textarea>

    <el-button type="primary" @click="start">立即提问</el-button>
    <!-- <button @click="start">立即提问</button> -->
  </div>
</template>

<script>
import CryptoJS from "crypto-js";
import { Base64 } from "js-base64";

export default {
  data() {
    return {
      inputText: "",
      outputText: "",
      APPID: "46ea929e", // 你的APPID
      API_SECRET: "NWQ1MDNkYWMxMmI4NjFkMDI4NmI3ZGE4", // 你的APISecret
      API_KEY: "4e7a42a7c45801ef1115c700ff1ef561", // 你的APIKey
      ttsWS: null,
      status: "init", // init, ttsing, error
    };
  },
  methods: {
    getWebsocketUrl() {
      return new Promise((resolve, reject) => {
        var url = "wss://spark-api.xf-yun.com/v3.5/chat";
        var host = location.host;
        var date = new Date().toGMTString();
        var algorithm = "hmac-sha256";
        var headers = "host date request-line";
        var signatureOrigin = `host: ${host}\ndate: ${date}\nGET /v3.5/chat HTTP/1.1`;
        var signatureSha = CryptoJS.HmacSHA256(
          signatureOrigin,
          this.API_SECRET
        );
        var signature = CryptoJS.enc.Base64.stringify(signatureSha);
        var authorizationOrigin = `api_key="${this.API_KEY}", algorithm="${algorithm}", headers="${headers}", signature="${signature}"`;
        var authorization = Base64.encode(authorizationOrigin);
        url = `${url}?authorization=${authorization}&date=${date}&host=${host}`;
        resolve(url);
      });
    },
    webSocketSend() {
      var params = {
        header: {
          app_id: this.APPID,
          uid: "fd3f47e4-d",
        },
        parameter: {
          chat: {
            domain: "generalv3.5",
            temperature: 0.5,
            max_tokens: 1024,
          },
        },
        payload: {
          message: {
            text: [
              {
                role: "user",
                content: "中国第一个皇帝是谁？",
              },
              {
                role: "assistant",
                content: "秦始皇",
              },
              {
                role: "user",
                content: "秦始皇修的长城吗",
              },
              {
                role: "assistant",
                content: "是的",
              },
              {
                role: "user",
                content: this.inputText,
              },
            ],
          },
        },
      };
      this.ttsWS.send(JSON.stringify(params));
    },
    result(resultData) {
      let jsonData = JSON.parse(resultData);
      console.log("WebSocket Response:", jsonData);
      this.outputText += jsonData.payload.choices.text[0].content;
      if (jsonData.header.code !== 0) {
        alert(`提问失败: ${jsonData.header.code}:${jsonData.header.message}`);
        return;
      }
      if (jsonData.header.code === 0 && jsonData.header.status === 2) {
        this.ttsWS.close();
        this.status = "init";
      }
    },
    start() {
      if (this.status === "init") {
        this.outputText = ""; // 清空回答历史
        this.status = "ttsing"; // 更新状态

        this.getWebsocketUrl().then((url) => {
          this.ttsWS = new WebSocket(url);
          this.ttsWS.onopen = () => {
            this.webSocketSend();
          };
          this.ttsWS.onmessage = (e) => {
            this.result(e.data);
          };
          this.ttsWS.onerror = (e) => {
            alert("WebSocket报错，请f12查看详情");
            this.status = "error";
          };
          this.ttsWS.onclose = () => {
            this.status = "init";
          };
        });
      }
    },
  },
};
</script>




<style  scoped>
* {
  /* margin: 0;
  padding: 0;
  box-sizing: border-box; */
}
.full-screen {
  width: 100%;
  height: 1080px;
  background: url("@/assets/images/preview.png") top center;
}
.page-main {
  text-align: center;
}
#input_text {
  padding: 8px;
  width: 500px; /* 或者你可以使用百分比 % 来相对于父元素居中 */
  height: 100px;

  border: 1px solid #ddd;
  outline: none;
  font-size: 13px;
  line-height: 1.5;
  margin: 0 auto; /* 添加这个来居中输入框 */
  display: block; /* 确保输入框是块级元素 */
  transform: scale(1.2); /* 放大输入框，1.2是放大的倍数，可以根据需要调整 */
  margin-top: 200px; /* 添加这个来设置输入框之间的间距 */
  background-color: transparent;
  color: #ffffff;
}
#output_text {
  padding: 8px;
  width: 400px; /* 或者你可以使用百分比 % 来相对于父元素居中 */
  height: 100px;
  border: 1px solid #ddd;
  outline: none;
  font-size: 13px;
  line-height: 1.5;
  margin: 0 auto; /* 添加这个来居中输入框 */
  display: block; /* 确保输入框是块级元素 */
  transform: scale(1.2); /* 放大输入框，1.2是放大的倍数，可以根据需要调整 */
  color: #ffffff;
  background-color: transparent; /* 设置背景为透明 */
}

button {
  margin-top: 100px;
  width: 100px;
  height: 36px;
  background-color: #187cff;
  border: none;
  border-radius: 3px;
  outline: none;
  color: #fff;
  font-size: 14px;
  display: block; /* 确保按钮是块级元素 */
  margin-left: auto; /* 添加这个来居中按钮 */
  margin-right: auto; /* 添加这个来居中按钮 */
  transform: scale(1.2); /* 放大按钮 */
}
</style>