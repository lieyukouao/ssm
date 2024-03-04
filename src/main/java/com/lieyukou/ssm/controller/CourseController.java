package com.lieyukou.ssm.controller;


import com.lieyukou.ssm.bean.Course;

import com.lieyukou.ssm.mapper.CourseMapper;
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
 * @since 2024-02-22
 */
@RestController
@RequestMapping("/course")
@CrossOrigin
public class CourseController {

    @Autowired
    CourseMapper courseMapper;

    @GetMapping("/all")
    public List<Course> getAllCourse(){


        return courseMapper.selectList(null);


    }
}

