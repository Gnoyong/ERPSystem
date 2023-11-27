package org.shop.service;

import org.shop.pojo.Iou;

/**
 * (Iou)表服务接口
 *
 * @author yong
 * @since 2023-11-27 21:18:16
 */
public interface IouService {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    Iou queryById(Long id);

    /**
     * 分页查询
     *
     * @param iou         筛选条件
     * @param pageRequest 分页对象
     * @return 查询结果
     */
//    Page<Iou> queryByPage(Iou iou, PageRequest pageRequest);

    /**
     * 新增数据
     *
     * @param iou 实例对象
     * @return 实例对象
     */
    Iou insert(Iou iou);

    /**
     * 修改数据
     *
     * @param iou 实例对象
     * @return 实例对象
     */
    Iou update(Iou iou);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    boolean deleteById(Long id);

}
