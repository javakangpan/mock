package mock.service.impl;

import mock.cell.CoffeeCellService;
import mock.cell.OtherCellService;
import mock.model.Coffee;
import mock.service.CoffeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import java.util.List;

@Service
public class CoffeeServiceImpl implements CoffeeService {

    @Autowired
    private CoffeeCellService coffeeCellService;

    @Autowired
    private OtherCellService otherCellService;


    @Override
    public boolean isHasCoffee() {
        List<Coffee> list = coffeeCellService.selectAll();
        if (CollectionUtils.isEmpty(list)) {
            return false;
        }
        long count = list.stream().filter(e -> isNeed(e.getName())).count();
        if(count <= 0) {
            return false;
        }
        int last = buyOne(list.size());
        return otherCellService.buySome(last) > 0;
    }

    public static boolean isNeed(String coffeeName) {
        return "拿铁".equals(coffeeName);
    }

    private int buyOne(int count) {
        return count - 1;
    }
}
