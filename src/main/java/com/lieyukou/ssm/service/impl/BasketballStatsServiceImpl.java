package com.lieyukou.ssm.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.lieyukou.ssm.bean.BasketballStats;
import com.lieyukou.ssm.bean.NbaPlayer;
import com.lieyukou.ssm.mapper.BasketballStatsMapper;
import com.lieyukou.ssm.service.BasketballStatsService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import jakarta.annotation.Resource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author lieyukou
 * @since 2024-02-21
 */
@Service
public class BasketballStatsServiceImpl extends ServiceImpl<BasketballStatsMapper, BasketballStats> implements BasketballStatsService {
    @Resource
    BasketballStatsMapper basketballStatsMapper;


    @Override
    public List<NbaPlayer> getAllBasketball() {
        QueryWrapper queryWrapper = new QueryWrapper();
        queryWrapper.le("ranks", 10);
        List list = basketballStatsMapper.selectList(queryWrapper);
        return list;
    }
}
