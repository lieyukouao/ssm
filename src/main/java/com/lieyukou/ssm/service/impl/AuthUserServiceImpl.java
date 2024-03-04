package com.lieyukou.ssm.service.impl;

import cn.dev33.satoken.secure.SaSecureUtil;
import cn.dev33.satoken.stp.StpUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.lieyukou.ssm.bean.AuthUser;
import com.lieyukou.ssm.mapper.AuthUserMapper;
import com.lieyukou.ssm.service.AuthUserService;
import jakarta.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;


/**
 * 用户信息表(AuthUser)表服务实现类
 *
 * @author makejava
 * @since 2024-03-04 19:15:07
 */
@Service("authUserService")
public class AuthUserServiceImpl implements AuthUserService {
    @Resource
    private AuthUserMapper authUserMapper;

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public AuthUser queryById(Long id) {
        return this.authUserMapper.queryById(id);
    }



    /**
     * 新增数据
     *
     * @param authUser 实例对象
     * @return 实例对象
     */
    @Override
    public AuthUser insert(AuthUser authUser) {
        this.authUserMapper.insert(authUser);
        return authUser;
    }

    /**
     * 修改数据
     *
     * @param authUser 实例对象
     * @return 实例对象
     */
    @Override
    public AuthUser update(AuthUser authUser) {
        this.authUserMapper.update(authUser);
        return this.queryById(authUser.getId());
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Long id) {
        return this.authUserMapper.deleteById(id) > 0;
    }

    @Override
    public void register(AuthUser authUser) {
        authUser.setPassword(SaSecureUtil.md5BySalt(authUser.getPassword(),"lieyukou"));
         authUserMapper.insert(authUser);
    }

    @Override
    public String login(AuthUser authUser) {
        QueryWrapper<AuthUser> authUserQueryWrapper = new QueryWrapper<>();
        authUserQueryWrapper.eq("user_name",authUser.getUserName());
        authUser.setPassword(SaSecureUtil.md5BySalt(authUser.getPassword(),"lieyukou"));
        AuthUser user = authUserMapper.selectOne(authUserQueryWrapper);
        if(StringUtils.isEmpty(user)){
            return "用户名或密码错误";
        }
        StpUtil.login(user.getUserName());
        return StpUtil.getTokenValue();
    }
}
