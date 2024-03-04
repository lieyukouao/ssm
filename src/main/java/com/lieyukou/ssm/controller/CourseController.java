package com.lieyukou.ssm.controller;


import cn.dev33.satoken.annotation.SaCheckLogin;
import com.lieyukou.ssm.bean.Course;

import com.lieyukou.ssm.common.entity.Result;
import com.lieyukou.ssm.mapper.CourseMapper;
import jakarta.annotation.Resource;
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
 * @since 2024-02-22
 */
@RestController
@RequestMapping("/course")
@CrossOrigin
public class CourseController {

    @Resource
    CourseMapper courseMapper;

    @SaCheckLogin
    @GetMapping("/all")
    public Result<List<Course>> getAllCourse(){


        return Result.ok(courseMapper.selectList(null));


    }
}

