package com.lieyukou.ssm.service;

import com.lieyukou.ssm.bean.BasketballStats;
import com.baomidou.mybatisplus.extension.service.IService;
import com.lieyukou.ssm.bean.NbaPlayer;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author lieyukou
 * @since 2024-02-21
 */
public interface BasketballStatsService extends IService<BasketballStats> {

    List<NbaPlayer> getAllBasketball();
}
