package com.fz.serviceimpl;

import com.fz.dao.ConsumeDAO;
import com.fz.service.ConsumeService;
import com.fz.vo.Consume;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.math.BigDecimal;
import java.util.List;

@Service
public class ConsumeServiceImpl implements ConsumeService {
    @Resource
    private ConsumeDAO consumeDAO;
    @Override
    public Consume queryById(Long id) {
        return consumeDAO.queryById(id);
    }

    @Override
    public void update(Consume Consume) {
        consumeDAO.update(Consume);
    }

    @Override
    public void add(Consume Consume) {
        consumeDAO.add(Consume);
    }

    @Override
    public void delete(Long id) {
        consumeDAO.delete(id);
    }

    @Override
    public List<Consume> pagelist() {
        return consumeDAO.pagelist();
    }

    @Override
    public int count(String userCard) {
        return consumeDAO.count(userCard);
    }
    @Override
    public Double xfye(String userCard) {
        Double money=consumeDAO.xfye(userCard,0);
        if(money==null)
            money=0.0;
        System.out.println(money+"================================");
        Double money1=consumeDAO.xfye(userCard,1);
        if(money1==null)
            money1=0.0;
        System.out.println(money1+"================================");
        return money+money1;
    }

    @Override
    public List<Consume> listPage(int startPage, int pageSize, String cardId) {
        return consumeDAO.listPage(startPage,pageSize,cardId);
    }
}
