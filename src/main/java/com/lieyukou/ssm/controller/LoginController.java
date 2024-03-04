package com.lieyukou.ssm.controller;

import com.lieyukou.ssm.bean.AuthUser;
import com.lieyukou.ssm.common.entity.Result;
import com.lieyukou.ssm.service.AuthUserService;
import jakarta.annotation.Resource;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/auth/")
public class LoginController {

    @Resource
    private AuthUserService authUserService;

    @PostMapping("login")
    public Result<String> login(@RequestBody AuthUser authUser){
        return Result.ok(authUserService.login(authUser));
    }

    @PostMapping("register")
    public Result<String> register(@RequestBody AuthUser authUser){
        authUserService.register(authUser);
        return Result.ok();
    }

}
