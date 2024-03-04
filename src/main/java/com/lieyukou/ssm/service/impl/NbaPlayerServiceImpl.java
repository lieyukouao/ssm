package com.lieyukou.ssm.service.impl;

import com.lieyukou.ssm.bean.NbaPlayer;
import com.lieyukou.ssm.mapper.NbaPlayerMapper;
import com.lieyukou.ssm.service.NbaPlayerService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author lieyukou
 * @since 2024-02-20
 */
@Service
public class NbaPlayerServiceImpl extends ServiceImpl<NbaPlayerMapper, NbaPlayer> implements NbaPlayerService {
    @Autowired
    NbaPlayerMapper nbaPlayerMapper;
    @Override
    public List<NbaPlayer> getAllNbaPlayerRank() {
        return nbaPlayerMapper.getAllNbaPlayerRank();

    }
}
