drop table if exists t_coffee;
create table t_coffee
(
   id                   bigint not null auto_increment,
   name                 varchar(100) not null,
   price                DOUBLE not null,
   state                integer not null,
   coffeeDesc           varchar(1000),
   create_time       	timestamp,
   update_time          timestamp,
   createdBy            varchar(100),
   updatedBy            varchar(100),
   primary key (id)
);
insert into t_coffee (name, price, state, coffeeDesc, create_time, update_time, createdBy, updatedBy) values ('浓缩咖啡(Espresso)', 29.00, 104, '浓缩咖啡（Espresso)，属于意式咖啡，就是我们平常用咖啡直接冲出来的那种，味道浓郁，入口微苦，咽后留香。适合上班族。', now(), now(), 'system', 'system');
insert into t_coffee (name, price, state, coffeeDesc, create_time, update_time, createdBy, updatedBy) values ('马琪雅朵(Machiatto)', 39.00, 104, '马琪雅朵（Machiatto），在浓缩咖啡中加上两大勺奶泡就成了一杯马琪雅朵。玛奇朵在意大利文里是印记、烙印的意思，所以象征着甜蜜的印记。', now(), now(), 'system', 'system');
insert into t_coffee (name, price, state, coffeeDesc, create_time, update_time, createdBy, updatedBy) values ('美式咖啡(Americano)', 19.00, 104, '美式咖啡（Americano），是最普通的咖啡，属于黑咖啡的一种。在浓缩咖啡中直接加入大量的水制成，口味比较淡，咖啡因含量较高。', now(), now(), 'system', 'system');
insert into t_coffee (name, price, state, coffeeDesc, create_time, update_time, createdBy, updatedBy) values ('白咖啡(Flat white)', 39.00, 104, '白咖啡（Flat white），是马来西亚的特产，白咖啡的颜色并不是白色，但是比普通咖啡更清淡柔和，白咖啡味道纯正，甘醇芳香。', now(), now(), 'system', 'system');
insert into t_coffee (name, price, state, coffeeDesc, create_time, update_time, createdBy, updatedBy) values ('拿铁咖啡(Caffè Latte)', 19.00, 104, '拿铁咖啡（Caffè Latte），浓缩咖啡与牛奶的经典混合。咖啡在底层，牛奶在咖啡上面，最上面是一层奶泡。也可以放一些焦糖就成了焦糖拿铁。', now(), now(), 'system', 'system');
insert into t_coffee (name, price, state, coffeeDesc, create_time, update_time, createdBy, updatedBy) values ('康宝蓝(Con Panna)', 49.00, 104, '康宝蓝（Con Panna），意大利咖啡品种之一，与玛琪雅朵齐名，由浓缩咖啡喝鲜奶油混合而成，咖啡在下面，鲜奶油在咖啡上面。', now(), now(), 'system', 'system');
insert into t_coffee (name, price, state, coffeeDesc, create_time, update_time, createdBy, updatedBy) values ('卡布奇诺(Cappuccino)', 29.00, 104, '卡布奇诺（Cappuccino），以等量的浓缩咖啡和蒸汽泡沫牛奶混合的意大利咖啡。咖啡的颜色就像卡布奇诺教会的修士在深褐色的外衣上覆上一条头巾一样，咖啡因此得名。', now(), now(), 'system', 'system');
insert into t_coffee (name, price, state, coffeeDesc, create_time, update_time, createdBy, updatedBy) values ('摩卡咖啡(CafeMocha)', 9.00, 104, '摩卡咖啡（CafeMocha），是一种最古老的咖啡，是由意大利浓缩咖啡、巧克力酱、鲜奶油和牛奶混合而成，摩卡得名于有名的摩卡港。其独特之甘，酸，苦味，极为优雅。为一般高级人士所喜爱的优良品种。普通皆单品饮用。饮之润滑可口。醇味历久不退。若调配综合咖啡，更是一种理想的品种', now(), now(), 'system', 'system');
insert into t_coffee (name, price, state, coffeeDesc, create_time, update_time, createdBy, updatedBy) values ('焦糖玛琪朵(Caramel Macchiato)', 29.00, 104, '焦糖玛琪朵（Caramel Macchiato），由香浓热牛奶上加入浓缩咖啡、香草，最后淋上纯正焦糖而成，“Caramel”就是焦糖的意思。焦糖玛琪朵就是加了焦糖的Macchiato，代表“甜蜜的印记”。', now(), now(), 'system', 'system');
insert into t_coffee (name, price, state, coffeeDesc, create_time, update_time, createdBy, updatedBy) values ('维也纳咖啡(Viennese)', 39.00, 104, '维也纳咖啡（Viennese），奥地利最著名的咖啡，由浓缩咖啡、鲜奶油和巧克力混合而成。奶油柔和爽口，咖啡润滑微苦，糖浆即溶未溶。', now(), now(), 'system', 'system');
insert into t_coffee (name, price, state, coffeeDesc, create_time, update_time, createdBy, updatedBy) values ('爱尔兰咖啡(Irish Coffee)', 39.00, 104, '爱尔兰咖啡（Irish Coffee），是一种既像酒又像咖啡的咖啡，由爱尔兰威士忌加入浓缩咖啡中，再在最上面放上一层鲜奶油构制而成。可以这样说，爱尔兰咖啡是一种含有酒精的咖啡。', now(), now(), 'system', 'system');