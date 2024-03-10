/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - zixishixuanzuo
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`zixishixuanzuo` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `zixishixuanzuo`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/zixishixuanzuo/upload/config1.jpg'),(2,'轮播图2','http://localhost:8080/zixishixuanzuo/upload/config2.jpg'),(3,'轮播图3','http://localhost:8080/zixishixuanzuo/upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'zuowei_types','座位类型',1,'座位类型1',NULL,NULL,'2022-03-29 10:20:33'),(2,'zuowei_types','座位类型',2,'座位类型2',NULL,NULL,'2022-03-29 10:20:33'),(3,'zuowei_types','座位类型',3,'座位类型3',NULL,NULL,'2022-03-29 10:20:33'),(5,'zuowei_order_types','订单类型',1,'已支付',NULL,NULL,'2022-03-29 10:20:33'),(6,'zuowei_order_types','订单类型',2,'退款',NULL,NULL,'2022-03-29 10:20:33'),(7,'zuowei_order_types','订单类型',3,'已开门',NULL,NULL,'2022-03-29 10:20:33'),(8,'zuowei_order_payment_types','订单支付类型',1,'现金',NULL,NULL,'2022-03-29 10:20:33'),(9,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2022-03-29 10:20:33'),(10,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2022-03-29 10:20:33'),(11,'news_types','公告类型',3,'公告类型3',NULL,NULL,'2022-03-29 10:20:33'),(12,'sex_types','性别类型',1,'男',NULL,NULL,'2022-03-29 10:20:34'),(13,'sex_types','性别类型',2,'女',NULL,NULL,'2022-03-29 10:20:34'),(14,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2022-03-29 10:20:34'),(15,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2022-03-29 10:20:34');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',3,NULL,'发布内容1',NULL,1,'2022-03-29 10:22:10','2022-03-29 10:22:10','2022-03-29 10:22:10'),(2,'帖子标题2',2,NULL,'发布内容2',NULL,1,'2022-03-29 10:22:10','2022-03-29 10:22:10','2022-03-29 10:22:10'),(3,'帖子标题3',1,NULL,'发布内容3',NULL,1,'2022-03-29 10:22:10','2022-03-29 10:22:10','2022-03-29 10:22:10'),(4,'帖子标题4',3,NULL,'发布内容4',NULL,1,'2022-03-29 10:22:10','2022-03-29 10:22:10','2022-03-29 10:22:10'),(5,'帖子标题5',1,NULL,'发布内容5',NULL,1,'2022-03-29 10:22:10','2022-03-29 10:22:10','2022-03-29 10:22:10'),(6,NULL,NULL,1,'管理回复',5,2,'2022-03-29 10:49:05',NULL,'2022-03-29 10:49:05'),(7,NULL,1,NULL,'用户评论',5,2,'2022-03-29 10:52:07',NULL,'2022-03-29 10:52:07');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',3,'http://localhost:8080/zixishixuanzuo/upload/news1.jpg','2022-03-29 10:22:10','公告详情1','2022-03-29 10:22:10'),(2,'公告标题2',2,'http://localhost:8080/zixishixuanzuo/upload/news2.jpg','2022-03-29 10:22:10','公告详情2','2022-03-29 10:22:10'),(3,'公告标题3',2,'http://localhost:8080/zixishixuanzuo/upload/news3.jpg','2022-03-29 10:22:10','公告详情3','2022-03-29 10:22:10'),(4,'公告标题4',2,'http://localhost:8080/zixishixuanzuo/upload/news4.jpg','2022-03-29 10:22:10','公告详情4','2022-03-29 10:22:10'),(5,'公告标题5',1,'http://localhost:8080/zixishixuanzuo/upload/news5.jpg','2022-03-29 10:22:10','公告详情5','2022-03-29 10:22:10');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','mrdqm7mirnamusp09mwtd98d7mphz2lh','2022-03-29 10:27:23','2022-03-29 11:56:02'),(2,1,'a1','yonghu','用户','8maekzey24ensp5vevxlr836xpwx9ily','2022-03-29 10:34:13','2022-03-29 11:50:22');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2022-05-01 00:00:00');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额',
  `yonghu_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_photo`,`sex_types`,`yonghu_phone`,`yonghu_email`,`new_money`,`yonghu_delete`,`create_time`) values (1,'a1','123456','用户姓名1','http://localhost:8080/zixishixuanzuo/upload/yonghu1.jpg',2,'17703786901','1@qq.com','90647.80',1,'2022-03-29 10:22:10'),(2,'a2','123456','用户姓名2','http://localhost:8080/zixishixuanzuo/upload/yonghu2.jpg',2,'17703786902','2@qq.com','2000.00',1,'2022-03-29 10:22:10'),(3,'a3','123456','用户姓名3','http://localhost:8080/zixishixuanzuo/upload/yonghu3.jpg',1,'17703786903','3@qq.com','3000.00',1,'2022-03-29 10:22:10');

/*Table structure for table `zuowei` */

DROP TABLE IF EXISTS `zuowei`;

CREATE TABLE `zuowei` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `zuowei_name` varchar(200) DEFAULT NULL COMMENT '座位名称 Search111 ',
  `zuowei_photo` varchar(200) DEFAULT NULL COMMENT '座位照片',
  `zuowei_types` int(11) DEFAULT NULL COMMENT '座位类型 Search111',
  `zuowei_shijian` varchar(200) DEFAULT NULL COMMENT '开始时间',
  `zuowei_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价',
  `zuowei_number` int(11) DEFAULT NULL COMMENT '座位',
  `zuowei_clicknum` int(11) DEFAULT NULL COMMENT '点击次数 ',
  `zuowei_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `zuowei_content` text COMMENT '座位简介 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='座位';

/*Data for the table `zuowei` */

insert  into `zuowei`(`id`,`zuowei_name`,`zuowei_photo`,`zuowei_types`,`zuowei_shijian`,`zuowei_new_money`,`zuowei_number`,`zuowei_clicknum`,`zuowei_delete`,`zuowei_content`,`create_time`) values (1,'座位名称1','http://localhost:8080/zixishixuanzuo/upload/1648521028686.jpeg',1,'开始时间1','350.27',20,189,1,'<p>座位简介1</p>','2022-03-29 10:22:10'),(2,'座位名称2','http://localhost:8080/zixishixuanzuo/upload/1648521020295.jpeg',1,'开始时间2','302.28',20,64,1,'<p>座位简介2</p>','2022-03-29 10:22:10'),(3,'座位名称3','http://localhost:8080/zixishixuanzuo/upload/1648521012063.jpeg',2,'开始时间3','211.15',20,239,1,'<p>座位简介3</p>','2022-03-29 10:22:10'),(4,'座位名称4','http://localhost:8080/zixishixuanzuo/upload/1648521002104.jpeg',3,'开始时间4','466.30',20,297,1,'<p>座位简介4</p>','2022-03-29 10:22:10'),(5,'座位名称5','http://localhost:8080/zixishixuanzuo/upload/1648520988644.jpeg',3,'开始时间5','58.70',20,62,1,'<p>座位简介5</p>','2022-03-29 10:22:10');

/*Table structure for table `zuowei_order` */

DROP TABLE IF EXISTS `zuowei_order`;

CREATE TABLE `zuowei_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zuowei_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号 Search111 ',
  `zuowei_id` int(11) DEFAULT NULL COMMENT '座位',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `zuowei_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格 ',
  `zuowei_order_types` int(11) DEFAULT NULL COMMENT '订单类型',
  `zuowei_order_payment_types` int(11) DEFAULT NULL COMMENT '支付类型',
  `buy_zuowei_number` varchar(200) DEFAULT NULL COMMENT '购买的座位',
  `buy_zuowei_time` date DEFAULT NULL COMMENT '订购日期',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='座位订单';

/*Data for the table `zuowei_order` */

insert  into `zuowei_order`(`id`,`zuowei_order_uuid_number`,`zuowei_id`,`yonghu_id`,`zuowei_order_true_price`,`zuowei_order_types`,`zuowei_order_payment_types`,`buy_zuowei_number`,`buy_zuowei_time`,`insert_time`,`create_time`) values (1,'1648521673266',5,1,'176.10',3,1,'1,2,3','2022-03-29','2022-03-29 10:41:13','2022-03-29 10:41:13'),(2,'1648522239568',5,1,'176.10',3,1,'1,2,4','2022-03-30','2022-03-29 10:50:40','2022-03-29 10:50:40');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
