package mock.service.impl;

import lombok.extern.slf4j.Slf4j;
import mock.cell.CoffeeCellService;
import mock.cell.OtherCellService;
import mock.cell.impl.CoffeeCellServiceImpl;
import mock.dao.CoffeeDao;
import mock.model.Coffee;
import mock.service.CoffeeService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.powermock.api.mockito.PowerMockito;
import org.powermock.core.classloader.annotations.PowerMockIgnore;
import org.powermock.modules.junit4.PowerMockRunner;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.ArrayList;
import java.util.List;

import static org.junit.Assert.*;

//@RunWith(PowerMockRunner.class)
//@PowerMockIgnore("javax.management.*")
@RunWith(SpringRunner.class)
@SpringBootTest
@Slf4j
public class CoffeeServiceImplTest {
    /**
     * 模拟数据层的对象
     */
    @MockBean
    private CoffeeDao coffeeDao;

    @Autowired
    private CoffeeService coffeeService;


    @Test
    public void isHasCoffee() {
        List<Coffee> list = new ArrayList<>();
        Coffee coffee = Coffee.builder().id(1000L).name("拿铁").build();
        list.add(coffee);
        list.add(coffee);
        list.add(coffee);
        PowerMockito.when(coffeeDao.selectAll()).thenReturn(list);
        log.info("list size:{}",list.size());
        boolean isHas = coffeeService.isHasCoffee();
        assertTrue(isHas);
    }
}