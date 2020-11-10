package mock.dao;

import mock.model.Coffee;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface CoffeeDao {
    List<Coffee> selectAll();
}
