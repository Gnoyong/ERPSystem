package org.shop.dao;

import org.shop.pojo.Iou;
import java.util.List;

/**
 * (Iou)表数据库访问层
 *
 * @author yong
 * @since 2023-11-27 21:18:11
 */
public interface IouDao {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    Iou queryById(Long id);

    /**
     * 查询指定行数据
     *
     * @param iou      查询条件
     * @param pageable 分页对象
     * @return 对象列表
     */
//    List<Iou> queryAllByLimit(Iou iou, Pageable pageable);

    /**
     * 统计总行数
     *
     * @param iou 查询条件
     * @return 总行数
     */
    long count(Iou iou);

    /**
     * 新增数据
     *
     * @param iou 实例对象
     * @return 影响行数
     */
    int insert(Iou iou);

    /**
     * 批量新增数据（MyBatis原生foreach方法）
     *
     * @param entities List<Iou> 实例对象列表
     * @return 影响行数
     */
    int insertBatch(List<Iou> entities);

    /**
     * 批量新增或按主键更新数据（MyBatis原生foreach方法）
     *
     * @param entities List<Iou> 实例对象列表
     * @return 影响行数
     * @throws org.springframework.jdbc.BadSqlGrammarException 入参是空List的时候会抛SQL语句错误的异常，请自行校验入参
     */
    int insertOrUpdateBatch(List<Iou> entities);

    /**
     * 修改数据
     *
     * @param iou 实例对象
     * @return 影响行数
     */
    int update(Iou iou);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 影响行数
     */
    int deleteById(Long id);

}

