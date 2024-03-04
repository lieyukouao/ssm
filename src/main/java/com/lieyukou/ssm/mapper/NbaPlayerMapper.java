package com.lieyukou.ssm.mapper;

import com.lieyukou.ssm.bean.NbaPlayer;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author lieyukou
 * @since 2024-02-20
 */
@Mapper
public interface NbaPlayerMapper extends BaseMapper<NbaPlayer> {
    public NbaPlayer getOneNbaPlayer();

    List<NbaPlayer> getAllNbaPlayerRank();
}
