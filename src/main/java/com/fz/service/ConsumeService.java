package com.fz.service;

import com.fz.vo.Consume;
import com.fz.vo.OrderItemsVo;

import java.math.BigDecimal;
import java.util.List;

public interface ConsumeService extends  BaseService<Consume>{
    List<Consume> listPage(int startPage, int pageSize, String cardId);
    Double xfye(String cardId);
}
