package com.fz.dao;

import com.fz.vo.OrderItemsVo;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface OrderItemsDAO  extends  BaseDAO<OrderItemsVo>{
    List<OrderItemsVo> findList(String userCard);
    List<OrderItemsVo> listPage(@Param("startPage") int startPage, @Param("pageSize") int pageSize,@Param("cardId") String cardId);
}
