/*
 Navicat Premium Data Transfer

 Source Server         : 赵睿
 Source Server Type    : MariaDB
 Source Server Version : 100140
 Source Host           : localhost:3306
 Source Schema         : tx

 Target Server Type    : MariaDB
 Target Server Version : 100140
 File Encoding         : 65001

 Date: 10/06/2019 11:44:43
*/

SET NAMES UTF8;
DROP DATABASE IF EXISTS txw;
CREATE DATABASE txw CHARSET=UTF8;
USE txw;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tx_cardtype
-- ----------------------------
DROP TABLE IF EXISTS `tx_cardtype`;
CREATE TABLE `tx_cardtype`  (
  `cdid` int(11) NOT NULL COMMENT '证件id',
  `cdname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '证件名称',
  PRIMARY KEY (`cdid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '证件类型' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tx_country
-- ----------------------------
DROP TABLE IF EXISTS `tx_country`;
CREATE TABLE `tx_country`  (
  `cid` int(11) NOT NULL COMMENT '地区id',
  `cname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '地区名字',
  `parent` int(11) NULL DEFAULT NULL COMMENT '父地区id',
  `first` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '地区首字母',
  PRIMARY KEY (`cid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '国家/地区表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tx_order
-- ----------------------------
DROP TABLE IF EXISTS `tx_order`;
CREATE TABLE `tx_order`  (
  `oid` int(11) NOT NULL COMMENT '订单id',
  `order` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '订单号',
  `otime` bigint(20) NULL DEFAULT NULL COMMENT '订单时间  格林威治时间',
  `otag` tinyint(255) NULL DEFAULT NULL COMMENT '状态码\r\n0 未付款\r\n1 等待座位确认\r\n2 已取消\r\n3 下单失败\r\n4 已成功提交付款\r\n5 已付款\r\n6 已出票\r\n7 改签申请\r\n8 改签完成\r\n9 退票申请\r\n10 退票完成',
  PRIMARY KEY (`oid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '订单信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tx_passager
-- ----------------------------
DROP TABLE IF EXISTS `tx_passager`;
CREATE TABLE `tx_passager`  (
  `pid` int(11) NOT NULL COMMENT 'id',
  `uid` int(11) NULL DEFAULT NULL COMMENT '登陆名id',
  `pname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '乘机人姓名',
  `cdid` int(11) NULL DEFAULT NULL COMMENT '证件id',
  `sex` tinyint(4) NULL DEFAULT NULL COMMENT '性别',
  `age` tinyint(4) NULL DEFAULT NULL COMMENT '年龄',
  `cd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '证件号',
  PRIMARY KEY (`pid`) USING BTREE,
  UNIQUE INDEX `cd`(`cd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '乘机人' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tx_question
-- ----------------------------
DROP TABLE IF EXISTS `tx_question`;
CREATE TABLE `tx_question`  (
  `qid` tinyint(4) NOT NULL,
  `question` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`qid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '密保问题' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tx_room
-- ----------------------------
DROP TABLE IF EXISTS `tx_room`;
CREATE TABLE `tx_room`  (
  `cid` int(11) NOT NULL AUTO_INCREMENT COMMENT '舱位id',
  `cname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '仓位名字',
  PRIMARY KEY (`cid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '机舱\r\n备注：按钮组件' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tx_target
-- ----------------------------
DROP TABLE IF EXISTS `tx_target`;
CREATE TABLE `tx_target`  (
  `tid` int(11) NOT NULL COMMENT '目的地id',
  `saddress` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '出发地',
  `eaddress` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '目的地地地址',
  `image` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '目的地图片',
  `price` decimal(10, 2) NULL DEFAULT NULL COMMENT '价格（人民币）',
  `count` int(11) NULL DEFAULT NULL COMMENT '人数',
  PRIMARY KEY (`tid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '目的地' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tx_user
-- ----------------------------
DROP TABLE IF EXISTS `tx_user`;
CREATE TABLE `tx_user`  (
  `ans1` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '密保答案1',
  `qid1` tinyint(4) NULL DEFAULT NULL COMMENT '密保id1',
  `ans2` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '密保答案2',
  `qid2` tinyint(4) NULL DEFAULT NULL COMMENT '密保id2',
  `tag` tinyint(4) NULL DEFAULT NULL COMMENT '标示',
  `loginmode` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `upwd` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '密码',
  `truename` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '真实姓名',
  `uname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户账号',
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '登陆用户基本信息' ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;

/*
INSERT INTO tx_user(ans1,qid1,ans2,qid2,tag,phone,upwd,truename,uname) VALUES ("问题1",1,"问题2",2,1,"18516835889",MD5("123"),"zx1","zhoux1")

insert into tx_order(OID,ORDERID,pid,Aircrew,OTIME,OTAG,MONEY,trip,flighttype,sairport,saddresscity,eairport,eaddresscity,caddresscity,stime,etime,flytime,aircompany,aviationNumber,aircrafttype,cid,mailaddress)
VALUES(1,'836-2015786914',1,1,'2019-06-20',6,3500,1,1,'北京T2航站','北京','曼谷机场','曼谷','日本',1552528050000,1552528050000,'13:30','国际航空公司','CCA','波音747',1,'北京海淀区28号');

insert into tx_order(OID,ORDERID,pid,Aircrew,OTIME,OTAG,MONEY,trip,flighttype,sairport,saddresscity,eairport,eaddresscity,caddresscity,stime,etime,flytime,aircompany,aviationNumber,aircrafttype,cid,mailaddress)
VALUES(2,'836-2015786914',1,2,'2019-06-20',6,3500,1,1,'北京T2航站','北京','曼谷机场','曼谷','日本',1552528050000,1552528050000,'13:30','国际航空公司','CCA','波音747',1,'北京海淀区28号');

*/

