package com.lieyukou.ssm.framework;


import com.lieyukou.ssm.common.entity.Result;
import com.lieyukou.ssm.common.exception.GlobalException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.springframework.validation.BindException;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.MissingPathVariableException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

/**
 * 全局异常处理器
 * 
 * @author ruoyi
 */
@RestControllerAdvice
public class GlobalExceptionHandler
{
    private static final Logger log = LoggerFactory.getLogger(GlobalExceptionHandler.class);


    /**
     * 系统异常
     */
    @ExceptionHandler(GlobalException.class)
    public Result handleException(Exception e, GlobalException request)
    {
        String requestURI = request.getDetailMessage();
        log.error("请求地址'{}',发生系统异常.", requestURI, e);
        return Result.fail(e.getMessage());
    }

    /**
     * 自定义验证异常
     */
    @ExceptionHandler(BindException.class)
    public Result handleBindException(BindException e)
    {
        log.error(e.getMessage(), e);
        String message = e.getAllErrors().get(0).getDefaultMessage();
        return Result.fail(message);
    }

    /**
     * 自定义验证异常
     */
    @ExceptionHandler(MethodArgumentNotValidException.class)
    public Object handleMethodArgumentNotValidException(MethodArgumentNotValidException e)
    {
        log.error(e.getMessage(), e);
        String message = e.getBindingResult().getFieldError().getDefaultMessage();
        return Result.fail(message);
    }

}
