package com.lieyukou.ssm.service;

import com.lieyukou.ssm.bean.NbaPlayer;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author lieyukou
 * @since 2024-02-20
 */
public interface NbaPlayerService extends IService<NbaPlayer> {

    List<NbaPlayer> getAllNbaPlayerRank();
}
