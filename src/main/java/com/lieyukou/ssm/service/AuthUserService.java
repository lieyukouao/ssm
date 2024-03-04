package com.lieyukou.ssm.service;


import com.lieyukou.ssm.bean.AuthUser;

/**
 * 用户信息表(AuthUser)表服务接口
 *
 * @author makejava
 * @since 2024-03-04 19:15:07
 */
public interface AuthUserService {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    AuthUser queryById(Long id);



    /**
     * 新增数据
     *
     * @param authUser 实例对象
     * @return 实例对象
     */
    AuthUser insert(AuthUser authUser);

    /**
     * 修改数据
     *
     * @param authUser 实例对象
     * @return 实例对象
     */
    AuthUser update(AuthUser authUser);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    boolean deleteById(Long id);

    void register(AuthUser authUser);

    String login(AuthUser authUser);
}
