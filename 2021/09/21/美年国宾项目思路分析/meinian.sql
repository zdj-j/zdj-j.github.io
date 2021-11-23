/*
 Navicat Premium Data Transfer

 Source Server         : Data
 Source Server Type    : MySQL
 Source Server Version : 50730
 Source Host           : localhost:3306
 Source Schema         : meinian

 Target Server Type    : MySQL
 Target Server Version : 50730
 File Encoding         : 65001

 Date: 21/09/2021 00:37:41
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_address
-- ----------------------------
DROP TABLE IF EXISTS `t_address`;
CREATE TABLE `t_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `addressName` varchar(255) DEFAULT NULL,
  `lng` varchar(255) DEFAULT NULL,
  `lat` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of t_address
-- ----------------------------
BEGIN;
INSERT INTO `t_address` VALUES (1, '深圳市宝安区尚硅谷(深圳校区)', '113.844656', '22.632231');
INSERT INTO `t_address` VALUES (2, '深圳市世界之窗', '113.97939921156106', '22.540746033109636');
INSERT INTO `t_address` VALUES (3, '深圳市宝安区深圳宝安国际机场-T3航站楼', '113.819598', '22.631062');
INSERT INTO `t_address` VALUES (6, '深圳市北站', '114.03552911268908', '22.615107645742687');
INSERT INTO `t_address` VALUES (8, '深圳市光明区政府', '113.94256006193123', '22.754465883635367');
INSERT INTO `t_address` VALUES (9, '深圳市西部硅谷大厦', '113.8444607884076', '22.6320909124466');
INSERT INTO `t_address` VALUES (10, '深圳市莲花山公园', '114.06519268773812', '22.559256676825059');
INSERT INTO `t_address` VALUES (18, '深圳市宝安区羊台山森林公园', '113.97127', '22.657618');
INSERT INTO `t_address` VALUES (24, '深圳市宝安区宝安公园', '113.909263', '22.592267');
INSERT INTO `t_address` VALUES (26, '深圳市盐田区大梅沙海滨公园', '114.314011', '22.598196');
COMMIT;

-- ----------------------------
-- Table structure for t_member
-- ----------------------------
DROP TABLE IF EXISTS `t_member`;
CREATE TABLE `t_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fileNumber` varchar(32) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `sex` varchar(8) DEFAULT NULL,
  `idCard` varchar(18) DEFAULT NULL,
  `phoneNumber` varchar(11) DEFAULT NULL,
  `regTime` date DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `email` varchar(32) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `remark` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_member
-- ----------------------------
BEGIN;
INSERT INTO `t_member` VALUES (82, NULL, '小明', '1', '123456789000999999', '18544279942', '2019-03-08', NULL, NULL, NULL, NULL);
INSERT INTO `t_member` VALUES (83, NULL, '美丽', '1', '132333333333333', '13412345678', '2019-04-11', NULL, NULL, NULL, NULL);
INSERT INTO `t_member` VALUES (84, NULL, '小星星', NULL, NULL, '18343569942', '2019-03-13', NULL, NULL, NULL, NULL);
INSERT INTO `t_member` VALUES (85, NULL, '小强', NULL, NULL, '18344249942', '2019-05-06', NULL, NULL, NULL, NULL);
INSERT INTO `t_member` VALUES (86, NULL, '红康', NULL, NULL, '18544579942', '2020-06-04', NULL, NULL, NULL, NULL);
INSERT INTO `t_member` VALUES (87, NULL, '大海', NULL, NULL, '18544274442', '2020-07-06', NULL, NULL, NULL, NULL);
INSERT INTO `t_member` VALUES (88, NULL, '小婷', NULL, NULL, '18544269942', '2020-08-10', NULL, NULL, NULL, NULL);
INSERT INTO `t_member` VALUES (89, NULL, '晓晓', NULL, NULL, '18544339942', '2020-09-01', NULL, NULL, NULL, NULL);
INSERT INTO `t_member` VALUES (90, NULL, '纯生', NULL, NULL, '18544669942', '2020-10-02', NULL, NULL, NULL, NULL);
INSERT INTO `t_member` VALUES (91, NULL, '闰土', NULL, NULL, '18544779942', '2021-02-01', NULL, NULL, NULL, NULL);
INSERT INTO `t_member` VALUES (92, NULL, '波波', '2', '234234145432121345', '18019286521', '2021-05-19', NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) DEFAULT NULL COMMENT '员会id',
  `orderDate` date DEFAULT NULL COMMENT '约预日期',
  `orderType` varchar(8) DEFAULT NULL COMMENT '约预类型 电话预约/微信预约',
  `orderStatus` varchar(8) DEFAULT NULL COMMENT '预约状态（是否旅游）',
  `setmeal_id` int(11) DEFAULT NULL COMMENT '餐套id',
  PRIMARY KEY (`id`),
  KEY `key_member_id` (`member_id`),
  KEY `key_setmeal_id` (`setmeal_id`),
  CONSTRAINT `key_member_id` FOREIGN KEY (`member_id`) REFERENCES `t_member` (`id`),
  CONSTRAINT `key_setmeal_id` FOREIGN KEY (`setmeal_id`) REFERENCES `t_setmeal` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_order
-- ----------------------------
BEGIN;
INSERT INTO `t_order` VALUES (1, 84, '2020-02-01', '微信预约', '已出游', 3);
INSERT INTO `t_order` VALUES (2, 84, '2020-02-17', '微信预约', '未出游', 3);
INSERT INTO `t_order` VALUES (3, 84, '2020-02-01', '微信预约', '未出游', 3);
INSERT INTO `t_order` VALUES (4, 84, '2020-02-17', '微信预约', '已出游', 4);
INSERT INTO `t_order` VALUES (5, 84, '2020-02-09', '微信预约', '未出游', 4);
INSERT INTO `t_order` VALUES (6, 84, '2020-02-09', '微信预约', '已出游', 4);
INSERT INTO `t_order` VALUES (7, 84, '2020-02-18', '微信预约', '未出游', 5);
INSERT INTO `t_order` VALUES (8, 84, '2020-02-10', '微信预约', '未出游', 6);
INSERT INTO `t_order` VALUES (9, 84, '2020-02-10', '微信预约', '未出游', 6);
INSERT INTO `t_order` VALUES (10, 84, '2020-02-13', '微信预约', '未出游', 7);
INSERT INTO `t_order` VALUES (17, 84, '2020-02-06', '微信预约', '已出游', 12);
INSERT INTO `t_order` VALUES (20, 82, '2021-09-16', '微信预约', '未出游', 3);
COMMIT;

-- ----------------------------
-- Table structure for t_ordersetting
-- ----------------------------
DROP TABLE IF EXISTS `t_ordersetting`;
CREATE TABLE `t_ordersetting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderDate` date DEFAULT NULL COMMENT '约预日期',
  `number` int(11) DEFAULT NULL COMMENT '可预约人数',
  `reservations` int(11) DEFAULT NULL COMMENT '已预约人数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=172 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_ordersetting
-- ----------------------------
BEGIN;
INSERT INTO `t_ordersetting` VALUES (137, '2021-09-01', 100, 50);
INSERT INTO `t_ordersetting` VALUES (138, '2021-09-02', 100, 100);
INSERT INTO `t_ordersetting` VALUES (139, '2021-09-03', 100, 99);
INSERT INTO `t_ordersetting` VALUES (140, '2021-09-04', 100, 0);
INSERT INTO `t_ordersetting` VALUES (141, '2021-09-05', 100, 0);
INSERT INTO `t_ordersetting` VALUES (142, '2021-09-06', 100, 0);
INSERT INTO `t_ordersetting` VALUES (143, '2021-09-07', 100, 0);
INSERT INTO `t_ordersetting` VALUES (144, '2021-09-08', 100, 0);
INSERT INTO `t_ordersetting` VALUES (145, '2021-09-09', 100, 0);
INSERT INTO `t_ordersetting` VALUES (146, '2021-09-10', 100, 0);
INSERT INTO `t_ordersetting` VALUES (147, '2021-09-11', 100, 0);
INSERT INTO `t_ordersetting` VALUES (148, '2021-09-12', 100, 0);
INSERT INTO `t_ordersetting` VALUES (149, '2021-09-13', 100, 0);
INSERT INTO `t_ordersetting` VALUES (150, '2021-09-14', 100, 0);
INSERT INTO `t_ordersetting` VALUES (151, '2021-09-15', 100, 1);
INSERT INTO `t_ordersetting` VALUES (152, '2021-09-16', 100, 2);
INSERT INTO `t_ordersetting` VALUES (153, '2021-09-17', 120, 0);
INSERT INTO `t_ordersetting` VALUES (154, '2021-09-18', 100, 0);
INSERT INTO `t_ordersetting` VALUES (155, '2021-09-19', 100, 0);
INSERT INTO `t_ordersetting` VALUES (156, '2021-09-20', 100, 0);
INSERT INTO `t_ordersetting` VALUES (157, '2021-09-21', 100, 0);
INSERT INTO `t_ordersetting` VALUES (158, '2021-09-22', 100, 0);
INSERT INTO `t_ordersetting` VALUES (159, '2021-09-23', 100, 0);
INSERT INTO `t_ordersetting` VALUES (160, '2021-09-24', 100, 0);
INSERT INTO `t_ordersetting` VALUES (161, '2021-09-25', 100, 0);
INSERT INTO `t_ordersetting` VALUES (162, '2021-09-26', 100, 0);
INSERT INTO `t_ordersetting` VALUES (163, '2021-09-27', 100, 0);
INSERT INTO `t_ordersetting` VALUES (164, '2021-09-28', 100, 0);
INSERT INTO `t_ordersetting` VALUES (165, '2021-09-29', 100, 0);
INSERT INTO `t_ordersetting` VALUES (166, '2021-09-30', 100, 0);
INSERT INTO `t_ordersetting` VALUES (167, '2021-10-01', 100, 0);
INSERT INTO `t_ordersetting` VALUES (168, '2021-10-02', 100, 0);
INSERT INTO `t_ordersetting` VALUES (169, '2021-10-03', 100, 0);
INSERT INTO `t_ordersetting` VALUES (170, '2021-10-04', 100, 0);
INSERT INTO `t_ordersetting` VALUES (171, '2021-10-05', 50, 0);
COMMIT;

-- ----------------------------
-- Table structure for t_permission
-- ----------------------------
DROP TABLE IF EXISTS `t_permission`;
CREATE TABLE `t_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  `keyword` varchar(64) DEFAULT NULL,
  `description` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_permission
-- ----------------------------
BEGIN;
INSERT INTO `t_permission` VALUES (1, '新增自由行', 'TRAVELITEM_ADD', NULL);
INSERT INTO `t_permission` VALUES (2, '删除自由行', 'TRAVELITEM_DELETE', NULL);
INSERT INTO `t_permission` VALUES (3, '编辑自由行', 'TRAVELITEM_EDIT', NULL);
INSERT INTO `t_permission` VALUES (4, '查询自由行', 'TRAVELITEM_QUERY', NULL);
INSERT INTO `t_permission` VALUES (5, '新增跟团游', 'TRAVELGROUP_ADD', NULL);
INSERT INTO `t_permission` VALUES (6, '删除跟团游', 'TRAVELGROUP_DELETE', NULL);
INSERT INTO `t_permission` VALUES (7, '编辑跟团游', 'TRAVELGROUP_EDIT', NULL);
INSERT INTO `t_permission` VALUES (8, '查询跟团游', 'TRAVELGROUP_QUERY', NULL);
INSERT INTO `t_permission` VALUES (9, '新增套餐', 'SETMEAL_ADD', NULL);
INSERT INTO `t_permission` VALUES (10, '删除套餐', 'SETMEAL_DELETE', NULL);
INSERT INTO `t_permission` VALUES (11, '编辑套餐', 'SETMEAL_EDIT', NULL);
INSERT INTO `t_permission` VALUES (12, '查询套餐', 'SETMEAL_QUERY', NULL);
INSERT INTO `t_permission` VALUES (13, '预约设置', 'ORDERSETTING', NULL);
INSERT INTO `t_permission` VALUES (14, '查看统计报表', 'REPORT_VIEW', NULL);
INSERT INTO `t_permission` VALUES (15, '新增菜单', 'MENU_ADD', NULL);
INSERT INTO `t_permission` VALUES (16, '删除菜单', 'MENU_DELETE', NULL);
INSERT INTO `t_permission` VALUES (17, '编辑菜单', 'MENU_EDIT', NULL);
INSERT INTO `t_permission` VALUES (18, '查询菜单', 'MENU_QUERY', NULL);
INSERT INTO `t_permission` VALUES (19, '新增角色', 'ROLE_ADD', NULL);
INSERT INTO `t_permission` VALUES (20, '删除角色', 'ROLE_DELETE', NULL);
INSERT INTO `t_permission` VALUES (21, '编辑角色', 'ROLE_EDIT', NULL);
INSERT INTO `t_permission` VALUES (22, '查询角色', 'ROLE_QUERY', NULL);
INSERT INTO `t_permission` VALUES (23, '新增用户', 'USER_ADD', NULL);
INSERT INTO `t_permission` VALUES (24, '删除用户', 'USER_DELETE', NULL);
INSERT INTO `t_permission` VALUES (25, '编辑用户', 'USER_EDIT', NULL);
INSERT INTO `t_permission` VALUES (26, '查询用户', 'USER_QUERY', NULL);
COMMIT;

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  `keyword` varchar(64) DEFAULT NULL,
  `description` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role
-- ----------------------------
BEGIN;
INSERT INTO `t_role` VALUES (1, '系统管理员', 'ROLE_ADMIN', NULL);
INSERT INTO `t_role` VALUES (2, '导游', 'ROLE_HEALTH_MANAGER', NULL);
COMMIT;

-- ----------------------------
-- Table structure for t_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `t_role_permission`;
CREATE TABLE `t_role_permission` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`role_id`,`permission_id`),
  KEY `FK_Reference_12` (`permission_id`),
  CONSTRAINT `FK_Reference_11` FOREIGN KEY (`role_id`) REFERENCES `t_role` (`id`),
  CONSTRAINT `FK_Reference_12` FOREIGN KEY (`permission_id`) REFERENCES `t_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role_permission
-- ----------------------------
BEGIN;
INSERT INTO `t_role_permission` VALUES (1, 1);
INSERT INTO `t_role_permission` VALUES (2, 1);
INSERT INTO `t_role_permission` VALUES (1, 2);
INSERT INTO `t_role_permission` VALUES (2, 2);
INSERT INTO `t_role_permission` VALUES (1, 3);
INSERT INTO `t_role_permission` VALUES (2, 3);
INSERT INTO `t_role_permission` VALUES (1, 4);
INSERT INTO `t_role_permission` VALUES (2, 4);
INSERT INTO `t_role_permission` VALUES (1, 5);
INSERT INTO `t_role_permission` VALUES (2, 5);
INSERT INTO `t_role_permission` VALUES (1, 6);
INSERT INTO `t_role_permission` VALUES (2, 6);
INSERT INTO `t_role_permission` VALUES (1, 7);
INSERT INTO `t_role_permission` VALUES (2, 7);
INSERT INTO `t_role_permission` VALUES (1, 8);
INSERT INTO `t_role_permission` VALUES (2, 8);
INSERT INTO `t_role_permission` VALUES (1, 9);
INSERT INTO `t_role_permission` VALUES (2, 9);
INSERT INTO `t_role_permission` VALUES (1, 10);
INSERT INTO `t_role_permission` VALUES (2, 10);
INSERT INTO `t_role_permission` VALUES (1, 11);
INSERT INTO `t_role_permission` VALUES (2, 11);
INSERT INTO `t_role_permission` VALUES (1, 12);
INSERT INTO `t_role_permission` VALUES (2, 12);
INSERT INTO `t_role_permission` VALUES (1, 13);
INSERT INTO `t_role_permission` VALUES (2, 13);
INSERT INTO `t_role_permission` VALUES (1, 14);
INSERT INTO `t_role_permission` VALUES (2, 14);
INSERT INTO `t_role_permission` VALUES (1, 15);
INSERT INTO `t_role_permission` VALUES (1, 16);
INSERT INTO `t_role_permission` VALUES (1, 17);
INSERT INTO `t_role_permission` VALUES (1, 18);
INSERT INTO `t_role_permission` VALUES (1, 19);
INSERT INTO `t_role_permission` VALUES (1, 20);
INSERT INTO `t_role_permission` VALUES (1, 21);
INSERT INTO `t_role_permission` VALUES (1, 22);
INSERT INTO `t_role_permission` VALUES (1, 23);
INSERT INTO `t_role_permission` VALUES (1, 24);
INSERT INTO `t_role_permission` VALUES (1, 25);
INSERT INTO `t_role_permission` VALUES (1, 26);
COMMIT;

-- ----------------------------
-- Table structure for t_setmeal
-- ----------------------------
DROP TABLE IF EXISTS `t_setmeal`;
CREATE TABLE `t_setmeal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) DEFAULT NULL,
  `code` varchar(8) DEFAULT NULL,
  `helpCode` varchar(16) DEFAULT NULL,
  `sex` char(1) DEFAULT NULL,
  `age` varchar(32) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `remark` varchar(3000) DEFAULT NULL,
  `attention` varchar(128) DEFAULT NULL,
  `img` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_setmeal
-- ----------------------------
BEGIN;
INSERT INTO `t_setmeal` VALUES (3, '澳门威尼斯人商圈酒店双飞3-5日自由行套餐', '0001', 'RZTJ', '0', '18-60', 300, '澳门巴黎人是全澳门乃至亚洲的一颗闪耀新星，您可以在此感受“光之城”巴黎的独特艺术气息与迷人魅力。这里有约2千余间法式客房及套房供您选择，还有依照巴黎埃菲尔铁塔1/2比例建造的巴黎铁塔，让您体验独特的浪漫风情。您还可以于170家精品名店享受购物乐趣，或是品尝经典法式美食，欣赏精彩的娱乐表演，畅游水世界、儿童王国等各种娱乐项目，像巴黎人一样体验无处不在的浪漫与惊喜！', NULL, 'CoUBUl9CqoaAJ3L7AAFzAwTrXfs48.jpeg');
INSERT INTO `t_setmeal` VALUES (4, '香港九龙尖沙咀商圈双飞3-8日自由行套餐', '0001', 'RZTJ', '0', '18-60', 300, '香港九龙珀丽酒店(Rosedale Hotel Kowloon)位于市中心繁华闹市，地处九龙中心地带，毗邻多个购物、娱乐中心；酒店提供班车来往旺角、尖沙嘴和“圆方”购物区，方便宾客出行。 香港九龙珀丽酒店(Rosedale Hotel Kowloon) 设计精巧、新颖独特，拥有精致、高雅的各式客房。酒店客房均配有LED智能电视、iPod/ iPhone 底座，让您尽享便捷、舒适生活。', NULL, 'df6979d2-113e-4d6c-92c9-b0431c577650.jpeg');
INSERT INTO `t_setmeal` VALUES (5, '海南-亚龙湾-三亚双飞7日游', '0001', 'RZTJ', '0', '18-60', 300, '全程由旅游局指定餐厅用餐，严格把控餐饮质量，让您安心享用每一顿饮食，尽情尝特色美食，让味蕾绽放在路上，品味舌尖上的海南 。', NULL, 'e504a974bb1f41f2f89184bd922ca4e3.jpeg');
INSERT INTO `t_setmeal` VALUES (6, '丽江-大理-香格里拉双飞6日游', '0001', 'RZTJ', '0', '18-60', 300, '云南地处高原，老年人体温调节功能较差，易受凉感冒，所以衣服要带得够，以便随时增减，行走出汗时，不要马上脱衣敞怀。高原地区昼夜温差大，睡前要盖好被毯，夜间风起雨来时要关好门窗。', NULL, 'a5e8e729-74ce-4939-bf36-9cdc02fb2ae51.jpg');
INSERT INTO `t_setmeal` VALUES (7, '海南-亚龙湾-三亚双飞8日游', '0001', 'RZTJ', '0', '18-60', 300, '旅游中要有充足的休息和睡眠，若感到体力不支，可略着休息或减缓旅行。在长时间步行游览时应随时坐下小憩。', NULL, 'a5e8e729-74ce-4939-bf36-9cdc02fb2ae51.jpg');
INSERT INTO `t_setmeal` VALUES (12, '公司年度旅游套餐（男女通用）', '0001', 'RZTJ', '0', '18-60', 300, '公司年度旅游套餐', NULL, 'a5e8e729-74ce-4939-bf36-9cdc02fb2ae51.jpg');
INSERT INTO `t_setmeal` VALUES (13, '广州长隆酒店+珠海长隆企鹅酒店双飞5日自由行套餐', '0002', 'FHZA', '2', '18-60', 1200, '长隆酒店(广州长隆野生动物世界店)位于广州长隆旅游度假区中心地段，毗邻长隆欢乐世界、长隆水上乐园、长隆野生动物世界、长隆飞鸟乐园和长隆国际大马戏等主题乐园。交通便捷，多条园区穿梭巴往返长隆酒店和各大园区之间。珠海园区、机场快线、香港直通巴汇集其中，广州地铁3号线/7号线让您的度假娱乐更快捷方便。 长隆酒店作为大型的生态主题酒店，主要以热带区域的人文文化风情为主基调。客房的摆设装修以客为主，温馨舒适，并有多种客房和套房类型选择。酒店绿植围绕，种类繁多，动物岛置身于酒店之中，珍稀动物随处可见。 酒店内配套多间风味各异的餐厅，让你足不出户品尝环球美食。酒店配套室外泳池、室内四季恒温泳池、健身房、童趣乐园、康体中心等，都是您商旅或者度假的上佳消遣地方。 国际会展中心更有可容纳3,000人的6,000平方米宴会厅，拥有12米无柱高楼顶，配备LED屏幕，及大型内置8米升降舞台、先进的多媒体视听、通讯系统等商务会议设施。39个不同规格的豪华多功能会议厅。专业的销售、服务团队和完善的会议设施设备随时准备为您提供一流的会议、展览和宴会服务，打造一流的商务会议品牌。', NULL, 'd7114f3d-35bd-4e52-b0b5-9dfc83d54af72.jpg');
INSERT INTO `t_setmeal` VALUES (14, '厦门+鼓浪屿双飞5日自由行套餐', '0003', 'YGBM', '0', '55-100', 1400, '鼓浪屿的生活，是慵懒而优雅的，像极了欧洲某个古老的城市，不张扬，却有着致命的吸引力——温柔的阳光，蔚蓝的大海，美妙的琴声，静静矗立的老建筑，悠然自得的猫咪，所有的一切，总让人忍不住想好好的，再谈一场恋爱。 　　所以做了这样的主题，就是想把所谓浪漫，狠狠地，彻底地，进行下去。要华丽，因为青春理应肆意和张扬；要低调，因为在心底，总有一个最柔软最隐秘的角落，是只属于你的。最重要的，是要浪漫。在流淌着音乐的房间里，看点点烛光摇曳，撒在床上的玫瑰花瓣香味隐约扑来，举起手中的红酒杯，两个人，相视无语。cheers. 感谢你们，与我们分享这美好。也但愿我能，一直见证你们的幸福。', NULL, '1291b1fb-40c2-4558-b102-02e05c4cff6c3.jpg');
INSERT INTO `t_setmeal` VALUES (15, '云南-昆明-大理-丽江-香格里拉双飞8日游套餐', '0004', 'ZAGD', '0', '14-20', 2400, '今日行程无导游陪同，如您当日抵昆时间较早，可自行将行李寄存在入住酒店（贵重物品请自行保管好）；随后，自由活动（如抵达昆明时间尚早，可自行前往云南师范大学（西南联合大学旧址）、昆明金马碧鸡坊、南屏街、、陆军讲武堂等景点游览、（外出酒店时贵重物品请自行保管好，请到酒店前台带上酒店名片，方便打车回酒店）', NULL, '68c7c13f-8fc2-46c3-b5d6-f7ec7992dc6e1.jpg');
COMMIT;

-- ----------------------------
-- Table structure for t_setmeal_travelgroup
-- ----------------------------
DROP TABLE IF EXISTS `t_setmeal_travelgroup`;
CREATE TABLE `t_setmeal_travelgroup` (
  `setmeal_id` int(11) NOT NULL DEFAULT '0',
  `travelgroup_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`setmeal_id`,`travelgroup_id`),
  KEY `travelgroup_key` (`travelgroup_id`),
  CONSTRAINT `setmeal_key` FOREIGN KEY (`setmeal_id`) REFERENCES `t_setmeal` (`id`),
  CONSTRAINT `travelgroup_key` FOREIGN KEY (`travelgroup_id`) REFERENCES `t_travelgroup` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_setmeal_travelgroup
-- ----------------------------
BEGIN;
INSERT INTO `t_setmeal_travelgroup` VALUES (12, 5);
INSERT INTO `t_setmeal_travelgroup` VALUES (3, 6);
INSERT INTO `t_setmeal_travelgroup` VALUES (12, 6);
INSERT INTO `t_setmeal_travelgroup` VALUES (3, 7);
INSERT INTO `t_setmeal_travelgroup` VALUES (12, 7);
INSERT INTO `t_setmeal_travelgroup` VALUES (3, 8);
INSERT INTO `t_setmeal_travelgroup` VALUES (12, 8);
INSERT INTO `t_setmeal_travelgroup` VALUES (3, 9);
INSERT INTO `t_setmeal_travelgroup` VALUES (12, 9);
INSERT INTO `t_setmeal_travelgroup` VALUES (3, 10);
INSERT INTO `t_setmeal_travelgroup` VALUES (4, 10);
INSERT INTO `t_setmeal_travelgroup` VALUES (12, 10);
INSERT INTO `t_setmeal_travelgroup` VALUES (14, 10);
INSERT INTO `t_setmeal_travelgroup` VALUES (15, 10);
INSERT INTO `t_setmeal_travelgroup` VALUES (12, 11);
INSERT INTO `t_setmeal_travelgroup` VALUES (14, 11);
INSERT INTO `t_setmeal_travelgroup` VALUES (15, 11);
INSERT INTO `t_setmeal_travelgroup` VALUES (14, 12);
INSERT INTO `t_setmeal_travelgroup` VALUES (14, 13);
INSERT INTO `t_setmeal_travelgroup` VALUES (15, 13);
INSERT INTO `t_setmeal_travelgroup` VALUES (13, 14);
INSERT INTO `t_setmeal_travelgroup` VALUES (15, 14);
INSERT INTO `t_setmeal_travelgroup` VALUES (13, 15);
COMMIT;

-- ----------------------------
-- Table structure for t_travelgroup
-- ----------------------------
DROP TABLE IF EXISTS `t_travelgroup`;
CREATE TABLE `t_travelgroup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(32) DEFAULT NULL,
  `name` varchar(1000) DEFAULT NULL,
  `helpCode` varchar(32) DEFAULT NULL,
  `sex` char(1) DEFAULT NULL,
  `remark` varchar(1000) DEFAULT NULL,
  `attention` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_travelgroup
-- ----------------------------
BEGIN;
INSERT INTO `t_travelgroup` VALUES (5, '0001', '昆明、大理、丽江双飞单动6日经典游', 'YBJC', '0', '春节昆明-大理-丽江双飞6日游牛新品/18人小团0购物+5A石林+玉龙雪山大索登顶+洱海Jeep旅拍+南诏风情岛+非遗白族扎染体验+彝族特色长街宴 ', '无');
INSERT INTO `t_travelgroup` VALUES (6, '0002', '三亚-蜈支洲岛-亚龙湾双飞5日4晚跟团游', 'SLSJ', '0', '华东五市-乌镇-南浔-杭州双飞6日游>全新升级4晚维也纳系列酒店，全程0自费，观水乡婚礼，登雷峰塔，品金陵十六味，含宋城/上海夜景', NULL);
INSERT INTO `t_travelgroup` VALUES (7, '0003', '重庆、武隆仙女山、天坑三硚、龙水峡地缝、洪崖洞、磁器口古镇双飞5日经典游', 'XCG', '0', '春节南宁-越南-下龙湾-北海双飞7日游>0购0自费/境外国际4星/1晚希尔顿/168元海鲜自助/奥巴马米粉/赠越式按摩/可升涠洲岛/全程领队/双口岸进出', NULL);
INSERT INTO `t_travelgroup` VALUES (8, '0004', '印度尼西亚巴厘岛7日5晚半自助跟团游', 'NCG', '0', '春节海南三亚双飞5日游17万人游玩0购物，180度海景房(华美达/明申/维景/唐拉雅秀)，赠全海景玻璃栈道+蟹鲍海鲜餐，20年出游去南山看108米海上观音', NULL);
INSERT INTO `t_travelgroup` VALUES (9, '0005', '厦门-鼓浪屿-云水谣土楼双飞5日4晚跟团游', 'GGSX', '0', '厦门-鼓浪屿双飞5日游臻品9人团0购0自，全程五星华邑/万豪海景房，高标佳丽自助/地标全海景餐厅，人气日光岩植物园鹭江夜游，接送0等待', NULL);
INSERT INTO `t_travelgroup` VALUES (10, '0006', '越南芽庄6日5晚自由行', 'NGSX', '0', '土耳其10日游超6000人选择牛人专线/五星航空直飞内陆双飞/费特希耶/网红景点齐打卡/五星酒店升1晚真洞穴酒店/升级4特色餐/2顿中餐', NULL);
INSERT INTO `t_travelgroup` VALUES (11, '0007', '印度尼西亚巴厘岛7日5晚半自助跟团游', 'XZSX', '0', '春节埃及-迪拜-阿布扎比10日游A380或波音787/埃及全程五星/红海两晚/宿卢克索/吉萨金字塔群/埃及博物馆/马车巡游/风帆船', NULL);
INSERT INTO `t_travelgroup` VALUES (12, '0008', '泰国普吉岛7日5晚跟团游', 'XJMSX', '0', '春节埃及+土耳其11-14日游埃及卢克索/亚历山大/红海,土耳其伊斯坦布尔/圣索菲亚大教堂,内陆4段飞,含卡帕和棉花堡,TK', NULL);
INSERT INTO `t_travelgroup` VALUES (13, '0009', '悉尼-黄金海岸 汉密尔顿8日6晚品质游', 'JGSX', '0', '南美印象5国+巴西+阿根廷+秘鲁+智利+乌拉圭16-20日游>纯玩无购物/雨林/伊瓜苏瀑布/纳斯卡地画/四到五星酒店/部分增游马丘比丘', NULL);
INSERT INTO `t_travelgroup` VALUES (14, '0010', '柬埔寨吴哥6日4晚跟团游', 'ZGFJCC', '2', '春节美国东西海岸11-13日游游多款产品可选/迪士尼一日双园过大年/环球影城/峡谷/羚羊彩穴/马蹄湾/部分团期升级纯玩团/保证拼住', NULL);
INSERT INTO `t_travelgroup` VALUES (15, '0011', '张家界、玻璃桥、天门山、芙蓉镇、凤凰古城双飞5日跟团游', 'DHSSX', '0', '美国西雅图-波特兰6晚8日自由行西雅图进波特兰出，精选全程6晚酒店，行程天数可随意增减', NULL);
COMMIT;

-- ----------------------------
-- Table structure for t_travelgroup_travelitem
-- ----------------------------
DROP TABLE IF EXISTS `t_travelgroup_travelitem`;
CREATE TABLE `t_travelgroup_travelitem` (
  `travelgroup_id` int(11) NOT NULL DEFAULT '0',
  `travelitem_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`travelgroup_id`,`travelitem_id`),
  KEY `item_id` (`travelitem_id`),
  CONSTRAINT `group_id` FOREIGN KEY (`travelgroup_id`) REFERENCES `t_travelgroup` (`id`),
  CONSTRAINT `item_id` FOREIGN KEY (`travelitem_id`) REFERENCES `t_travelitem` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_travelgroup_travelitem
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for t_travelitem
-- ----------------------------
DROP TABLE IF EXISTS `t_travelitem`;
CREATE TABLE `t_travelitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(16) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `sex` char(1) DEFAULT NULL,
  `age` varchar(32) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `type` char(1) DEFAULT NULL COMMENT '自由行类型,分为自由和跟团两种',
  `attention` varchar(128) DEFAULT NULL,
  `remark` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_travelitem
-- ----------------------------
BEGIN;
INSERT INTO `t_travelitem` VALUES (28, '0001', '三亚呀诺达享浪漫5日蜜月游', '0', '0-100', 5, '1', '无', '三亚呀诺达享浪漫5日蜜月游');
INSERT INTO `t_travelitem` VALUES (29, '0002', '5天4晚，海南三亚自由行玩法', '0', '0-100', 5, '1', '无', '5天4晚，海南三亚自由行玩法');
INSERT INTO `t_travelitem` VALUES (30, '0003', '5天4晚，三亚玩法，带着爸妈去旅行', '0', '0-100', 5, '1', '无', '5天4晚，三亚玩法，带着爸妈去旅行');
INSERT INTO `t_travelitem` VALUES (31, '0004', '三亚大东海风景迷人5日家庭游', '0', '0-100', 5, '1', '无', '三亚大东海风景迷人5日家庭游');
INSERT INTO `t_travelitem` VALUES (32, '0005', '4天3晚厦门玩法，热恋在土楼与都市沿岸', '0', '0-100', 5, '1', '无', '4天3晚厦门玩法，热恋在土楼与都市沿岸');
INSERT INTO `t_travelitem` VALUES (33, '0006', '4日3晚，厦门亲子玩法', '0', '0-100', 5, '1', '无', '4日3晚，厦门亲子玩法');
INSERT INTO `t_travelitem` VALUES (34, '0007', '厦门风灌醉鼓浪屿的海4日浪漫游', '0', '0-100', 5, '1', '无', '厦门风灌醉鼓浪屿的海4日浪漫游');
INSERT INTO `t_travelitem` VALUES (35, '0008', '4天3晚，海上花园城市，厦门玩法', '0', '0-100', 5, '1', '无', '4天3晚，海上花园城市，厦门玩法');
INSERT INTO `t_travelitem` VALUES (36, '0009', '香港迪士尼里追童梦5日亲子游', '0', '0-100', 5, '1', '无', '香港迪士尼里追童梦5日亲子游');
INSERT INTO `t_travelitem` VALUES (37, '0010', '香港铜锣湾处处风情5日休闲游', '0', '0-100', 5, '1', '无', '香港铜锣湾处处风情5日休闲游');
INSERT INTO `t_travelitem` VALUES (38, '0011', '5天4晚寻味香港玩法，回忆记忆中的“港味儿”', '0', '0-100', 10, '2', '无', '5天4晚寻味香港玩法，回忆记忆中的“港味儿”');
INSERT INTO `t_travelitem` VALUES (39, '0012', '版纳傣族园丽江古城8日三地连线游', '0', '0-100', 10, '2', NULL, '版纳傣族园丽江古城 8日三地连线游');
INSERT INTO `t_travelitem` VALUES (40, '0013', '6天5晚，丽江香格里拉蜜月玩法，意外的遇见，刚刚好！', '0', '0-100', 10, '2', NULL, '6天5晚，丽江香格里拉蜜月玩法，意外的遇见，刚刚好！');
INSERT INTO `t_travelitem` VALUES (41, '0014', '4天3晚，云南丽江大众玩法', '0', '0-100', 10, '2', NULL, '4天3晚，云南丽江大众玩法');
INSERT INTO `t_travelitem` VALUES (42, '0015', '丽江古城佳肴诱惑5日美食游', '0', '0-100', 10, '2', NULL, '丽江古城佳肴诱惑5日美食游');
INSERT INTO `t_travelitem` VALUES (43, '0016', '成都九寨沟五彩天堂7日深度游', '0', '0-100', 10, '2', NULL, '成都九寨沟五彩天堂7日深度游');
INSERT INTO `t_travelitem` VALUES (44, '0017', '成都九寨沟黄龙远离喧嚣6日风光游', '0', '0-100', 10, '2', NULL, '成都九寨沟黄龙远离喧嚣6日风光游');
INSERT INTO `t_travelitem` VALUES (45, '0018', '7天6晚，四川玩法', '0', '0-100', 10, '2', NULL, '7天6晚，四川玩法');
INSERT INTO `t_travelitem` VALUES (46, '0019', '4天3晚，大连玩法，阳光明媚去看海', '0', '0-100', 10, '2', NULL, '4天3晚，大连玩法，阳光明媚去看海');
INSERT INTO `t_travelitem` VALUES (47, '0020', '4天3晚，浪漫之都大连玩法', '0', '0-100', 10, '2', NULL, '4天3晚，浪漫之都大连玩法');
INSERT INTO `t_travelitem` VALUES (48, '0021', '4天3晚大连海滨玩法', '0', '0-100', 10, '2', NULL, '4天3晚大连海滨玩法');
INSERT INTO `t_travelitem` VALUES (49, '0022', '大连美丽不过滨海路 4日经典游', '0', '0-100', 10, '2', NULL, '大连美丽不过滨海路4日经典游');
INSERT INTO `t_travelitem` VALUES (50, '0023', '1天，尽览东方巴黎风采，哈尔滨玩法', '0', '0-100', 10, '2', NULL, '1天，尽览东方巴黎风采，哈尔滨玩法');
INSERT INTO `t_travelitem` VALUES (51, '0024', '5天4晚哈尔滨+吉林双城玩法', '0', '0-100', 10, '2', NULL, '5天4晚哈尔滨+吉林双城玩法');
INSERT INTO `t_travelitem` VALUES (52, '0025', '哈尔滨老道外风情建筑 5日魅力游', '0', '0-100', 10, '2', NULL, '哈尔滨老道外风情建筑5日魅力游');
INSERT INTO `t_travelitem` VALUES (53, '0026', '哈尔滨雪博会一头栽雪堆 5日狂欢游', '0', '0-100', 10, '2', NULL, '哈尔滨雪博会一头栽雪堆5日狂欢游');
INSERT INTO `t_travelitem` VALUES (54, '0027', '大阪东京夜景艾特你了6日连线游', '0', '0-100', 10, '2', NULL, '大阪东京夜景艾特你了6日连线游');
INSERT INTO `t_travelitem` VALUES (55, '0028', '东京大阪一秒钟嗨翻乐园 6日亲子游', '0', '0-100', 10, '2', NULL, '东京大阪一秒钟嗨翻乐园6日亲子游');
INSERT INTO `t_travelitem` VALUES (56, '0029', '东京扫货扫到手抽筋5日购物游', '0', '0-100', 10, '2', NULL, '东京扫货扫到手抽筋5日购物游');
INSERT INTO `t_travelitem` VALUES (57, '0030', '东京富士山温泉5日泡汤游', '0', '0-100', 10, '2', NULL, '东京富士山温泉 5日泡汤游');
INSERT INTO `t_travelitem` VALUES (58, '0031', '巴厘岛梦幻海滩分享甜蜜 5日蜜月游', '0', '0-100', 10, '2', NULL, '巴厘岛梦幻海滩分享甜蜜5日蜜月游');
INSERT INTO `t_travelitem` VALUES (59, '0032', '6天5晚千岛之国，万般风情，印尼海岛玩法。', '0', '0-100', 10, '2', NULL, '6天5晚千岛之国，万般风情，印尼海岛玩法。');
INSERT INTO `t_travelitem` VALUES (60, '0033', '5天4晚巴厘岛玩法，拥抱理想国的阳光', '0', '0-100', 10, '2', NULL, '5天4晚巴厘岛玩法，拥抱理想国的阳光');
INSERT INTO `t_travelitem` VALUES (61, '0034', '巴厘岛金巴兰海滩享SPA6日悠闲游', '0', '0-100', 10, '2', NULL, '巴厘岛金巴兰海滩享SPA6日悠闲游');
INSERT INTO `t_travelitem` VALUES (62, '0035', '巴厘岛乌布皇宫如梦如幻 5日蜜月游', '0', '0-100', 10, '2', NULL, '巴厘岛乌布皇宫如梦如幻 5日蜜月游');
INSERT INTO `t_travelitem` VALUES (63, '0036', '巴厘岛海神庙全家出行8日亲子游', '0', '0-100', 10, '2', NULL, '巴厘岛海神庙全家出行8日亲子游');
INSERT INTO `t_travelitem` VALUES (64, '0037', '巴厘岛金银岛悠然自得6日经典游', '0', '0-100', 10, '2', NULL, '巴厘岛金银岛悠然自得6日经典游');
INSERT INTO `t_travelitem` VALUES (65, '0038', '巴厘岛蓝点教堂SPA专享7日休闲游', '0', '0-100', 10, '2', NULL, '巴厘岛蓝点教堂SPA专享7日休闲游');
INSERT INTO `t_travelitem` VALUES (66, '0039', '大阪东京夜景艾特你了6日连线游', '0', '0-100', 10, '2', NULL, '大阪东京夜景艾特你了6日连线游');
INSERT INTO `t_travelitem` VALUES (67, '0040', '东京大阪一秒钟嗨翻乐园6日亲子游', '0', '0-100', 10, '2', NULL, '东京大阪一秒钟嗨翻乐园6日亲子游');
INSERT INTO `t_travelitem` VALUES (68, '0041', '6天5晚最牛的日本本州玩法', '0', '0-100', 10, '2', NULL, '6天5晚最牛的日本本州玩法');
INSERT INTO `t_travelitem` VALUES (69, '0042', '日本京都箱根东瀛和风7日风情游', '0', '0-100', 10, '2', NULL, '日本京都箱根东瀛和风7日风情游');
INSERT INTO `t_travelitem` VALUES (70, '0043', '日本箱根大涌谷6日关东关西游', '0', '0-100', 10, '2', NULL, '日本箱根大涌谷6日关东关西游');
INSERT INTO `t_travelitem` VALUES (71, '0044', '日本伏见稻荷朱红色6日古都游', '0', '0-100', 10, '2', NULL, '日本伏见稻荷朱红色6日古都游');
INSERT INTO `t_travelitem` VALUES (72, '0045', '大阪环球影城一键收藏5日亲子游', '0', '0-100', 10, '2', NULL, '大阪环球影城一键收藏5日亲子游');
INSERT INTO `t_travelitem` VALUES (73, '0046', '大阪黑门市场吃海鲜5日美食游', '0', '0-100', 10, '2', NULL, '大阪黑门市场吃海鲜5日美食游');
INSERT INTO `t_travelitem` VALUES (74, '0047', '大阪城公园樱花美成画5日经典游', '0', '0-100', 10, '2', NULL, '大阪城公园樱花美成画5日经典游');
INSERT INTO `t_travelitem` VALUES (75, '0048', '大阪海游馆亲密接触5日休闲游', '0', '0-100', 10, '2', NULL, '大阪海游馆亲密接触5日休闲游');
INSERT INTO `t_travelitem` VALUES (76, '0049', '日本奈良公园小鹿乱撞7日古都游', '0', '0-100', 10, '2', NULL, '日本奈良公园小鹿乱撞7日古都游');
INSERT INTO `t_travelitem` VALUES (77, '0050', '大阪道顿堀小吃嘴不停6日美食游', '0', '0-100', 10, '2', NULL, '大阪道顿堀小吃嘴不停6日美食游');
INSERT INTO `t_travelitem` VALUES (78, '0051', '大阪梅田空中庭院漫步6日休闲游', '0', '0-100', 10, '2', NULL, '大阪梅田空中庭院漫步6日休闲游');
INSERT INTO `t_travelitem` VALUES (79, '0052', '大阪奈良赴一场盛宴6日深度游', '0', '0-100', 10, '2', NULL, '大阪奈良赴一场盛宴6日深度游');
INSERT INTO `t_travelitem` VALUES (80, '0053', '日本繁华都市闲逛6日深度游', '0', '0-100', 10, '2', NULL, '日本繁华都市闲逛6日深度游');
INSERT INTO `t_travelitem` VALUES (81, '0054', '毛里求斯鹿岛享沙滩阳光6日蜜月游', '0', '0-100', 10, '2', NULL, '毛里求斯鹿岛享沙滩阳光6日蜜月游');
INSERT INTO `t_travelitem` VALUES (82, '0055', '7天6晚毛里求斯360度多情与激情玩法', '0', '0-100', 10, '2', NULL, '7天6晚毛里求斯360度多情与激情玩法');
INSERT INTO `t_travelitem` VALUES (83, '0056', '毛里求斯迪拜享浪漫10日蜜月游', '0', '0-100', 10, '2', NULL, '毛里求斯迪拜享浪漫10日蜜月游');
INSERT INTO `t_travelitem` VALUES (84, '0057', '毛里求斯迪拜两国畅玩9日经典游', '0', '0-100', 10, '2', NULL, '毛里求斯迪拜两国畅玩9日经典游');
INSERT INTO `t_travelitem` VALUES (85, '0058', '毛里求斯蓝湾纯净浪漫8日蜜月游', '0', '0-100', 10, '2', NULL, '毛里求斯蓝湾纯净浪漫8日蜜月游');
INSERT INTO `t_travelitem` VALUES (86, '0059', '毛里求斯七色土绚烂多姿8日蜜月游', '0', '0-100', 10, '2', NULL, '毛里求斯七色土绚烂多姿8日蜜月游');
INSERT INTO `t_travelitem` VALUES (87, '0060', '5天4晚四川成都大众玩法', '0', '0-100', 10, '2', NULL, '5天4晚四川成都大众玩法');
INSERT INTO `t_travelitem` VALUES (88, '0061', '成都杜甫草堂历史悠久5日访古游', '2', '0-100', 10, '2', NULL, '成都杜甫草堂历史悠久5日访古游');
INSERT INTO `t_travelitem` VALUES (89, '0062', '成都人民公园享欢乐时光5日亲子游', '2', '0-100', 10, '2', NULL, '成都人民公园享欢乐时光5日亲子游');
INSERT INTO `t_travelitem` VALUES (90, '0063', '成都锦里小吃很地道4日美食游', '0', '0-100', 10, '2', NULL, '成都锦里小吃很地道4日美食游');
INSERT INTO `t_travelitem` VALUES (91, '0064', '成都锦里感受慢生活4日经典游', '0', '0-100', 10, '2', NULL, '成都锦里感受慢生活4日经典游');
INSERT INTO `t_travelitem` VALUES (92, '0065', '成都春熙路吃货天堂4日美食游', '0', '0-100', 10, '2', NULL, '成都春熙路吃货天堂4日美食游');
COMMIT;

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `birthday` date DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `username` varchar(32) DEFAULT NULL,
  `password` varchar(256) DEFAULT NULL,
  `remark` varchar(32) DEFAULT NULL,
  `station` varchar(1) DEFAULT NULL,
  `telephone` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
BEGIN;
INSERT INTO `t_user` VALUES (1, NULL, NULL, 'admin', '$2a$10$Uviz/YD2jAsLw4o8QpgCtutfIgnmX/szGJbo.3/Q95qpN0AZ3nYty', NULL, NULL, NULL);
INSERT INTO `t_user` VALUES (2, NULL, NULL, 'xiaoming', '$2a$10$arnOa3z7f1swsWCFit3IJObYm6dUXYEy3S7py8w.OoR8Z9B.3nhcO', NULL, NULL, NULL);
INSERT INTO `t_user` VALUES (3, NULL, NULL, 'test', '$2a$10$pP.RWewbbNJUewQnRynoqejxAOyU48ArrJvNJZpvt0xRcE5Uwc46u', NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for t_user_role
-- ----------------------------
DROP TABLE IF EXISTS `t_user_role`;
CREATE TABLE `t_user_role` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FK_Reference_8` (`role_id`),
  CONSTRAINT `FK_Reference_7` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`),
  CONSTRAINT `FK_Reference_8` FOREIGN KEY (`role_id`) REFERENCES `t_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user_role
-- ----------------------------
BEGIN;
INSERT INTO `t_user_role` VALUES (1, 1);
INSERT INTO `t_user_role` VALUES (2, 2);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
