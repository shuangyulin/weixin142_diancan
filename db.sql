/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm51988
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm51988` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm51988`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618986743400 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1,'2021-04-21 14:17:12',1,'宇宙银河系金星1号','金某','13823888881','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (2,'2021-04-21 14:17:12',2,'宇宙银河系木星1号','木某','13823888882','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (3,'2021-04-21 14:17:12',3,'宇宙银河系水星1号','水某','13823888883','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (4,'2021-04-21 14:17:12',4,'宇宙银河系火星1号','火某','13823888884','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (5,'2021-04-21 14:17:12',5,'宇宙银河系土星1号','土某','13823888885','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (6,'2021-04-21 14:17:12',6,'宇宙银河系月球1号','月某','13823888886','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1618986396453,'2021-04-21 14:26:35',1618985962442,'梅州市梅江区人民政府','阿三','12312312323','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1618986743399,'2021-04-21 14:32:22',1618986588981,'梅州市梅江区人民政府','阿四','12312312323','是');

/*Table structure for table `caipin` */

DROP TABLE IF EXISTS `caipin`;

CREATE TABLE `caipin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `caipinbianhao` varchar(200) DEFAULT NULL COMMENT '菜品编号',
  `caipinmingcheng` varchar(200) DEFAULT NULL COMMENT '菜品名称',
  `caixi` varchar(200) DEFAULT NULL COMMENT '菜系',
  `kouwei` varchar(200) DEFAULT NULL COMMENT '口味',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `caipinjieshao` varchar(200) DEFAULT NULL COMMENT '菜品介绍',
  `caipinxiangxi` longtext COMMENT '菜品详细',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`),
  UNIQUE KEY `caipinbianhao` (`caipinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618986026575 DEFAULT CHARSET=utf8 COMMENT='菜品';

/*Data for the table `caipin` */

insert  into `caipin`(`id`,`addtime`,`caipinbianhao`,`caipinmingcheng`,`caixi`,`kouwei`,`tupian`,`caipinjieshao`,`caipinxiangxi`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`,`price`) values (21,'2021-04-21 14:17:12','菜品编号1','菜品名称1','菜系1','口味1','http://localhost:8080/ssm51988/upload/caipin_tupian1.jpg','菜品介绍1','菜品详细1',1,1,'2021-04-21 14:17:12',1,99.9);
insert  into `caipin`(`id`,`addtime`,`caipinbianhao`,`caipinmingcheng`,`caixi`,`kouwei`,`tupian`,`caipinjieshao`,`caipinxiangxi`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`,`price`) values (22,'2021-04-21 14:17:12','菜品编号2','菜品名称2','菜系2','口味2','http://localhost:8080/ssm51988/upload/caipin_tupian2.jpg','菜品介绍2','菜品详细2',2,2,'2021-04-21 14:17:12',2,99.9);
insert  into `caipin`(`id`,`addtime`,`caipinbianhao`,`caipinmingcheng`,`caixi`,`kouwei`,`tupian`,`caipinjieshao`,`caipinxiangxi`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`,`price`) values (23,'2021-04-21 14:17:12','菜品编号3','菜品名称3','菜系3','口味3','http://localhost:8080/ssm51988/upload/caipin_tupian3.jpg','菜品介绍3','菜品详细3',3,3,'2021-04-21 14:17:12',3,99.9);
insert  into `caipin`(`id`,`addtime`,`caipinbianhao`,`caipinmingcheng`,`caixi`,`kouwei`,`tupian`,`caipinjieshao`,`caipinxiangxi`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`,`price`) values (24,'2021-04-21 14:17:12','菜品编号4','菜品名称4','菜系4','口味4','http://localhost:8080/ssm51988/upload/caipin_tupian4.jpg','菜品介绍4','菜品详细4',4,4,'2021-04-21 14:17:12',4,99.9);
insert  into `caipin`(`id`,`addtime`,`caipinbianhao`,`caipinmingcheng`,`caixi`,`kouwei`,`tupian`,`caipinjieshao`,`caipinxiangxi`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`,`price`) values (25,'2021-04-21 14:17:12','菜品编号5','菜品名称5','菜系5','口味5','http://localhost:8080/ssm51988/upload/caipin_tupian5.jpg','菜品介绍5','菜品详细5',5,5,'2021-04-21 14:17:12',5,99.9);
insert  into `caipin`(`id`,`addtime`,`caipinbianhao`,`caipinmingcheng`,`caixi`,`kouwei`,`tupian`,`caipinjieshao`,`caipinxiangxi`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`,`price`) values (26,'2021-04-21 14:17:12','菜品编号6','菜品名称6','菜系6','口味6','http://localhost:8080/ssm51988/upload/caipin_tupian6.jpg','菜品介绍6','<p>菜品详细6</p>',6,6,'2021-04-21 14:31:10',9,66);
insert  into `caipin`(`id`,`addtime`,`caipinbianhao`,`caipinmingcheng`,`caixi`,`kouwei`,`tupian`,`caipinjieshao`,`caipinxiangxi`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`,`price`) values (1618986026574,'2021-04-21 14:20:25','1618985982156','某菜','川菜','偏辣','http://localhost:8080/ssm51988/upload/1618986011442.jpeg','测试','<p>测试<img style=\"width:100%;\" src=\"http://localhost:8080/ssm51988/upload/1618986023608.jpeg\"></p>',1,0,'2021-04-21 14:32:58',14,50);

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'caipin' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618986637229 DEFAULT CHARSET=utf8 COMMENT='购物车表';

/*Data for the table `cart` */

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618986844868 DEFAULT CHARSET=utf8 COMMENT='商家客服';

/*Data for the table `chat` */

insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (71,'2021-04-21 14:17:12',1,1,'提问1','回复1',1);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (72,'2021-04-21 14:17:12',2,2,'提问2','回复2',2);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (73,'2021-04-21 14:17:12',3,3,'提问3','回复3',3);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (74,'2021-04-21 14:17:12',4,4,'提问4','回复4',4);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (75,'2021-04-21 14:17:12',5,5,'提问5','回复5',5);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (76,'2021-04-21 14:17:12',6,6,'提问6','回复6',6);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (1618986263454,'2021-04-21 14:24:23',1618985962442,NULL,'222222222',NULL,0);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (1618986298537,'2021-04-21 14:24:58',1618985962442,1,NULL,'3333333333333',NULL);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (1618986818881,'2021-04-21 14:33:38',1618986588981,NULL,'输入内容',NULL,0);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (1618986844867,'2021-04-21 14:34:03',1618986588981,1,NULL,'后台回复',NULL);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm51988/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssm51988/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssm51988/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage','');

/*Table structure for table `discusscaipin` */

DROP TABLE IF EXISTS `discusscaipin`;

CREATE TABLE `discusscaipin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618986653412 DEFAULT CHARSET=utf8 COMMENT='菜品评论表';

/*Data for the table `discusscaipin` */

insert  into `discusscaipin`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (121,'2021-04-21 14:17:12',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discusscaipin`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (122,'2021-04-21 14:17:12',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discusscaipin`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (123,'2021-04-21 14:17:12',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discusscaipin`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (124,'2021-04-21 14:17:12',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discusscaipin`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (125,'2021-04-21 14:17:12',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discusscaipin`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (126,'2021-04-21 14:17:12',6,6,'用户名6','评论内容6','回复内容6');
insert  into `discusscaipin`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (1618986252598,'2021-04-21 14:24:12',1618986026574,1618985962442,'1','2222','33333333');
insert  into `discusscaipin`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (1618986653411,'2021-04-21 14:30:52',1618986026574,1618986588981,'11','66666','');

/*Table structure for table `discussxinshangcaipin` */

DROP TABLE IF EXISTS `discussxinshangcaipin`;

CREATE TABLE `discussxinshangcaipin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618986689489 DEFAULT CHARSET=utf8 COMMENT='新上菜品评论表';

/*Data for the table `discussxinshangcaipin` */

insert  into `discussxinshangcaipin`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (131,'2021-04-21 14:17:12',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discussxinshangcaipin`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (132,'2021-04-21 14:17:12',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discussxinshangcaipin`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (133,'2021-04-21 14:17:12',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discussxinshangcaipin`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (134,'2021-04-21 14:17:12',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discussxinshangcaipin`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (135,'2021-04-21 14:17:12',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discussxinshangcaipin`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (136,'2021-04-21 14:17:12',6,6,'用户名6','评论内容6','回复内容6');
insert  into `discussxinshangcaipin`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (1618986689488,'2021-04-21 14:31:28',1618986068492,1618986588981,'11','666','');

/*Table structure for table `huodongxinxi` */

DROP TABLE IF EXISTS `huodongxinxi`;

CREATE TABLE `huodongxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huodongmingcheng` varchar(200) DEFAULT NULL COMMENT '活动名称',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `faburen` varchar(200) DEFAULT NULL COMMENT '发布人',
  `huodongjieshao` longtext COMMENT '活动介绍',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `huodongxiangqing` longtext COMMENT '活动详情',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618986112058 DEFAULT CHARSET=utf8 COMMENT='活动信息';

/*Data for the table `huodongxinxi` */

insert  into `huodongxinxi`(`id`,`addtime`,`huodongmingcheng`,`fengmian`,`faburen`,`huodongjieshao`,`fabushijian`,`huodongxiangqing`) values (51,'2021-04-21 14:17:12','活动名称1','http://localhost:8080/ssm51988/upload/huodongxinxi_fengmian1.jpg','发布人1','活动介绍1','2021-04-21','活动详情1');
insert  into `huodongxinxi`(`id`,`addtime`,`huodongmingcheng`,`fengmian`,`faburen`,`huodongjieshao`,`fabushijian`,`huodongxiangqing`) values (52,'2021-04-21 14:17:12','活动名称2','http://localhost:8080/ssm51988/upload/huodongxinxi_fengmian2.jpg','发布人2','活动介绍2','2021-04-21','活动详情2');
insert  into `huodongxinxi`(`id`,`addtime`,`huodongmingcheng`,`fengmian`,`faburen`,`huodongjieshao`,`fabushijian`,`huodongxiangqing`) values (53,'2021-04-21 14:17:12','活动名称3','http://localhost:8080/ssm51988/upload/huodongxinxi_fengmian3.jpg','发布人3','活动介绍3','2021-04-21','活动详情3');
insert  into `huodongxinxi`(`id`,`addtime`,`huodongmingcheng`,`fengmian`,`faburen`,`huodongjieshao`,`fabushijian`,`huodongxiangqing`) values (54,'2021-04-21 14:17:12','活动名称4','http://localhost:8080/ssm51988/upload/huodongxinxi_fengmian4.jpg','发布人4','活动介绍4','2021-04-21','活动详情4');
insert  into `huodongxinxi`(`id`,`addtime`,`huodongmingcheng`,`fengmian`,`faburen`,`huodongjieshao`,`fabushijian`,`huodongxiangqing`) values (55,'2021-04-21 14:17:12','活动名称5','http://localhost:8080/ssm51988/upload/huodongxinxi_fengmian5.jpg','发布人5','活动介绍5','2021-04-21','活动详情5');
insert  into `huodongxinxi`(`id`,`addtime`,`huodongmingcheng`,`fengmian`,`faburen`,`huodongjieshao`,`fabushijian`,`huodongxiangqing`) values (56,'2021-04-21 14:17:12','活动名称6','http://localhost:8080/ssm51988/upload/huodongxinxi_fengmian6.jpg','发布人6','活动介绍6','2021-04-21','活动详情6');
insert  into `huodongxinxi`(`id`,`addtime`,`huodongmingcheng`,`fengmian`,`faburen`,`huodongjieshao`,`fabushijian`,`huodongxiangqing`) values (1618986112057,'2021-04-21 14:21:51','测试','http://localhost:8080/ssm51988/upload/1618986100754.jpeg','阿五','测试','2021-04-21','<p>测试<img src=\"http://localhost:8080/ssm51988/upload/1618986109986.jpeg\"></p>');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'caipin' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) DEFAULT NULL COMMENT '收货人',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1618986764168 DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`,`tel`,`consignee`) values (1618986401450,'2021-04-21 14:26:40','202142114264071526253','caipin',1618985962442,1618986026574,'某菜','http://localhost:8080/ssm51988/upload/1618986011442.jpeg',1,50,50,50,50,1,'已完成','梅州市梅江区人民政府','12312312323','阿三');
insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`,`tel`,`consignee`) values (1618986749069,'2021-04-21 14:32:28','202142114322814269548','caipin',1618986588981,1618986026574,'某菜','http://localhost:8080/ssm51988/upload/1618986011442.jpeg',1,50,50,50,50,1,'已完成','梅州市梅江区人民政府','12312312323','阿四');
insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`,`tel`,`consignee`) values (1618986764167,'2021-04-21 14:32:43','202142114324334069514','caipin',1618986588981,1618986026574,'某菜','http://localhost:8080/ssm51988/upload/1618986011442.jpeg',3,50,50,150,150,1,'已退款','梅州市梅江区人民政府','12312312323','阿四');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618986682748 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1618986246971,'2021-04-21 14:24:06',1618985962442,1618986026574,'caipin','某菜','http://localhost:8080/ssm51988/upload/1618986011442.jpeg');
insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1618986643185,'2021-04-21 14:30:42',1618986588981,1618986026574,'caipin','某菜','http://localhost:8080/ssm51988/upload/1618986011442.jpeg');
insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1618986682747,'2021-04-21 14:31:22',1618986588981,1618986068492,'xinshangcaipin','某某菜','http://localhost:8080/ssm51988/upload/1618986062269.jpg');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','f9xov1dvhi55oxlfkpodk4vxv22p9x40','2021-04-21 14:19:28','2021-04-21 15:34:52');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (2,1618985962442,'1','yonghu','用户','ql1wpx1p848hbzzsdtnty5t0e0knzq87','2021-04-21 14:22:07','2021-04-21 15:27:28');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (3,1618986588981,'11','yonghu','用户','yf05k2vzvvqr7ygtnq4mkqz34w5wy58j','2021-04-21 14:29:54','2021-04-21 15:35:34');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-21 14:17:12');

/*Table structure for table `xinshangcaipin` */

DROP TABLE IF EXISTS `xinshangcaipin`;

CREATE TABLE `xinshangcaipin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `caipinbianhao` varchar(200) DEFAULT NULL COMMENT '菜品编号',
  `caipinmingcheng` varchar(200) DEFAULT NULL COMMENT '菜品名称',
  `caixi` varchar(200) DEFAULT NULL COMMENT '菜系',
  `kouwei` varchar(200) DEFAULT NULL COMMENT '口味',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `jiage` int(11) DEFAULT NULL COMMENT '价格',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `caipinxiangxi` longtext COMMENT '菜品详细',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`),
  UNIQUE KEY `caipinbianhao` (`caipinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618986068493 DEFAULT CHARSET=utf8 COMMENT='新上菜品';

/*Data for the table `xinshangcaipin` */

insert  into `xinshangcaipin`(`id`,`addtime`,`caipinbianhao`,`caipinmingcheng`,`caixi`,`kouwei`,`shuliang`,`jiage`,`tupian`,`caipinxiangxi`,`thumbsupnum`,`crazilynum`) values (31,'2021-04-21 14:17:12','菜品编号1','菜品名称1','菜系1','口味1',1,1,'http://localhost:8080/ssm51988/upload/xinshangcaipin_tupian1.jpg','菜品详细1',1,1);
insert  into `xinshangcaipin`(`id`,`addtime`,`caipinbianhao`,`caipinmingcheng`,`caixi`,`kouwei`,`shuliang`,`jiage`,`tupian`,`caipinxiangxi`,`thumbsupnum`,`crazilynum`) values (32,'2021-04-21 14:17:12','菜品编号2','菜品名称2','菜系2','口味2',2,2,'http://localhost:8080/ssm51988/upload/xinshangcaipin_tupian2.jpg','菜品详细2',2,2);
insert  into `xinshangcaipin`(`id`,`addtime`,`caipinbianhao`,`caipinmingcheng`,`caixi`,`kouwei`,`shuliang`,`jiage`,`tupian`,`caipinxiangxi`,`thumbsupnum`,`crazilynum`) values (33,'2021-04-21 14:17:12','菜品编号3','菜品名称3','菜系3','口味3',3,3,'http://localhost:8080/ssm51988/upload/xinshangcaipin_tupian3.jpg','菜品详细3',3,3);
insert  into `xinshangcaipin`(`id`,`addtime`,`caipinbianhao`,`caipinmingcheng`,`caixi`,`kouwei`,`shuliang`,`jiage`,`tupian`,`caipinxiangxi`,`thumbsupnum`,`crazilynum`) values (34,'2021-04-21 14:17:12','菜品编号4','菜品名称4','菜系4','口味4',4,4,'http://localhost:8080/ssm51988/upload/xinshangcaipin_tupian4.jpg','菜品详细4',4,4);
insert  into `xinshangcaipin`(`id`,`addtime`,`caipinbianhao`,`caipinmingcheng`,`caixi`,`kouwei`,`shuliang`,`jiage`,`tupian`,`caipinxiangxi`,`thumbsupnum`,`crazilynum`) values (35,'2021-04-21 14:17:12','菜品编号5','菜品名称5','菜系5','口味5',5,5,'http://localhost:8080/ssm51988/upload/xinshangcaipin_tupian5.jpg','菜品详细5',5,5);
insert  into `xinshangcaipin`(`id`,`addtime`,`caipinbianhao`,`caipinmingcheng`,`caixi`,`kouwei`,`shuliang`,`jiage`,`tupian`,`caipinxiangxi`,`thumbsupnum`,`crazilynum`) values (36,'2021-04-21 14:17:12','菜品编号6','菜品名称6','菜系6','口味6',44,33,'http://localhost:8080/ssm51988/upload/xinshangcaipin_tupian6.jpg','<p>菜品详细6<img src=\"http://localhost:8080/ssm51988/upload/1618986080257.jpeg\"></p>',6,6);
insert  into `xinshangcaipin`(`id`,`addtime`,`caipinbianhao`,`caipinmingcheng`,`caixi`,`kouwei`,`shuliang`,`jiage`,`tupian`,`caipinxiangxi`,`thumbsupnum`,`crazilynum`) values (1618986068492,'2021-04-21 14:21:08','1618986044963','某某菜','粤菜','甜咸',12,35,'http://localhost:8080/ssm51988/upload/1618986062269.jpg','<p>测试<img style=\"width:100%;\" src=\"http://localhost:8080/ssm51988/upload/1618986066414.jpg\"></p>',1,0);

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618986588982 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`,`touxiang`,`money`) values (11,'2021-04-21 14:17:12','用户1','123456','姓名1','男','13823888881','773890001@qq.com','440300199101010001','http://localhost:8080/ssm51988/upload/yonghu_touxiang1.jpg',100);
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`,`touxiang`,`money`) values (12,'2021-04-21 14:17:12','用户2','123456','姓名2','男','13823888882','773890002@qq.com','440300199202020002','http://localhost:8080/ssm51988/upload/yonghu_touxiang2.jpg',100);
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`,`touxiang`,`money`) values (13,'2021-04-21 14:17:12','用户3','123456','姓名3','男','13823888883','773890003@qq.com','440300199303030003','http://localhost:8080/ssm51988/upload/yonghu_touxiang3.jpg',100);
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`,`touxiang`,`money`) values (14,'2021-04-21 14:17:12','用户4','123456','姓名4','男','13823888884','773890004@qq.com','440300199404040004','http://localhost:8080/ssm51988/upload/yonghu_touxiang4.jpg',100);
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`,`touxiang`,`money`) values (15,'2021-04-21 14:17:12','用户5','123456','姓名5','男','13823888885','773890005@qq.com','440300199505050005','http://localhost:8080/ssm51988/upload/yonghu_touxiang5.jpg',100);
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`,`touxiang`,`money`) values (1618985962442,'2021-04-21 14:19:22','1','1','阿三','女','12312312323','123@qq.com','441402000000000000','http://localhost:8080/ssm51988/upload/1618986143677.png',505);
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`,`touxiang`,`money`) values (1618986588981,'2021-04-21 14:29:48','11','11','阿四','女','12312312323','123@qq.com','441402000000000000','http://localhost:8080/ssm51988/upload/1618986627173.jpg',6616);

/*Table structure for table `yonghupingjia` */

DROP TABLE IF EXISTS `yonghupingjia`;

CREATE TABLE `yonghupingjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `caipinmingcheng` varchar(200) DEFAULT NULL COMMENT '菜品名称',
  `caixi` varchar(200) DEFAULT NULL COMMENT '菜系',
  `kouwei` varchar(200) DEFAULT NULL COMMENT '口味',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `pingjianeirong` longtext COMMENT '评价内容',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618986798779 DEFAULT CHARSET=utf8 COMMENT='用户评价';

/*Data for the table `yonghupingjia` */

insert  into `yonghupingjia`(`id`,`addtime`,`caipinmingcheng`,`caixi`,`kouwei`,`zhanghao`,`xingming`,`shouji`,`tupian`,`pingjianeirong`,`userid`) values (61,'2021-04-21 14:17:12','菜品名称1','菜系1','口味1','账号1','姓名1','手机1','http://localhost:8080/ssm51988/upload/yonghupingjia_tupian1.jpg','评价内容1',1);
insert  into `yonghupingjia`(`id`,`addtime`,`caipinmingcheng`,`caixi`,`kouwei`,`zhanghao`,`xingming`,`shouji`,`tupian`,`pingjianeirong`,`userid`) values (62,'2021-04-21 14:17:12','菜品名称2','菜系2','口味2','账号2','姓名2','手机2','http://localhost:8080/ssm51988/upload/yonghupingjia_tupian2.jpg','评价内容2',2);
insert  into `yonghupingjia`(`id`,`addtime`,`caipinmingcheng`,`caixi`,`kouwei`,`zhanghao`,`xingming`,`shouji`,`tupian`,`pingjianeirong`,`userid`) values (63,'2021-04-21 14:17:12','菜品名称3','菜系3','口味3','账号3','姓名3','手机3','http://localhost:8080/ssm51988/upload/yonghupingjia_tupian3.jpg','评价内容3',3);
insert  into `yonghupingjia`(`id`,`addtime`,`caipinmingcheng`,`caixi`,`kouwei`,`zhanghao`,`xingming`,`shouji`,`tupian`,`pingjianeirong`,`userid`) values (64,'2021-04-21 14:17:12','菜品名称4','菜系4','口味4','账号4','姓名4','手机4','http://localhost:8080/ssm51988/upload/yonghupingjia_tupian4.jpg','评价内容4',4);
insert  into `yonghupingjia`(`id`,`addtime`,`caipinmingcheng`,`caixi`,`kouwei`,`zhanghao`,`xingming`,`shouji`,`tupian`,`pingjianeirong`,`userid`) values (65,'2021-04-21 14:17:12','菜品名称5','菜系5','口味5','账号5','姓名5','手机5','http://localhost:8080/ssm51988/upload/yonghupingjia_tupian5.jpg','评价内容5',5);
insert  into `yonghupingjia`(`id`,`addtime`,`caipinmingcheng`,`caixi`,`kouwei`,`zhanghao`,`xingming`,`shouji`,`tupian`,`pingjianeirong`,`userid`) values (66,'2021-04-21 14:17:12','菜品名称6','菜系6','口味6','账号6','姓名6','手机6','http://localhost:8080/ssm51988/upload/yonghupingjia_tupian6.jpg','评价内容6',6);
insert  into `yonghupingjia`(`id`,`addtime`,`caipinmingcheng`,`caixi`,`kouwei`,`zhanghao`,`xingming`,`shouji`,`tupian`,`pingjianeirong`,`userid`) values (1618986210118,'2021-04-21 14:23:29','某某菜','粤菜','甜咸','1','阿三','12312312323','http://localhost:8080/ssm51988/upload/1618986062269.jpg','<p>测试<img src=\"http://localhost:8080/ssm51988/upload/1618986207581.png\"></p>',NULL);
insert  into `yonghupingjia`(`id`,`addtime`,`caipinmingcheng`,`caixi`,`kouwei`,`zhanghao`,`xingming`,`shouji`,`tupian`,`pingjianeirong`,`userid`) values (1618986798778,'2021-04-21 14:33:17','某某菜','粤菜','甜咸','11','阿四','12312312323','http://localhost:8080/ssm51988/upload/1618986062269.jpg','测试',1618986588981);

/*Table structure for table `yudingdingdan` */

DROP TABLE IF EXISTS `yudingdingdan`;

CREATE TABLE `yudingdingdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `caipinmingcheng` varchar(200) DEFAULT NULL COMMENT '菜品名称',
  `caixi` varchar(200) DEFAULT NULL COMMENT '菜系',
  `kouwei` varchar(200) DEFAULT NULL COMMENT '口味',
  `jiage` int(11) DEFAULT NULL COMMENT '价格',
  `shuliang` int(11) NOT NULL COMMENT '数量',
  `zongjine` int(11) DEFAULT NULL COMMENT '总金额',
  `xiadanshijian` datetime DEFAULT NULL COMMENT '下单时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618986705548 DEFAULT CHARSET=utf8 COMMENT='预订订单';

/*Data for the table `yudingdingdan` */

insert  into `yudingdingdan`(`id`,`addtime`,`dingdanbianhao`,`caipinmingcheng`,`caixi`,`kouwei`,`jiage`,`shuliang`,`zongjine`,`xiadanshijian`,`zhanghao`,`xingming`,`shouji`,`tupian`,`ispay`,`userid`) values (41,'2021-04-21 14:17:12','订单编号1','菜品名称1','菜系1','口味1',1,1,1,'2021-04-21 14:17:12','账号1','姓名1','手机1','http://localhost:8080/ssm51988/upload/yudingdingdan_tupian1.jpg','未支付',1);
insert  into `yudingdingdan`(`id`,`addtime`,`dingdanbianhao`,`caipinmingcheng`,`caixi`,`kouwei`,`jiage`,`shuliang`,`zongjine`,`xiadanshijian`,`zhanghao`,`xingming`,`shouji`,`tupian`,`ispay`,`userid`) values (42,'2021-04-21 14:17:12','订单编号2','菜品名称2','菜系2','口味2',2,2,2,'2021-04-21 14:17:12','账号2','姓名2','手机2','http://localhost:8080/ssm51988/upload/yudingdingdan_tupian2.jpg','未支付',2);
insert  into `yudingdingdan`(`id`,`addtime`,`dingdanbianhao`,`caipinmingcheng`,`caixi`,`kouwei`,`jiage`,`shuliang`,`zongjine`,`xiadanshijian`,`zhanghao`,`xingming`,`shouji`,`tupian`,`ispay`,`userid`) values (43,'2021-04-21 14:17:12','订单编号3','菜品名称3','菜系3','口味3',3,3,3,'2021-04-21 14:17:12','账号3','姓名3','手机3','http://localhost:8080/ssm51988/upload/yudingdingdan_tupian3.jpg','未支付',3);
insert  into `yudingdingdan`(`id`,`addtime`,`dingdanbianhao`,`caipinmingcheng`,`caixi`,`kouwei`,`jiage`,`shuliang`,`zongjine`,`xiadanshijian`,`zhanghao`,`xingming`,`shouji`,`tupian`,`ispay`,`userid`) values (44,'2021-04-21 14:17:12','订单编号4','菜品名称4','菜系4','口味4',4,4,4,'2021-04-21 14:17:12','账号4','姓名4','手机4','http://localhost:8080/ssm51988/upload/yudingdingdan_tupian4.jpg','未支付',4);
insert  into `yudingdingdan`(`id`,`addtime`,`dingdanbianhao`,`caipinmingcheng`,`caixi`,`kouwei`,`jiage`,`shuliang`,`zongjine`,`xiadanshijian`,`zhanghao`,`xingming`,`shouji`,`tupian`,`ispay`,`userid`) values (45,'2021-04-21 14:17:12','订单编号5','菜品名称5','菜系5','口味5',5,5,5,'2021-04-21 14:17:12','账号5','姓名5','手机5','http://localhost:8080/ssm51988/upload/yudingdingdan_tupian5.jpg','未支付',5);
insert  into `yudingdingdan`(`id`,`addtime`,`dingdanbianhao`,`caipinmingcheng`,`caixi`,`kouwei`,`jiage`,`shuliang`,`zongjine`,`xiadanshijian`,`zhanghao`,`xingming`,`shouji`,`tupian`,`ispay`,`userid`) values (46,'2021-04-21 14:17:12','订单编号6','菜品名称6','菜系6','口味6',6,6,6,'2021-04-21 14:17:12','账号6','姓名6','手机6','http://localhost:8080/ssm51988/upload/yudingdingdan_tupian6.jpg','未支付',6);
insert  into `yudingdingdan`(`id`,`addtime`,`dingdanbianhao`,`caipinmingcheng`,`caixi`,`kouwei`,`jiage`,`shuliang`,`zongjine`,`xiadanshijian`,`zhanghao`,`xingming`,`shouji`,`tupian`,`ispay`,`userid`) values (1618986162053,'2021-04-21 14:22:41','1618986155562','某某菜','粤菜','甜咸',35,2,70,'2021-04-21 14:22:39','1','阿三','12312312323','http://localhost:8080/ssm51988/upload/1618986062269.jpg','已支付',NULL);
insert  into `yudingdingdan`(`id`,`addtime`,`dingdanbianhao`,`caipinmingcheng`,`caixi`,`kouwei`,`jiage`,`shuliang`,`zongjine`,`xiadanshijian`,`zhanghao`,`xingming`,`shouji`,`tupian`,`ispay`,`userid`) values (1618986705547,'2021-04-21 14:31:45','1618986696029','某某菜','粤菜','甜咸',35,6,210,'2021-04-21 14:31:36','11','阿四','12312312323','http://localhost:8080/ssm51988/upload/1618986062269.jpg','已支付',1618986588981);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
