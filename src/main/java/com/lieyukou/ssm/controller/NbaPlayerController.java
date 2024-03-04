package com.lieyukou.ssm.controller;


import cn.dev33.satoken.annotation.SaCheckLogin;
import com.lieyukou.ssm.bean.NbaPlayer;
import com.lieyukou.ssm.common.entity.Result;
import com.lieyukou.ssm.mapper.NbaPlayerMapper;
import com.lieyukou.ssm.service.NbaPlayerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author lieyukou
 * @since 2024-02-20
 */
@RestController
@RequestMapping("/player")
@CrossOrigin
public class NbaPlayerController {
    @Autowired
    NbaPlayerService nbaPlayerService;
    @Autowired
    NbaPlayerMapper nbaPlayerMapper;

    @SaCheckLogin
    @GetMapping("/rank")
    public Result<List<NbaPlayer>> getAllNbaPlayerRank(){
        return Result.ok(nbaPlayerService.getAllNbaPlayerRank());


    }

    @SaCheckLogin
    @GetMapping("/a")
    public Result<NbaPlayer> ceshi(){
        return Result.ok(nbaPlayerMapper.getOneNbaPlayer());


    }

}

