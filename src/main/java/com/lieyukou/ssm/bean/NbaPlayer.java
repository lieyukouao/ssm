package com.lieyukou.ssm.bean;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.Version;
import com.baomidou.mybatisplus.annotation.TableId;
import java.io.Serializable;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * <p>
 * 
 * </p>
 *
 * @author lieyukou
 * @since 2024-02-20
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class NbaPlayer implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 主键id
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    /**
     * 排名
     */
    private Integer ranks;

    /**
     * 球员名称
     */
    private String player;

    /**
     * 球队
     */
    private String team;

    /**
     * 得分
     */
    private Float score;

    /**
     * 命中出手
     */
    private String hitShot;

    /**
     * 命中率
     */
    private String hitRate;

    /**
     * 命中-三分
     */
    private String hitThree;

    /**
     * 三分命中率
     */
    private String threeRate;

    /**
     * 命中-罚球
     */
    private String hitPenalty;

    /**
     * 罚球命中率
     */
    private String penaltyRate;

    /**
     * 场次
     */
    private Integer session;

    /**
     * 上场时间
     */
    private Float playingTime;


}
