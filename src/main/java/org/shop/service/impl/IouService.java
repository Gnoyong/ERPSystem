package org.shop.service.impl;

import org.shop.dao.IouDao;
import org.shop.pojo.Iou;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * (Iou)表服务实现类
 *
 * @author yong
 * @since 2023-11-27 21:18:16
 */
@Service("iouService")
public class IouService {
    @Autowired
    private IouDao iouDao;

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    public Iou queryById(Long id) {
        return this.iouDao.queryById(id);
    }

    /**
     * 分页查询
     *
     * @param iou         筛选条件
     * @param pageRequest 分页对象
     * @return 查询结果
     */
/*    @Override
    public Page<Iou> queryByPage(Iou iou, PageRequest pageRequest) {
        long total = this.iouDao.count(iou);
        return new PageImpl<>(this.iouDao.queryAllByLimit(iou, pageRequest), pageRequest, total);
    }*/

    /**
     * 新增数据
     *
     * @param iou 实例对象
     * @return 实例对象
     */
    public Iou insert(Iou iou) {
        this.iouDao.insert(iou);
        return iou;
    }

    /**
     * 修改数据
     *
     * @param iou 实例对象
     * @return 实例对象
     */
    public Iou update(Iou iou) {
        this.iouDao.update(iou);
        return this.queryById(iou.getId());
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    public boolean deleteById(Long id) {
        return this.iouDao.deleteById(id) > 0;
    }


    public List<Iou> queryList(Iou iou) {
        return this.iouDao.queryList(iou);
    }
}
