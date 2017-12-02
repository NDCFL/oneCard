package com.fz.dao;

import com.fz.vo.Consume;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ConsumeDAO extends  BaseDAO<Consume>{

    double xfye(@Param("kh") String kh,@Param("xffs") int xffs);//余额
    List<Consume> listPage(@Param("startPage") int startPage, @Param("pageSize") int pageSize, @Param("kh") String kh);
}
