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
 * @since 2024-02-21
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class BasketballStats implements Serializable {

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
     * 球队
     */
    private String team;

    /**
     * 投篮-命中率
     */
    private String fieldGoalPercentage;

    /**
     * 投篮-命中
     */
    private String fieldGoalsMade;

    /**
     * 投篮-出手
     */
    private String fieldGoalsAttempted;

    /**
     * 三分-命中率
     */
    private String threePointPercentage;

    /**
     * 三分-命中
     */
    private String threePointMade;

    /**
     * 三分-出手
     */
    private String threePointAttempted;

    /**
     * 罚球-命中率
     */
    private String freeThrowPercentage;

    /**
     * 罚球-命中
     */
    private String freeThrowsMade;

    /**
     * 罚球-出手
     */
    private String freeThrowsAttempted;

    /**
     * 篮板-总篮板
     */
    private String totalRebounds;

    /**
     * 篮板-进攻
     */
    private String offensiveRebounds;

    /**
     * 篮板-防守
     */
    private String defensiveRebounds;

    /**
     * 助攻
     */
    private String assists;

    /**
     * 失误
     */
    private String turnovers;

    /**
     * 抢断
     */
    private String steals;

    /**
     * 盖帽
     */
    private String blocks;

    /**
     * 犯规
     */
    private String personalFouls;

    /**
     * 得分
     */
    private String points;


}
