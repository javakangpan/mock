package mock.cell.impl;

import mock.cell.CoffeeCellService;
import mock.dao.CoffeeDao;
import mock.model.Coffee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class CoffeeCellServiceImpl implements CoffeeCellService {

    @Autowired
    private CoffeeDao coffeeDao;

    @Override
    public List<Coffee> selectAll() {
        return coffeeDao.selectAll();
    }


}
