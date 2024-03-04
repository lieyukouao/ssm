package com.lieyukou.ssm.controller;


import com.lieyukou.ssm.bean.NbaPlayer;
import com.lieyukou.ssm.service.BasketballStatsService;
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
 * @since 2024-02-21
 */
@RestController
@RequestMapping("/basketball")
@CrossOrigin
public class BasketballStatsController {
    @Autowired
    BasketballStatsService basketballStatsService;

    @GetMapping("/all")
    public List<NbaPlayer> getAllBasketball(){
        return basketballStatsService.getAllBasketball();


    }
}

