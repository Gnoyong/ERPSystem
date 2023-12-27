package org.shop.controller;

import org.shop.pojo.Iou;
import org.shop.service.impl.IouService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * (Iou)表控制层
 *
 * @author yong
 * @since 2023-11-27 21:18:07
 */
@Controller
@RequestMapping("iou")
public class IouController {
    /**
     * 服务对象
     */
    @Autowired
    private IouService iouService;


    @RequestMapping("list")
    public String list(Model model, Iou iou) {
//        iou.setSh(1);
//        iou.setSj(1);
        List<Iou> list = iouService.queryList(iou);
        model.addAttribute("list", list);
        return "iou/list";
    }
}

