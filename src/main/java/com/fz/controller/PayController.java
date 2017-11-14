package com.fz.controller;

import com.fz.comment.*;
import com.fz.comment.wechat.WechatAPI;
import com.fz.comment.wechat.WechatUtil;
import com.fz.service.OrderItemsService;
import com.fz.service.UsersService;
import com.fz.vo.OrderItemsVo;
import com.fz.vo.UsersVo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.Map;

@Controller
@RequestMapping("pay")
public class PayController {
    @Resource
    private UsersService usersService;
    @Resource
    private OrderItemsService orderItemsService;

    @RequestMapping("index")
    public String pay(HttpServletRequest req, HttpServletResponse resp, HttpSession session, BigDecimal userMoney,long id) throws IOException, ServletException {
        int code = Dll.macIsOnLine();
        req.setAttribute("status", code);
        if (userMoney != BigDecimal.valueOf(0) && code==1) {
            UsersVo usersVo = usersService.queryById(id);
            WechatUtil wechatUtil = new WechatUtil();
            Map<String, String> prepayResult = wechatUtil.prepayResult(usersVo.getOpenid(), req.getRemoteAddr(), "一卡通充值-微信支付",userMoney);
            // 正式付款需要提交的数据
            Map<String, String> payData = wechatUtil.payData(prepayResult);
            req.setAttribute("appId", WechatAPI.APP_ID);
            req.setAttribute("timeStamp", payData.get("timeStamp"));
            req.setAttribute("nonceStr", payData.get("nonceStr"));
            req.setAttribute("packages", payData.get("package"));
            req.setAttribute("paySign", payData.get("paySign"));
            req.setAttribute("userMoney", userMoney);
            req.setAttribute("cardid", usersVo.getUserCard());
       }
        return "qrpay"; // 预支付数据转发到页面，调用js支付
    }
    @RequestMapping("result")
    public void result(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ModelAndView modelAndView = new ModelAndView();
        System.out.println("***********************notify_url*************************");
        WechatUtil wechatUtil = new WechatUtil();
        Map<String, String> resultMap = wechatUtil.payResult(req);
        try {
            String resultCode = resultMap.get("result_code");
            if (resultCode != null && resultCode.equals("SUCCESS")) {

            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        wechatUtil.responsePayNotify(resp);
    }
}
