use yuapi;

-- 接口信息

-- drop table if exists yuapi.`interface_info`;
create table if not exists yuapi.`interface_info`
(
    `id` bigint not null auto_increment comment '主键' primary key,
    `name` varchar(256) not null comment '名称',
    `description` varchar(256) null comment '描述',
    `url` varchar(512) not null comment '接口地址',
    `requestParams` text null comment '请求参数',
    `requestHeader` text null comment '请求头',
    `responseHeader` text null comment '响应头',
    `status` int default 0 not null comment '接口状态（0-关闭 1-开启）',
    `method` varchar(256) not null comment '请求类型',
    `userId` bigint not null comment '创建人',
    `createTime` datetime default CURRENT_TIMESTAMP not null comment '创建时间',
    `updateTime` datetime default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '更新时间',
    `isDeleted` tinyint default 0 not null comment '是否删除(0-未删, 1-已删)'
    ) comment '接口信息',charset=utf8;

insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('丁绍辉', '徐伟宸', 'www.billy-gleichner.com', '汪雪松', '田天磊', 0, '方鹏飞', 406206);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('孟文', '于志强', 'www.sid-boehm.info', '张浩宇', '蒋钰轩', 0, '蔡驰', 300901668);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('江语堂', '魏明哲', 'www.cecille-rodriguez.info', '谭皓轩', '苏远航', 0, '许鹤轩', 317493423);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('于嘉熙', '姚博文', 'www.kayce-altenwerth.co', '董昊强', '秦鹤轩', 0, '余天磊', 8380592);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('罗笑愚', '马炎彬', 'www.austin-satterfield.biz', '余志泽', '苏炫明', 0, '孙明辉', 154);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('韦鑫鹏', '董胤祥', 'www.raymon-weber.com', '宋伟宸', '胡聪健', 0, '莫昊焱', 2363);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('吴智渊', '林志泽', 'www.angelina-bailey.name', '顾鑫鹏', '莫凯瑞', 0, '韩子涵', 166372992);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('顾振家', '贾浩宇', 'www.reatha-herzog.info', '戴胤祥', '罗涛', 0, '郑晟睿', 7743);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('武鹭洋', '陈君浩', 'www.wesley-pfannerstill.org', '顾聪健', '秦明辉', 0, '曾炫明', 321);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('任志泽', '林烨伟', 'www.teodoro-paucek.org', '冯果', '郑思淼', 0, '余乐驹', 35819);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('沈黎昕', '龚伟泽', 'www.cherise-kautzer.info', '傅天宇', '薛弘文', 0, '姚越泽', 5421345);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('萧天翊', '姚思聪', 'www.charlsie-cummings.com', '潘苑博', '毛弘文', 0, '于俊驰', 5081442066);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('谭智渊', '金立辉', 'www.jamee-blick.name', '程伟诚', '金建辉', 0, '吕文', 650231937);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('郭思淼', '崔鹏涛', 'www.jordon-gutmann.info', '范文博', '白子涵', 0, '杨鸿煊', 3407464);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('江志泽', '孔熠彤', 'www.bertram-funk.com', '张晟睿', '张健柏', 0, '陈智宸', 27108649);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('陆炎彬', '胡思', 'www.mariam-zulauf.biz', '梁天宇', '洪凯瑞', 0, '马航', 76);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('严鸿煊', '曾立诚', 'www.burt-rolfson.org', '邵楷瑞', '陆健雄', 0, '林煜祺', 68);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('朱健雄', '罗志泽', 'www.juan-powlowski.co', '夏嘉懿', '周正豪', 0, '李志泽', 68);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('邵涛', '谢煜祺', 'www.amelia-okon.name', '石文', '马伟宸', 0, '陆智渊', 302);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('王鹏飞', '苏黎昕', 'www.aldo-fay.name', '吕鹏涛', '邱梓晨', 0, '陈峻熙', 213);

-- 用户调用接口关系表
create table if not exists yuapi.`user_interface_info`
(
    `id` bigint not null auto_increment comment '主键' primary key,
    `userId` bigint not null comment '调用用户id',
    `interfaceInfoId` bigint not null comment '接口id',
    `totalNum` int default 0 not null comment '总调用次数',
    `leftNum` int default 0 not null comment '剩余调用次数',
    `status` int default 0 not null comment '0-正常，1-禁用',
    `createTime` datetime default CURRENT_TIMESTAMP not null comment '创建时间',
    `updateTime` datetime default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '更新时间',
    `isDeleted` tinyint default 0 not null comment '是否删除(0-未删, 1-已删)'
) comment '用户调用接口关系',charset=utf8;
