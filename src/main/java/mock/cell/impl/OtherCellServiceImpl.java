package mock.cell.impl;

import mock.cell.OtherCellService;
import org.springframework.stereotype.Component;

@Component
public class OtherCellServiceImpl implements OtherCellService {

    @Override
    public int buySome(int last) {
        return last - 1;
    }
}
