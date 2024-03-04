package com.lieyukou.ssm.controller;


import com.lieyukou.ssm.bean.NbaPlayer;
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

    @GetMapping("/rank")
    public List<NbaPlayer> getAllNbaPlayerRank(){
        return nbaPlayerService.getAllNbaPlayerRank();


    }

    @GetMapping("/a")
    public NbaPlayer ceshi(){
        return nbaPlayerMapper.getOneNbaPlayer();


    }

}

