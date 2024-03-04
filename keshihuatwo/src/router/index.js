import Vue from "vue"
import VueRouter from "vue-router"
//引入路由文件

import Home from '@/pages/Home'
import Search from '@/pages/Search'
import Login from '@/pages/Login'
import Register from '@/pages/Register'

Vue.use(VueRouter);

const router = new VueRouter({
    routes: [
        {
            path: "/home",
            component: Home,
            beforeEnter: (to, from, next) => {
                // 设置背景图片
                document.body.style.background = 'url("@/assets/logo.png")  top center';
                next();
            }
        },
        {
            path: "/search",
            component: Search
        },
        {
            path: "/login",
            component: Login
        },
        {
            path: "/register",
            component: Register
        },
        {
            path: "*",
            redirect: '/home'
        },

    ],


})

// 全局后置钩子，用于当离开特定路由时移除背景
router.afterEach((to, from) => {
    // 如果离开的是 /home 路由，移除背景图片
    if (from.path === '/home') {
        document.body.style.background = '';
    }
})

export default router;