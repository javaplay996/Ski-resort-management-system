/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - huaxuechang
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`huaxuechang` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `huaxuechang`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1帝国大厦','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2023-04-17 11:28:31'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2023-04-17 11:28:31'),(3,'jinyong_types','账户状态',1,'启用',NULL,NULL,'2023-04-17 11:28:31'),(4,'jinyong_types','账户状态',2,'禁用',NULL,NULL,'2023-04-17 11:28:31'),(5,'shangxia_types','上下架',1,'上架',NULL,NULL,'2023-04-17 11:28:31'),(6,'shangxia_types','上下架',2,'下架',NULL,NULL,'2023-04-17 11:28:31'),(7,'qiju_types','器具类型',1,'器具类型1',NULL,NULL,'2023-04-17 11:28:31'),(8,'qiju_types','器具类型',2,'器具类型2',NULL,NULL,'2023-04-17 11:28:31'),(9,'qiju_types','器具类型',3,'器具类型3',NULL,NULL,'2023-04-17 11:28:31'),(10,'qiju_types','器具类型',4,'器具类型4',NULL,NULL,'2023-04-17 11:28:31'),(11,'qiju_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-04-17 11:28:31'),(12,'qiju_order_types','订单类型',101,'已申请租赁',NULL,NULL,'2023-04-17 11:28:31'),(13,'qiju_order_types','订单类型',102,'已取消申请',NULL,NULL,'2023-04-17 11:28:32'),(14,'qiju_order_types','订单类型',103,'已同意租赁',NULL,NULL,'2023-04-17 11:28:32'),(15,'qiju_order_types','订单类型',105,'已评价',NULL,NULL,'2023-04-17 11:28:32'),(16,'qiju_order_types','订单类型',106,'已归还',NULL,NULL,'2023-04-17 11:28:32'),(17,'qiju_order_payment_types','订单支付类型',1,'余额',NULL,NULL,'2023-04-17 11:28:32'),(18,'shangxia_types','上下架',1,'上架',NULL,NULL,'2023-04-17 11:28:32'),(19,'shangxia_types','上下架',2,'下架',NULL,NULL,'2023-04-17 11:28:32'),(20,'saidao_types','赛道类型',1,'赛道类型1',NULL,NULL,'2023-04-17 11:28:32'),(21,'saidao_types','赛道类型',2,'赛道类型2',NULL,NULL,'2023-04-17 11:28:32'),(22,'saidao_types','赛道类型',3,'赛道类型3',NULL,NULL,'2023-04-17 11:28:32'),(23,'saidao_types','赛道类型',4,'赛道类型4',NULL,NULL,'2023-04-17 11:28:32'),(24,'saidao_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-04-17 11:28:32'),(25,'saidao_yuyue_yesno_types','申请状态',1,'待审核',NULL,NULL,'2023-04-17 11:28:32'),(26,'saidao_yuyue_yesno_types','申请状态',2,'同意',NULL,NULL,'2023-04-17 11:28:32'),(27,'saidao_yuyue_yesno_types','申请状态',3,'拒绝',NULL,NULL,'2023-04-17 11:28:32'),(28,'jiaolian_yuyue_yesno_types','预约状态',1,'待审核',NULL,NULL,'2023-04-17 11:28:32'),(29,'jiaolian_yuyue_yesno_types','预约状态',2,'同意',NULL,NULL,'2023-04-17 11:28:32'),(30,'jiaolian_yuyue_yesno_types','预约状态',3,'拒绝',NULL,NULL,'2023-04-17 11:28:32'),(31,'gonggao_types','公告类型',1,'酒店推荐',NULL,NULL,'2023-04-17 11:28:32'),(32,'gonggao_types','公告类型',2,'餐厅推荐',NULL,NULL,'2023-04-17 11:28:32'),(33,'gonggao_types','公告类型',3,'其他公告',NULL,NULL,'2023-04-17 11:28:32'),(34,'saidao_types','赛道类型',5,'赛道类型5',NULL,'','2023-04-17 14:02:06');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `gonggao_content` longtext COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','upload/gonggao1.jpg',2,'2023-04-17 11:30:26','公告详情1','2023-04-17 11:30:26'),(2,'公告名称2','upload/gonggao2.jpg',3,'2023-04-17 11:30:26','公告详情2','2023-04-17 11:30:26'),(3,'公告名称3','upload/gonggao3.jpg',3,'2023-04-17 11:30:26','公告详情3','2023-04-17 11:30:26'),(4,'公告名称4','upload/gonggao4.jpg',3,'2023-04-17 11:30:26','公告详情4','2023-04-17 11:30:26'),(5,'公告名称5','upload/gonggao5.jpg',2,'2023-04-17 11:30:26','公告详情5','2023-04-17 11:30:26'),(6,'公告名称6','upload/gonggao6.jpg',1,'2023-04-17 11:30:26','公告详情6','2023-04-17 11:30:26'),(7,'公告名称7','upload/gonggao7.jpg',2,'2023-04-17 11:30:26','公告详情7','2023-04-17 11:30:26'),(8,'公告名称8','upload/gonggao8.jpg',1,'2023-04-17 11:30:26','公告详情8','2023-04-17 11:30:26'),(9,'公告名称9','upload/gonggao9.jpg',1,'2023-04-17 11:30:26','公告详情9','2023-04-17 11:30:26'),(10,'公告名称10','upload/gonggao10.jpg',2,'2023-04-17 11:30:26','公告详情10','2023-04-17 11:30:26'),(11,'公告名称11','upload/gonggao11.jpg',2,'2023-04-17 11:30:26','公告详情11','2023-04-17 11:30:26'),(12,'公告名称12','upload/gonggao12.jpg',1,'2023-04-17 11:30:26','公告详情12','2023-04-17 11:30:26'),(13,'公告名称13','upload/gonggao13.jpg',3,'2023-04-17 11:30:26','公告详情13','2023-04-17 11:30:26'),(14,'公告名称14','upload/gonggao14.jpg',2,'2023-04-17 11:30:26','<p>公告详情14更大功夫当</p>','2023-04-17 11:30:26');

/*Table structure for table `jiaolian` */

DROP TABLE IF EXISTS `jiaolian`;

CREATE TABLE `jiaolian` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `jiaolian_uuid_number` varchar(200) DEFAULT NULL COMMENT '教练编号 Search111 ',
  `jiaolian_name` varchar(200) DEFAULT NULL COMMENT '教练姓名 Search111 ',
  `jiaolian_phone` varchar(200) DEFAULT NULL COMMENT '教练手机号',
  `jiaolian_id_number` varchar(200) DEFAULT NULL COMMENT '教练身份证号',
  `jiaolian_photo` varchar(200) DEFAULT NULL COMMENT '教练照片',
  `jiaolian_shanchang` varchar(200) DEFAULT NULL COMMENT '擅长',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `jiaolian_email` varchar(200) DEFAULT NULL COMMENT '教练邮箱',
  `jinyong_types` int(11) DEFAULT NULL COMMENT '账户状态 Search111 ',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '预约价格/天',
  `shangjia_content` longtext COMMENT '教练介绍',
  `shangjia_rongyu_content` longtext COMMENT '所获荣誉',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='教练';

/*Data for the table `jiaolian` */

insert  into `jiaolian`(`id`,`username`,`password`,`jiaolian_uuid_number`,`jiaolian_name`,`jiaolian_phone`,`jiaolian_id_number`,`jiaolian_photo`,`jiaolian_shanchang`,`sex_types`,`jiaolian_email`,`jinyong_types`,`new_money`,`shangjia_content`,`shangjia_rongyu_content`,`create_time`) values (1,'a1','123456','1681702226748','教练姓名1','17703786901','410224199010102001','upload/jiaolian1.jpg','擅长1',2,'1@qq.com',1,'567.33','<p>教练介绍1和第三个第三个</p>','<p>所获荣誉1好</p>','2023-04-17 11:30:26'),(2,'a2','123456','1681702226756','教练姓名2','17703786902','410224199010102002','upload/jiaolian2.jpg','擅长2',2,'2@qq.com',1,'541.72','教练介绍2','所获荣誉2','2023-04-17 11:30:26'),(3,'a3','123456','1681702226812','教练姓名3','17703786903','410224199010102003','upload/jiaolian3.jpg','擅长3',1,'3@qq.com',2,'568.04','<p>教练介绍3</p>','<p>所获荣誉3</p>','2023-04-17 11:30:26');

/*Table structure for table `jiaolian_yuyue` */

DROP TABLE IF EXISTS `jiaolian_yuyue`;

CREATE TABLE `jiaolian_yuyue` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiaolian_yuyue_uuid_number` varchar(200) DEFAULT NULL COMMENT '报名编号 Search111 ',
  `jiaolian_id` int(11) DEFAULT NULL COMMENT '教练',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `jiaolian_yuyue_text` longtext COMMENT '预约缘由',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `jiaolian_yuyue_time` date DEFAULT NULL COMMENT '预约日期',
  `jiaolian_yuyue_yesno_types` int(11) DEFAULT NULL COMMENT '预约状态 Search111 ',
  `jiaolian_yuyue_yesno_text` longtext COMMENT '审核回复',
  `jiaolian_yuyue_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='教练预约';

/*Data for the table `jiaolian_yuyue` */

insert  into `jiaolian_yuyue`(`id`,`jiaolian_yuyue_uuid_number`,`jiaolian_id`,`yonghu_id`,`jiaolian_yuyue_text`,`insert_time`,`jiaolian_yuyue_time`,`jiaolian_yuyue_yesno_types`,`jiaolian_yuyue_yesno_text`,`jiaolian_yuyue_shenhe_time`,`create_time`) values (1,'1681702226749',2,2,'预约缘由1','2023-04-17 11:30:26','2023-04-17',2,'同意','2023-04-17 11:30:26','2023-04-17 11:30:26'),(2,'1681702226820',2,1,'预约缘由2','2023-04-17 11:30:26','2023-04-17',2,'同意','2023-04-17 11:30:26','2023-04-17 11:30:26'),(3,'1681702226776',3,1,'预约缘由3','2023-04-17 11:30:26','2023-04-17',2,'同意','2023-04-17 11:30:26','2023-04-17 11:30:26'),(4,'1681702226795',1,3,'预约缘由4','2023-04-17 11:30:26','2023-04-17',2,'同意','2023-04-17 11:30:26','2023-04-17 11:30:26'),(5,'1681702226786',2,2,'预约缘由5','2023-04-17 11:30:26','2023-04-17',2,'同意','2023-04-17 11:30:26','2023-04-17 11:30:26'),(6,'1681702226823',2,2,'预约缘由6','2023-04-17 11:30:26','2023-04-17',2,'同意','2023-04-17 11:30:26','2023-04-17 11:30:26'),(7,'1681702226831',1,1,'预约缘由7','2023-04-17 11:30:26','2023-04-17',2,'同意','2023-04-17 11:30:26','2023-04-17 11:30:26'),(8,'1681702226763',2,3,'预约缘由8','2023-04-17 11:30:26','2023-04-17',2,'同意','2023-04-17 11:30:26','2023-04-17 11:30:26'),(9,'1681702226750',1,1,'预约缘由9','2023-04-17 11:30:26','2023-04-17',2,'同意','2023-04-17 11:30:26','2023-04-17 11:30:26'),(10,'1681702226775',1,2,'预约缘由10','2023-04-17 11:30:26','2023-04-17',2,'同意','2023-04-17 11:30:26','2023-04-17 11:30:26'),(11,'1681702226765',1,3,'预约缘由11','2023-04-17 11:30:26','2023-04-17',2,'同意','2023-04-17 11:30:26','2023-04-17 11:30:26'),(12,'1681702226765',3,1,'预约缘由12','2023-04-17 11:30:26','2023-04-17',2,'同意','2023-04-17 11:30:26','2023-04-17 11:30:26'),(13,'1681702226743',1,1,'预约缘由13','2023-04-17 11:30:26','2023-04-17',2,'同意','2023-04-17 11:30:26','2023-04-17 11:30:26'),(14,'1681702226835',3,2,'预约缘由14','2023-04-17 11:30:26','2023-04-17',2,'同意','2023-04-17 11:30:26','2023-04-17 11:30:26'),(15,'1681702971886',1,1,'广东省格式的','2023-04-17 11:42:52','2023-04-17',2,'同意','2023-04-17 11:42:52','2023-04-17 11:42:52'),(16,'1681711186665',1,4,'挂号订单三大赛','2023-04-17 13:59:47','2023-04-18',3,'那天我有事情','2023-04-17 14:01:46','2023-04-17 13:59:47');

/*Table structure for table `liuyan` */

DROP TABLE IF EXISTS `liuyan`;

CREATE TABLE `liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `liuyan_name` varchar(200) DEFAULT NULL COMMENT '留言标题  Search111 ',
  `liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `liuyan` */

insert  into `liuyan`(`id`,`yonghu_id`,`liuyan_name`,`liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,3,'留言标题1','留言内容1','2023-04-17 11:30:26','回复信息1','2023-04-17 11:30:26','2023-04-17 11:30:26'),(2,1,'留言标题2','留言内容2','2023-04-17 11:30:26','回复信息2','2023-04-17 11:30:26','2023-04-17 11:30:26'),(3,3,'留言标题3','留言内容3','2023-04-17 11:30:26','回复信息3','2023-04-17 11:30:26','2023-04-17 11:30:26'),(4,1,'留言标题4','留言内容4','2023-04-17 11:30:26','回复信息4','2023-04-17 11:30:26','2023-04-17 11:30:26'),(5,3,'留言标题5','留言内容5','2023-04-17 11:30:26','回复信息5','2023-04-17 11:30:26','2023-04-17 11:30:26'),(6,1,'留言标题6','留言内容6','2023-04-17 11:30:26','回复信息6','2023-04-17 11:30:26','2023-04-17 11:30:26'),(7,1,'留言标题7','留言内容7','2023-04-17 11:30:26','回复信息7','2023-04-17 11:30:26','2023-04-17 11:30:26'),(8,1,'留言标题8','留言内容8','2023-04-17 11:30:26','回复信息8','2023-04-17 11:30:26','2023-04-17 11:30:26'),(9,3,'留言标题9','留言内容9','2023-04-17 11:30:26','回复信息9','2023-04-17 11:30:26','2023-04-17 11:30:26'),(10,1,'留言标题10','留言内容10','2023-04-17 11:30:26','回复信息10','2023-04-17 11:30:26','2023-04-17 11:30:26'),(11,2,'留言标题11','留言内容11','2023-04-17 11:30:26','回复信息11','2023-04-17 11:30:26','2023-04-17 11:30:26'),(12,1,'留言标题12','留言内容12','2023-04-17 11:30:26','回复信息12','2023-04-17 11:30:26','2023-04-17 11:30:26'),(13,3,'留言标题13','留言内容13','2023-04-17 11:30:26','回复信息13','2023-04-17 11:30:26','2023-04-17 11:30:26'),(14,3,'留言标题14','留言内容14','2023-04-17 11:30:26','回复信息14','2023-04-17 11:30:26','2023-04-17 11:30:26'),(15,4,'标题  11','郭德纲的三个','2023-04-17 13:59:56','高大上工地上干活','2023-04-17 14:02:21','2023-04-17 13:59:56');

/*Table structure for table `qiju` */

DROP TABLE IF EXISTS `qiju`;

CREATE TABLE `qiju` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `qiju_name` varchar(200) DEFAULT NULL COMMENT '器具名称  Search111 ',
  `qiju_uuid_number` varchar(200) DEFAULT NULL COMMENT '器具编号',
  `qiju_photo` varchar(200) DEFAULT NULL COMMENT '器具照片',
  `qiju_types` int(11) DEFAULT NULL COMMENT '器具类型 Search111',
  `qiju_kucun_number` int(11) DEFAULT NULL COMMENT '器具数量',
  `qiju_old_money` decimal(10,2) DEFAULT NULL COMMENT '器具原价 ',
  `qiju_new_money` decimal(10,2) DEFAULT NULL COMMENT '租赁价格/天',
  `qiju_clicknum` int(11) DEFAULT NULL COMMENT '器具热度',
  `qiju_content` longtext COMMENT '器具介绍 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `qiju_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='滑雪器具';

/*Data for the table `qiju` */

insert  into `qiju`(`id`,`qiju_name`,`qiju_uuid_number`,`qiju_photo`,`qiju_types`,`qiju_kucun_number`,`qiju_old_money`,`qiju_new_money`,`qiju_clicknum`,`qiju_content`,`shangxia_types`,`qiju_delete`,`insert_time`,`create_time`) values (1,'器具名称1','1681702226744','upload/qiju1.jpg',1,101,'741.77','295.79',221,'器具介绍1',1,1,'2023-04-17 11:30:26','2023-04-17 11:30:26'),(2,'器具名称2','1681702226817','upload/qiju2.jpg',4,102,'727.70','52.65',44,'器具介绍2',1,1,'2023-04-17 11:30:26','2023-04-17 11:30:26'),(3,'器具名称3','1681702226839','upload/qiju3.jpg',4,103,'566.66','245.33',126,'器具介绍3',1,1,'2023-04-17 11:30:26','2023-04-17 11:30:26'),(4,'器具名称4','1681702226770','upload/qiju4.jpg',1,103,'512.09','71.62',354,'器具介绍4',1,1,'2023-04-17 11:30:26','2023-04-17 11:30:26'),(5,'器具名称5','1681702226807','upload/qiju5.jpg',2,105,'889.20','164.16',276,'器具介绍5',1,1,'2023-04-17 11:30:26','2023-04-17 11:30:26'),(6,'器具名称6','1681702226809','upload/qiju6.jpg',3,106,'603.45','464.51',365,'器具介绍6',1,1,'2023-04-17 11:30:26','2023-04-17 11:30:26'),(7,'器具名称7','1681702226752','upload/qiju7.jpg',4,107,'899.45','452.98',186,'器具介绍7',1,1,'2023-04-17 11:30:26','2023-04-17 11:30:26'),(8,'器具名称8','1681702226751','upload/qiju8.jpg',4,108,'567.84','466.68',51,'器具介绍8',1,1,'2023-04-17 11:30:26','2023-04-17 11:30:26'),(9,'器具名称9','1681702226782','upload/qiju9.jpg',1,109,'761.31','68.34',322,'器具介绍9',1,1,'2023-04-17 11:30:26','2023-04-17 11:30:26'),(10,'器具名称10','1681702226803','upload/qiju10.jpg',3,1010,'975.32','342.74',162,'器具介绍10',1,1,'2023-04-17 11:30:26','2023-04-17 11:30:26'),(11,'器具名称11','1681702226787','upload/qiju11.jpg',4,1011,'955.72','104.95',185,'器具介绍11',1,1,'2023-04-17 11:30:26','2023-04-17 11:30:26'),(12,'器具名称12','1681702226780','upload/qiju12.jpg',2,1012,'979.34','458.01',283,'器具介绍12',1,1,'2023-04-17 11:30:26','2023-04-17 11:30:26'),(13,'器具名称13','1681702226832','upload/qiju13.jpg',1,1013,'758.86','342.19',444,'器具介绍13',1,1,'2023-04-17 11:30:26','2023-04-17 11:30:26'),(14,'器具名称14','1681702226809','upload/qiju14.jpg',3,1014,'980.97','132.29',78,'器具介绍14',1,1,'2023-04-17 11:30:26','2023-04-17 11:30:26');

/*Table structure for table `qiju_collection` */

DROP TABLE IF EXISTS `qiju_collection`;

CREATE TABLE `qiju_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `qiju_id` int(11) DEFAULT NULL COMMENT '器具',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `qiju_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='器具收藏';

/*Data for the table `qiju_collection` */

insert  into `qiju_collection`(`id`,`qiju_id`,`yonghu_id`,`qiju_collection_types`,`insert_time`,`create_time`) values (1,1,1,1,'2023-04-17 11:30:26','2023-04-17 11:30:26'),(2,2,2,1,'2023-04-17 11:30:26','2023-04-17 11:30:26'),(3,3,1,1,'2023-04-17 11:30:26','2023-04-17 11:30:26'),(4,4,2,1,'2023-04-17 11:30:26','2023-04-17 11:30:26'),(5,5,3,1,'2023-04-17 11:30:26','2023-04-17 11:30:26'),(6,6,3,1,'2023-04-17 11:30:26','2023-04-17 11:30:26'),(7,7,1,1,'2023-04-17 11:30:26','2023-04-17 11:30:26'),(8,8,1,1,'2023-04-17 11:30:26','2023-04-17 11:30:26'),(9,9,2,1,'2023-04-17 11:30:26','2023-04-17 11:30:26'),(10,10,3,1,'2023-04-17 11:30:26','2023-04-17 11:30:26'),(11,11,1,1,'2023-04-17 11:30:26','2023-04-17 11:30:26'),(12,12,3,1,'2023-04-17 11:30:26','2023-04-17 11:30:26'),(13,13,2,1,'2023-04-17 11:30:26','2023-04-17 11:30:26'),(14,14,3,1,'2023-04-17 11:30:26','2023-04-17 11:30:26'),(15,6,4,1,'2023-04-17 13:57:07','2023-04-17 13:57:07');

/*Table structure for table `qiju_commentback` */

DROP TABLE IF EXISTS `qiju_commentback`;

CREATE TABLE `qiju_commentback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `qiju_id` int(11) DEFAULT NULL COMMENT '器具',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `qiju_commentback_text` longtext COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='器具评价';

/*Data for the table `qiju_commentback` */

insert  into `qiju_commentback`(`id`,`qiju_id`,`yonghu_id`,`qiju_commentback_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,1,'评价内容1','2023-04-17 11:30:26','回复信息1','2023-04-17 11:30:26','2023-04-17 11:30:26'),(2,2,3,'评价内容2','2023-04-17 11:30:26','回复信息2','2023-04-17 11:30:26','2023-04-17 11:30:26'),(3,3,2,'评价内容3','2023-04-17 11:30:26','回复信息3','2023-04-17 11:30:26','2023-04-17 11:30:26'),(4,4,3,'评价内容4','2023-04-17 11:30:26','回复信息4','2023-04-17 11:30:26','2023-04-17 11:30:26'),(5,5,2,'评价内容5','2023-04-17 11:30:26','回复信息5','2023-04-17 11:30:26','2023-04-17 11:30:26'),(6,6,2,'评价内容6','2023-04-17 11:30:26','回复信息6','2023-04-17 11:30:26','2023-04-17 11:30:26'),(7,7,1,'评价内容7','2023-04-17 11:30:26','回复信息7','2023-04-17 11:30:26','2023-04-17 11:30:26'),(8,8,1,'评价内容8','2023-04-17 11:30:26','回复信息8','2023-04-17 11:30:26','2023-04-17 11:30:26'),(9,9,2,'评价内容9','2023-04-17 11:30:26','回复信息9','2023-04-17 11:30:26','2023-04-17 11:30:26'),(10,10,3,'评价内容10','2023-04-17 11:30:26','回复信息10','2023-04-17 11:30:26','2023-04-17 11:30:26'),(11,11,1,'评价内容11','2023-04-17 11:30:26','回复信息11','2023-04-17 11:30:26','2023-04-17 11:30:26'),(12,12,1,'评价内容12','2023-04-17 11:30:26','回复信息12','2023-04-17 11:30:26','2023-04-17 11:30:26'),(13,13,1,'评价内容13','2023-04-17 11:30:26','回复信息13','2023-04-17 11:30:26','2023-04-17 11:30:26'),(14,14,2,'评价内容14','2023-04-17 11:30:26','回复信息14','2023-04-17 11:30:26','2023-04-17 11:30:26'),(15,6,4,'山东高速第三个','2023-04-17 14:03:20','合适的广东省分公司的发个','2023-04-17 14:03:29','2023-04-17 14:03:20');

/*Table structure for table `qiju_order` */

DROP TABLE IF EXISTS `qiju_order`;

CREATE TABLE `qiju_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `qiju_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单编号 Search111 ',
  `qiju_id` int(11) DEFAULT NULL COMMENT '器具',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `buy_number` int(11) DEFAULT NULL COMMENT '租赁数量',
  `qiju_order_time` timestamp NULL DEFAULT NULL COMMENT '租赁时间',
  `qiju_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `qiju_order_types` int(11) DEFAULT NULL COMMENT '订单类型 Search111 ',
  `qiju_order_payment_types` int(11) DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='器具订单';

/*Data for the table `qiju_order` */

insert  into `qiju_order`(`id`,`qiju_order_uuid_number`,`qiju_id`,`yonghu_id`,`buy_number`,`qiju_order_time`,`qiju_order_true_price`,`qiju_order_types`,`qiju_order_payment_types`,`insert_time`,`create_time`) values (1,'1681708869809',4,1,1,'2023-04-17 13:20:35','71.62',103,1,'2023-04-17 13:21:10','2023-04-17 13:21:10'),(2,'1681709387746',4,1,2,'2023-04-17 13:29:46','143.24',106,1,'2023-04-17 13:29:48','2023-04-17 13:29:48'),(3,'1681711207048',6,4,2,'2023-04-18 14:00:03','929.02',106,1,'2023-04-17 14:00:07','2023-04-17 14:00:07');

/*Table structure for table `saidao` */

DROP TABLE IF EXISTS `saidao`;

CREATE TABLE `saidao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `saidao_name` varchar(200) DEFAULT NULL COMMENT '赛道名称  Search111 ',
  `saidao_uuid_number` varchar(200) DEFAULT NULL COMMENT '赛道编号',
  `saidao_photo` varchar(200) DEFAULT NULL COMMENT '赛道缩略图',
  `saidao_types` int(11) DEFAULT NULL COMMENT '赛道类型 Search111',
  `saidao_old_money` decimal(10,2) DEFAULT NULL COMMENT '赛道原价 ',
  `saidao_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价/天',
  `saidao_clicknum` int(11) DEFAULT NULL COMMENT '赛道热度',
  `saidao_content` longtext COMMENT '赛道介绍 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `saidao_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='赛道';

/*Data for the table `saidao` */

insert  into `saidao`(`id`,`saidao_name`,`saidao_uuid_number`,`saidao_photo`,`saidao_types`,`saidao_old_money`,`saidao_new_money`,`saidao_clicknum`,`saidao_content`,`shangxia_types`,`saidao_delete`,`insert_time`,`create_time`) values (1,'赛道名称1','1681702226754','upload/saidao1.jpg',3,'502.35','278.97',198,'赛道介绍1',1,1,'2023-04-17 11:30:26','2023-04-17 11:30:26'),(2,'赛道名称2','1681702226758','upload/saidao2.jpg',1,'996.19','273.15',365,'赛道介绍2',1,1,'2023-04-17 11:30:26','2023-04-17 11:30:26'),(3,'赛道名称3','1681702226797','upload/saidao3.jpg',1,'952.47','348.99',115,'赛道介绍3',1,1,'2023-04-17 11:30:26','2023-04-17 11:30:26'),(4,'赛道名称4','1681702226839','upload/saidao4.jpg',4,'859.81','41.57',442,'赛道介绍4',1,1,'2023-04-17 11:30:26','2023-04-17 11:30:26'),(5,'赛道名称5','1681702226828','upload/saidao5.jpg',1,'869.11','174.41',228,'赛道介绍5',1,1,'2023-04-17 11:30:26','2023-04-17 11:30:26'),(6,'赛道名称6','1681702226810','upload/saidao6.jpg',1,'633.99','16.63',371,'赛道介绍6',1,1,'2023-04-17 11:30:26','2023-04-17 11:30:26'),(7,'赛道名称7','1681702226816','upload/saidao7.jpg',3,'709.10','316.62',145,'赛道介绍7',1,1,'2023-04-17 11:30:26','2023-04-17 11:30:26'),(8,'赛道名称8','1681702226843','upload/saidao8.jpg',1,'877.88','120.03',164,'赛道介绍8',1,1,'2023-04-17 11:30:26','2023-04-17 11:30:26'),(9,'赛道名称9','1681702226849','upload/saidao9.jpg',3,'846.58','362.85',268,'赛道介绍9',1,1,'2023-04-17 11:30:26','2023-04-17 11:30:26'),(10,'赛道名称10','1681702226813','upload/saidao10.jpg',3,'908.63','322.48',378,'赛道介绍10',1,1,'2023-04-17 11:30:26','2023-04-17 11:30:26'),(11,'赛道名称11','1681702226761','upload/saidao11.jpg',1,'899.28','401.74',485,'赛道介绍11',1,1,'2023-04-17 11:30:26','2023-04-17 11:30:26'),(12,'赛道名称12','1681702226820','upload/saidao12.jpg',3,'895.26','377.78',220,'赛道介绍12',1,1,'2023-04-17 11:30:26','2023-04-17 11:30:26'),(13,'赛道名称13','1681702226831','upload/saidao13.jpg',1,'932.70','43.12',430,'赛道介绍13',1,1,'2023-04-17 11:30:26','2023-04-17 11:30:26'),(14,'赛道名称14','1681702226797','upload/saidao14.jpg',1,'524.56','276.37',87,'赛道介绍14',1,1,'2023-04-17 11:30:26','2023-04-17 11:30:26');

/*Table structure for table `saidao_collection` */

DROP TABLE IF EXISTS `saidao_collection`;

CREATE TABLE `saidao_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `saidao_id` int(11) DEFAULT NULL COMMENT '赛道',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `saidao_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='赛道收藏';

/*Data for the table `saidao_collection` */

insert  into `saidao_collection`(`id`,`saidao_id`,`yonghu_id`,`saidao_collection_types`,`insert_time`,`create_time`) values (1,1,2,1,'2023-04-17 11:30:26','2023-04-17 11:30:26'),(2,2,2,1,'2023-04-17 11:30:26','2023-04-17 11:30:26'),(3,3,1,1,'2023-04-17 11:30:26','2023-04-17 11:30:26'),(4,4,1,1,'2023-04-17 11:30:26','2023-04-17 11:30:26'),(5,5,3,1,'2023-04-17 11:30:26','2023-04-17 11:30:26'),(6,6,2,1,'2023-04-17 11:30:26','2023-04-17 11:30:26'),(7,7,2,1,'2023-04-17 11:30:26','2023-04-17 11:30:26'),(8,8,3,1,'2023-04-17 11:30:26','2023-04-17 11:30:26'),(9,9,3,1,'2023-04-17 11:30:26','2023-04-17 11:30:26'),(10,10,2,1,'2023-04-17 11:30:26','2023-04-17 11:30:26'),(11,11,1,1,'2023-04-17 11:30:26','2023-04-17 11:30:26'),(12,12,3,1,'2023-04-17 11:30:26','2023-04-17 11:30:26'),(13,13,2,1,'2023-04-17 11:30:26','2023-04-17 11:30:26'),(14,14,3,1,'2023-04-17 11:30:26','2023-04-17 11:30:26'),(15,13,4,1,'2023-04-17 14:00:13','2023-04-17 14:00:13');

/*Table structure for table `saidao_liuyan` */

DROP TABLE IF EXISTS `saidao_liuyan`;

CREATE TABLE `saidao_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `saidao_id` int(11) DEFAULT NULL COMMENT '赛道',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `saidao_liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='赛道留言';

/*Data for the table `saidao_liuyan` */

insert  into `saidao_liuyan`(`id`,`saidao_id`,`yonghu_id`,`saidao_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,3,'留言内容1','2023-04-17 11:30:26','回复信息1','2023-04-17 11:30:26','2023-04-17 11:30:26'),(2,2,2,'留言内容2','2023-04-17 11:30:26','回复信息2','2023-04-17 11:30:26','2023-04-17 11:30:26'),(3,3,2,'留言内容3','2023-04-17 11:30:26','回复信息3','2023-04-17 11:30:26','2023-04-17 11:30:26'),(4,4,1,'留言内容4','2023-04-17 11:30:26','回复信息4','2023-04-17 11:30:26','2023-04-17 11:30:26'),(5,5,3,'留言内容5','2023-04-17 11:30:26','回复信息5','2023-04-17 11:30:26','2023-04-17 11:30:26'),(6,6,2,'留言内容6','2023-04-17 11:30:26','回复信息6','2023-04-17 11:30:26','2023-04-17 11:30:26'),(7,7,1,'留言内容7','2023-04-17 11:30:26','回复信息7','2023-04-17 11:30:26','2023-04-17 11:30:26'),(8,8,2,'留言内容8','2023-04-17 11:30:26','回复信息8','2023-04-17 11:30:26','2023-04-17 11:30:26'),(9,9,3,'留言内容9','2023-04-17 11:30:26','回复信息9','2023-04-17 11:30:26','2023-04-17 11:30:26'),(10,10,3,'留言内容10','2023-04-17 11:30:26','回复信息10','2023-04-17 11:30:26','2023-04-17 11:30:26'),(11,11,1,'留言内容11','2023-04-17 11:30:26','回复信息11','2023-04-17 11:30:26','2023-04-17 11:30:26'),(12,12,3,'留言内容12','2023-04-17 11:30:26','回复信息12','2023-04-17 11:30:26','2023-04-17 11:30:26'),(13,13,2,'留言内容13','2023-04-17 11:30:26','回复信息13','2023-04-17 11:30:26','2023-04-17 11:30:26'),(14,14,2,'留言内容14','2023-04-17 11:30:26','回复信息14','2023-04-17 11:30:26','2023-04-17 11:30:26');

/*Table structure for table `saidao_yuyue` */

DROP TABLE IF EXISTS `saidao_yuyue`;

CREATE TABLE `saidao_yuyue` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `saidao_yuyue_uuid_number` varchar(200) DEFAULT NULL COMMENT '申请编号 Search111 ',
  `saidao_id` int(11) DEFAULT NULL COMMENT '赛道',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `saidao_yuyue_text` longtext COMMENT '申请缘由',
  `saidao_yuyue_time` date DEFAULT NULL COMMENT '预约日期',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `saidao_yuyue_yesno_types` int(11) DEFAULT NULL COMMENT '申请状态 Search111 ',
  `saidao_yuyue_yesno_text` longtext COMMENT '审核回复',
  `saidao_yuyue_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='赛道预约';

/*Data for the table `saidao_yuyue` */

insert  into `saidao_yuyue`(`id`,`saidao_yuyue_uuid_number`,`saidao_id`,`yonghu_id`,`saidao_yuyue_text`,`saidao_yuyue_time`,`insert_time`,`saidao_yuyue_yesno_types`,`saidao_yuyue_yesno_text`,`saidao_yuyue_shenhe_time`,`create_time`) values (1,'1681702226795',1,1,'申请缘由1','2023-04-17','2023-04-17 11:30:26',2,'同意','2023-04-17 11:30:26','2023-04-17 11:30:26'),(2,'1681702226784',2,2,'申请缘由2','2023-04-17','2023-04-17 11:30:26',2,'同意','2023-04-17 11:30:26','2023-04-17 11:30:26'),(3,'1681702226794',2,1,'申请缘由3','2023-04-17','2023-04-17 11:30:26',2,'同意','2023-04-17 11:30:26','2023-04-17 11:30:26'),(4,'1681702226758',2,1,'申请缘由4','2023-04-17','2023-04-17 11:30:26',2,'同意','2023-04-17 11:30:26','2023-04-17 11:30:26'),(5,'1681702226845',2,3,'申请缘由5','2023-04-17','2023-04-17 11:30:26',2,'同意','2023-04-17 11:30:26','2023-04-17 11:30:26'),(6,'1681702226819',2,1,'申请缘由6','2023-04-17','2023-04-17 11:30:26',2,'同意','2023-04-17 11:30:26','2023-04-17 11:30:26'),(7,'1681702226841',7,2,'申请缘由7','2023-04-17','2023-04-17 11:30:26',2,'同意','2023-04-17 11:30:26','2023-04-17 11:30:26'),(8,'1681702226766',4,1,'申请缘由8','2023-04-17','2023-04-17 11:30:26',2,'同意','2023-04-17 11:30:26','2023-04-17 11:30:26'),(9,'1681702226809',4,2,'申请缘由9','2023-04-17','2023-04-17 11:30:26',2,'同意','2023-04-17 11:30:26','2023-04-17 11:30:26'),(10,'1681702226759',4,2,'申请缘由10','2023-04-17','2023-04-17 11:30:26',2,'同意','2023-04-17 11:30:26','2023-04-17 11:30:26'),(11,'1681702226826',4,1,'申请缘由11','2023-04-17','2023-04-17 11:30:26',2,'同意','2023-04-17 11:30:26','2023-04-17 11:30:26'),(12,'1681702226767',12,2,'申请缘由12','2023-04-17','2023-04-17 11:30:26',2,'同意','2023-04-17 11:30:26','2023-04-17 11:30:26'),(13,'1681702226758',3,3,'申请缘由13','2023-04-17','2023-04-17 11:30:26',2,'同意','2023-04-17 11:30:26','2023-04-17 11:30:26'),(14,'1681702226817',3,2,'申请缘由14','2023-04-17','2023-04-17 11:30:26',2,'同意','2023-04-17 11:30:26','2023-04-17 11:30:26'),(15,'1681711220328',13,4,'勾搭勾搭上高档的','2023-04-18','2023-04-17 14:00:20',2,'合适的话地方时','2023-04-17 14:03:59','2023-04-17 14:00:20');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '员工id',
  `username` varchar(100) NOT NULL COMMENT '员工名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','sqcu44nwmg94rq7qboglxobufmudbf0n','2023-04-17 11:37:04','2023-04-17 15:07:16'),(2,1,'a1','yonghu','用户','2xht2lx0a0htyue1dh7o2qeo6j0vlkd3','2023-04-17 11:37:57','2023-04-17 15:03:08'),(3,4,'a5','yonghu','用户','89ldxfgukee5zdr51ikq3it34wnudiyi','2023-04-17 13:56:58','2023-04-17 15:03:13'),(4,1,'a1','jiaolian','教练','btb43ojjv9h6nwmck2ph9gnqtcfjge6t','2023-04-17 14:01:15','2023-04-17 15:01:15');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '员工名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-04-17 11:28:31');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_uuid_number` varchar(200) DEFAULT NULL COMMENT '用户编号 Search111 ',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `jinyong_types` int(11) DEFAULT NULL COMMENT '账户状态 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_uuid_number`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`new_money`,`jinyong_types`,`create_time`) values (1,'a1','123456','1681702226794','用户姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',1,'1@qq.com','665.69',1,'2023-04-17 11:30:26'),(2,'a2','123456','1681702226842','用户姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',1,'2@qq.com','646.80',1,'2023-04-17 11:30:26'),(3,'a3','123456','1681702226791','用户姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',2,'3@qq.com','554.55',1,'2023-04-17 11:30:26'),(4,'a5','123456','1681711013250','张5','17788885555','444222333366668888','upload/1681711035454.jpg',2,'5@qq.com','99026.86',2,'2023-04-17 13:56:53');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
