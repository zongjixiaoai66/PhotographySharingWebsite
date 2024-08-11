/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t322`;
CREATE DATABASE IF NOT EXISTS `t322` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t322`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'upload/config1.jpg'),
	(2, '轮播图2', 'upload/config2.jpg'),
	(3, '轮播图3', 'upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'sucaishipin_types', '视频素材类型', 1, '视频素材类型1', NULL, NULL, '2023-03-31 01:43:42'),
	(2, 'sucaishipin_types', '视频素材类型', 2, '视频素材类型2', NULL, NULL, '2023-03-31 01:43:42'),
	(3, 'sucaishipin_types', '视频素材类型', 3, '视频素材类型3', NULL, NULL, '2023-03-31 01:43:42'),
	(4, 'sucaishipin_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2023-03-31 01:43:42'),
	(5, 'sucaishipin_collection_types', '收藏表类型', 2, '赞', NULL, NULL, '2023-03-31 01:43:42'),
	(6, 'sucaishipin_collection_types', '收藏表类型', 3, '踩', NULL, NULL, '2023-03-31 01:43:42'),
	(7, 'sucai_types', '图片素材类型', 1, '图片素材类型1', NULL, NULL, '2023-03-31 01:43:42'),
	(8, 'sucai_types', '图片素材类型', 2, '图片素材类型2', NULL, NULL, '2023-03-31 01:43:42'),
	(9, 'sucai_types', '图片素材类型', 3, '图片素材类型3', NULL, NULL, '2023-03-31 01:43:42'),
	(10, 'sucai_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2023-03-31 01:43:42'),
	(11, 'sucai_collection_types', '收藏表类型', 2, '赞', NULL, NULL, '2023-03-31 01:43:42'),
	(12, 'sucai_collection_types', '收藏表类型', 3, '踩', NULL, NULL, '2023-03-31 01:43:42'),
	(13, 'huodong_types', '活动类型', 1, '活动类型1', NULL, NULL, '2023-03-31 01:43:42'),
	(14, 'huodong_types', '活动类型', 2, '活动类型2', NULL, NULL, '2023-03-31 01:43:42'),
	(15, 'huodong_types', '活动类型', 3, '活动类型3', NULL, NULL, '2023-03-31 01:43:42'),
	(16, 'huodong_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2023-03-31 01:43:42'),
	(17, 'huodong_collection_types', '收藏表类型', 2, '赞', NULL, NULL, '2023-03-31 01:43:42'),
	(18, 'huodong_collection_types', '收藏表类型', 3, '踩', NULL, NULL, '2023-03-31 01:43:42'),
	(19, 'huodong_yuyue_yesno_types', '报名状态', 1, '待审核', NULL, NULL, '2023-03-31 01:43:42'),
	(20, 'huodong_yuyue_yesno_types', '报名状态', 2, '同意', NULL, NULL, '2023-03-31 01:43:42'),
	(21, 'huodong_yuyue_yesno_types', '报名状态', 3, '拒绝', NULL, NULL, '2023-03-31 01:43:42'),
	(22, 'news_types', '公告类型', 1, '公告类型1', NULL, NULL, '2023-03-31 01:43:42'),
	(23, 'news_types', '公告类型', 2, '公告类型2', NULL, NULL, '2023-03-31 01:43:42'),
	(24, 'news_types', '公告类型', 3, '公告类型3', NULL, NULL, '2023-03-31 01:43:42'),
	(25, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2023-03-31 01:43:42'),
	(26, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2023-03-31 01:43:43'),
	(27, 'forum_state_types', '帖子状态', 1, '发帖', NULL, NULL, '2023-03-31 01:43:43'),
	(28, 'forum_state_types', '帖子状态', 2, '回帖', NULL, NULL, '2023-03-31 01:43:43');

DROP TABLE IF EXISTS `forum`;
CREATE TABLE IF NOT EXISTS `forum` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `users_id` int DEFAULT NULL COMMENT '管理员',
  `forum_content` longtext COMMENT '发布内容',
  `super_ids` int DEFAULT NULL COMMENT '父id',
  `forum_state_types` int DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='论坛';

DELETE FROM `forum`;
INSERT INTO `forum` (`id`, `forum_name`, `yonghu_id`, `users_id`, `forum_content`, `super_ids`, `forum_state_types`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, '帖子标题1', 1, NULL, '发布内容1', 45, 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(2, '帖子标题2', 3, NULL, '发布内容2', 8, 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(3, '帖子标题3', 1, NULL, '发布内容3', 171, 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(4, '帖子标题4', 2, NULL, '发布内容4', 122, 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(5, '帖子标题5', 2, NULL, '发布内容5', 410, 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(6, '帖子标题6', 3, NULL, '发布内容6', 31, 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(7, '帖子标题7', 2, NULL, '发布内容7', 106, 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(8, '帖子标题8', 2, NULL, '发布内容8', 401, 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(9, '帖子标题9', 2, NULL, '发布内容9', 167, 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(10, '帖子标题10', 1, NULL, '发布内容10', 448, 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(11, '帖子标题11', 1, NULL, '发布内容11', 70, 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(12, '帖子标题12', 1, NULL, '发布内容12', 13, 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(13, '帖子标题13', 3, NULL, '发布内容13', 63, 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(14, '帖子标题14', 2, NULL, '发布内容14', 98, 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(15, NULL, 1, NULL, '登录后才可以查看数据详情页 和留言收藏点赞等操作', 14, 2, '2023-03-31 02:06:29', NULL, '2023-03-31 02:06:29'),
	(16, NULL, NULL, 1, '222222222222222222222', 14, 2, '2023-03-31 02:09:12', NULL, '2023-03-31 02:09:12');

DROP TABLE IF EXISTS `huodong`;
CREATE TABLE IF NOT EXISTS `huodong` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `huodong_uuid_number` varchar(200) DEFAULT NULL COMMENT '活动编号',
  `huodong_name` varchar(200) DEFAULT NULL COMMENT '活动标题  Search111 ',
  `huodong_photo` varchar(200) DEFAULT NULL COMMENT '活动封面',
  `huodong_types` int DEFAULT NULL COMMENT '活动类型 Search111',
  `huodong_clicknum` int DEFAULT NULL COMMENT '活动热度',
  `zan_number` int DEFAULT NULL COMMENT '赞',
  `cai_number` int DEFAULT NULL COMMENT '踩',
  `huodong_content` longtext COMMENT '活动介绍 ',
  `huodong_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='活动';

DELETE FROM `huodong`;
INSERT INTO `huodong` (`id`, `huodong_uuid_number`, `huodong_name`, `huodong_photo`, `huodong_types`, `huodong_clicknum`, `zan_number`, `cai_number`, `huodong_content`, `huodong_delete`, `insert_time`, `create_time`) VALUES
	(1, '1680227229952', '活动标题1', 'upload/huodong1.jpg', 3, 166, 257, 471, '活动介绍1', 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(2, '1680227229991', '活动标题2', 'upload/huodong2.jpg', 2, 382, 95, 252, '活动介绍2', 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(3, '1680227229911', '活动标题3', 'upload/huodong3.jpg', 2, 414, 359, 167, '活动介绍3', 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(4, '1680227229939', '活动标题4', 'upload/huodong4.jpg', 3, 370, 167, 135, '活动介绍4', 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(5, '1680227229940', '活动标题5', 'upload/huodong5.jpg', 1, 336, 41, 318, '活动介绍5', 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(6, '1680227229983', '活动标题6', 'upload/huodong6.jpg', 3, 26, 499, 348, '活动介绍6', 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(7, '1680227229997', '活动标题7', 'upload/huodong7.jpg', 2, 414, 87, 421, '活动介绍7', 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(8, '1680227229983', '活动标题8', 'upload/huodong8.jpg', 2, 208, 31, 338, '活动介绍8', 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(9, '1680227229954', '活动标题9', 'upload/huodong9.jpg', 1, 324, 242, 177, '活动介绍9', 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(10, '1680227229956', '活动标题10', 'upload/huodong10.jpg', 3, 412, 302, 300, '活动介绍10', 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(11, '1680227229925', '活动标题11', 'upload/huodong11.jpg', 3, 54, 84, 33, '活动介绍11', 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(12, '1680227229947', '活动标题12', 'upload/huodong12.jpg', 3, 233, 261, 93, '活动介绍12', 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(13, '1680227229918', '活动标题13', 'upload/huodong13.jpg', 1, 67, 21, 88, '活动介绍13', 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(14, '1680227229989', '活动标题14', 'upload/huodong14.jpg', 2, 432, 40, 416, '活动介绍14', 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09');

DROP TABLE IF EXISTS `huodong_collection`;
CREATE TABLE IF NOT EXISTS `huodong_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `huodong_id` int DEFAULT NULL COMMENT '活动',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `huodong_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='活动收藏';

DELETE FROM `huodong_collection`;
INSERT INTO `huodong_collection` (`id`, `huodong_id`, `yonghu_id`, `huodong_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 3, 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(2, 2, 2, 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(3, 3, 2, 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(4, 4, 3, 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(5, 5, 2, 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(7, 7, 1, 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(8, 8, 1, 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(9, 9, 1, 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(10, 10, 3, 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(11, 11, 3, 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(12, 12, 2, 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(13, 13, 2, 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(14, 14, 1, 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(15, 14, 1, 3, '2023-03-31 02:06:50', '2023-03-31 02:06:50');

DROP TABLE IF EXISTS `huodong_liuyan`;
CREATE TABLE IF NOT EXISTS `huodong_liuyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `huodong_id` int DEFAULT NULL COMMENT '活动',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `huodong_liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='活动留言';

DELETE FROM `huodong_liuyan`;
INSERT INTO `huodong_liuyan` (`id`, `huodong_id`, `yonghu_id`, `huodong_liuyan_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 1, 3, '留言内容1', '2023-03-31 01:47:09', '回复信息1', '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(2, 2, 1, '留言内容2', '2023-03-31 01:47:09', '回复信息2', '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(3, 3, 1, '留言内容3', '2023-03-31 01:47:09', '回复信息3', '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(4, 4, 2, '留言内容4', '2023-03-31 01:47:09', '回复信息4', '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(5, 5, 3, '留言内容5', '2023-03-31 01:47:09', '回复信息5', '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(6, 6, 1, '留言内容6', '2023-03-31 01:47:09', '回复信息6', '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(7, 7, 2, '留言内容7', '2023-03-31 01:47:09', '回复信息7', '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(8, 8, 3, '留言内容8', '2023-03-31 01:47:09', '回复信息8', '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(9, 9, 3, '留言内容9', '2023-03-31 01:47:09', '回复信息9', '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(10, 10, 1, '留言内容10', '2023-03-31 01:47:09', '回复信息10', '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(11, 11, 2, '留言内容11', '2023-03-31 01:47:09', '回复信息11', '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(12, 12, 2, '留言内容12', '2023-03-31 01:47:09', '回复信息12', '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(13, 13, 3, '留言内容13', '2023-03-31 01:47:09', '回复信息13', '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(14, 14, 3, '留言内容14', '2023-03-31 01:47:09', '回复信息14', '2023-03-31 01:47:09', '2023-03-31 01:47:09');

DROP TABLE IF EXISTS `huodong_yuyue`;
CREATE TABLE IF NOT EXISTS `huodong_yuyue` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `huodong_yuyue_uuid_number` varchar(200) DEFAULT NULL COMMENT '报名编号 Search111 ',
  `huodong_id` int DEFAULT NULL COMMENT '活动',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `huodong_yuyue_text` longtext COMMENT '报名理由',
  `huodong_yuyue_yesno_types` int DEFAULT NULL COMMENT '报名状态 Search111 ',
  `huodong_yuyue_yesno_text` longtext COMMENT '审核回复',
  `huodong_yuyue_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '报名时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='活动报名';

DELETE FROM `huodong_yuyue`;
INSERT INTO `huodong_yuyue` (`id`, `huodong_yuyue_uuid_number`, `huodong_id`, `yonghu_id`, `huodong_yuyue_text`, `huodong_yuyue_yesno_types`, `huodong_yuyue_yesno_text`, `huodong_yuyue_shenhe_time`, `insert_time`, `create_time`) VALUES
	(1, '1680227229976', 1, 1, '报名理由1', 1, NULL, NULL, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(2, '1680227229978', 2, 3, '报名理由2', 1, NULL, NULL, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(3, '1680227229970', 3, 1, '报名理由3', 1, NULL, NULL, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(4, '1680227229975', 4, 2, '报名理由4', 1, NULL, NULL, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(5, '1680227229994', 5, 2, '报名理由5', 1, NULL, NULL, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(6, '1680227229957', 6, 3, '报名理由6', 1, NULL, NULL, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(7, '1680227229982', 7, 3, '报名理由7', 1, NULL, NULL, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(8, '1680227229967', 8, 1, '报名理由8', 1, NULL, NULL, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(9, '1680227229992', 9, 1, '报名理由9', 1, NULL, NULL, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(10, '1680227229979', 10, 2, '报名理由10', 1, NULL, NULL, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(11, '1680227229940', 11, 3, '报名理由11', 3, '2', '2023-03-31 02:02:49', '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(12, '1680227229990', 12, 1, '报名理由12', 3, '2', '2023-03-31 02:02:42', '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(13, '1680227229941', 13, 1, '报名理由13', 2, '1', '2023-03-31 02:02:38', '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(14, '1680227229928', 14, 1, '报名理由14', 2, '123', '2023-03-31 02:02:33', '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(15, '1680228402624', 2, 1, '1111111', 2, '同意111111', '2023-03-31 02:08:57', '2023-03-31 02:06:43', '2023-03-31 02:06:43'),
	(16, '1722735557690', 7, 1, '11', 1, NULL, NULL, '2024-08-04 01:39:18', '2024-08-04 01:39:18');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` longtext COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='公告资讯';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `news_name`, `news_types`, `news_photo`, `insert_time`, `news_content`, `create_time`) VALUES
	(1, '公告标题1', 3, 'upload/news1.jpg', '2023-03-31 01:47:09', '公告详情1', '2023-03-31 01:47:09'),
	(2, '公告标题2', 3, 'upload/news2.jpg', '2023-03-31 01:47:09', '公告详情2', '2023-03-31 01:47:09'),
	(3, '公告标题3', 2, 'upload/news3.jpg', '2023-03-31 01:47:09', '公告详情3', '2023-03-31 01:47:09'),
	(4, '公告标题4', 1, 'upload/news4.jpg', '2023-03-31 01:47:09', '公告详情4', '2023-03-31 01:47:09'),
	(5, '公告标题5', 2, 'upload/news5.jpg', '2023-03-31 01:47:09', '公告详情5', '2023-03-31 01:47:09'),
	(6, '公告标题6', 3, 'upload/news6.jpg', '2023-03-31 01:47:09', '公告详情6', '2023-03-31 01:47:09'),
	(7, '公告标题7', 1, 'upload/news7.jpg', '2023-03-31 01:47:09', '公告详情7', '2023-03-31 01:47:09'),
	(8, '公告标题8', 1, 'upload/news8.jpg', '2023-03-31 01:47:09', '公告详情8', '2023-03-31 01:47:09'),
	(9, '公告标题9', 2, 'upload/news9.jpg', '2023-03-31 01:47:09', '公告详情9', '2023-03-31 01:47:09'),
	(10, '公告标题10', 2, 'upload/news10.jpg', '2023-03-31 01:47:09', '公告详情10', '2023-03-31 01:47:09'),
	(11, '公告标题11', 1, 'upload/news11.jpg', '2023-03-31 01:47:09', '公告详情11', '2023-03-31 01:47:09'),
	(12, '公告标题12', 2, 'upload/news12.jpg', '2023-03-31 01:47:09', '公告详情12', '2023-03-31 01:47:09'),
	(13, '公告标题13', 1, 'upload/news13.jpg', '2023-03-31 01:47:09', '公告详情13', '2023-03-31 01:47:09'),
	(14, '公告标题14', 1, 'upload/news14.jpg', '2023-03-31 01:47:09', '公告详情14', '2023-03-31 01:47:09');

DROP TABLE IF EXISTS `sucai`;
CREATE TABLE IF NOT EXISTS `sucai` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `sucai_uuid_number` varchar(200) DEFAULT NULL COMMENT '图片素材编号',
  `sucai_name` varchar(200) DEFAULT NULL COMMENT '图片素材名称  Search111 ',
  `sucai_photo` varchar(200) DEFAULT NULL COMMENT '图片素材照片',
  `sucai_file` varchar(200) DEFAULT NULL COMMENT '图片素材',
  `sucai_types` int DEFAULT NULL COMMENT '图片素材类型 Search111',
  `sucai_clicknum` int DEFAULT NULL COMMENT '图片素材热度',
  `zan_number` int DEFAULT NULL COMMENT '赞',
  `cai_number` int DEFAULT NULL COMMENT '踩',
  `sucai_content` longtext COMMENT '图片素材介绍 ',
  `sucai_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='图片素材';

DELETE FROM `sucai`;
INSERT INTO `sucai` (`id`, `sucai_uuid_number`, `sucai_name`, `sucai_photo`, `sucai_file`, `sucai_types`, `sucai_clicknum`, `zan_number`, `cai_number`, `sucai_content`, `sucai_delete`, `insert_time`, `create_time`) VALUES
	(1, '1680227229999', '图片素材名称1', 'upload/sucai1.jpg', 'upload/file.rar', 1, 141, 376, 470, '图片素材介绍1', 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(2, '1680227229928', '图片素材名称2', 'upload/sucai2.jpg', 'upload/file.rar', 2, 374, 81, 487, '图片素材介绍2', 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(3, '1680227229962', '图片素材名称3', 'upload/sucai3.jpg', 'upload/file.rar', 1, 485, 275, 24, '图片素材介绍3', 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(4, '1680227230008', '图片素材名称4', 'upload/sucai4.jpg', 'upload/file.rar', 2, 321, 233, 42, '图片素材介绍4', 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(5, '1680227229933', '图片素材名称5', 'upload/sucai5.jpg', 'upload/file.rar', 2, 383, 170, 207, '图片素材介绍5', 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(6, '1680227229945', '图片素材名称6', 'upload/sucai6.jpg', 'upload/file.rar', 3, 464, 102, 248, '图片素材介绍6', 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(7, '1680227229969', '图片素材名称7', 'upload/sucai7.jpg', 'upload/file.rar', 3, 336, 425, 123, '图片素材介绍7', 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(8, '1680227229961', '图片素材名称8', 'upload/sucai8.jpg', 'upload/file.rar', 3, 391, 315, 461, '图片素材介绍8', 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(9, '1680227230000', '图片素材名称9', 'upload/sucai9.jpg', 'upload/file.rar', 3, 24, 158, 300, '图片素材介绍9', 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(10, '1680227229998', '图片素材名称10', 'upload/sucai10.jpg', 'upload/file.rar', 2, 372, 40, 414, '图片素材介绍10', 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(11, '1680227229949', '图片素材名称11', 'upload/sucai11.jpg', 'upload/file.rar', 2, 393, 203, 261, '图片素材介绍11', 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(12, '1680227229987', '图片素材名称12', 'upload/sucai12.jpg', 'upload/file.rar', 1, 239, 292, 495, '图片素材介绍12', 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(13, '1680227230004', '图片素材名称13', 'upload/sucai13.jpg', 'upload/file.rar', 3, 254, 38, 86, '图片素材介绍13', 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(14, '1680227229995', '图片素材名称14', 'upload/sucai14.jpg', 'upload/file.rar', 3, 5, 188, 493, '图片素材介绍14', 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09');

DROP TABLE IF EXISTS `sucaishipin`;
CREATE TABLE IF NOT EXISTS `sucaishipin` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `sucaishipin_uuid_number` varchar(200) DEFAULT NULL COMMENT '视频素材编号',
  `sucaishipin_name` varchar(200) DEFAULT NULL COMMENT '视频素材名称  Search111 ',
  `sucaishipin_photo` varchar(200) DEFAULT NULL COMMENT '视频素材封面',
  `sucaishipin_video` varchar(200) DEFAULT NULL COMMENT '视频',
  `sucaishipin_file` varchar(200) DEFAULT NULL COMMENT '视频素材',
  `sucaishipin_types` int DEFAULT NULL COMMENT '视频素材类型 Search111',
  `sucaishipin_clicknum` int DEFAULT NULL COMMENT '视频素材热度',
  `zan_number` int DEFAULT NULL COMMENT '赞',
  `cai_number` int DEFAULT NULL COMMENT '踩',
  `sucaishipin_content` longtext COMMENT '视频素材介绍 ',
  `sucaishipin_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='视频素材';

DELETE FROM `sucaishipin`;
INSERT INTO `sucaishipin` (`id`, `sucaishipin_uuid_number`, `sucaishipin_name`, `sucaishipin_photo`, `sucaishipin_video`, `sucaishipin_file`, `sucaishipin_types`, `sucaishipin_clicknum`, `zan_number`, `cai_number`, `sucaishipin_content`, `sucaishipin_delete`, `insert_time`, `create_time`) VALUES
	(1, '1680227229972', '视频素材名称1', 'upload/sucaishipin1.jpg', 'upload/video.mp4', 'upload/file.rar', 1, 179, 156, 56, '视频素材介绍1', 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(2, '1680227230009', '视频素材名称2', 'upload/sucaishipin2.jpg', 'upload/video.mp4', 'upload/file.rar', 3, 31, 366, 300, '视频素材介绍2', 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(3, '1680227230023', '视频素材名称3', 'upload/sucaishipin3.jpg', 'upload/video.mp4', 'upload/file.rar', 3, 77, 254, 90, '视频素材介绍3', 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(4, '1680227229980', '视频素材名称4', 'upload/sucaishipin4.jpg', 'upload/video.mp4', 'upload/file.rar', 3, 223, 109, 417, '视频素材介绍4', 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(5, '1680227229955', '视频素材名称5', 'upload/sucaishipin5.jpg', 'upload/video.mp4', 'upload/file.rar', 3, 187, 309, 110, '视频素材介绍5', 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(6, '1680227229967', '视频素材名称6', 'upload/sucaishipin6.jpg', 'upload/video.mp4', 'upload/file.rar', 2, 54, 3, 100, '视频素材介绍6', 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(7, '1680227229939', '视频素材名称7', 'upload/sucaishipin7.jpg', 'upload/video.mp4', 'upload/file.rar', 3, 290, 124, 381, '视频素材介绍7', 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(8, '1680227229946', '视频素材名称8', 'upload/sucaishipin8.jpg', 'upload/video.mp4', 'upload/file.rar', 2, 458, 253, 123, '视频素材介绍8', 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(9, '1680227229957', '视频素材名称9', 'upload/sucaishipin9.jpg', 'upload/video.mp4', 'upload/file.rar', 1, 15, 455, 290, '视频素材介绍9', 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(10, '1680227229979', '视频素材名称10', 'upload/sucaishipin10.jpg', 'upload/video.mp4', 'upload/file.rar', 3, 471, 345, 27, '视频素材介绍10', 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(11, '1680227229981', '视频素材名称11', 'upload/sucaishipin11.jpg', 'upload/video.mp4', 'upload/file.rar', 2, 352, 99, 394, '视频素材介绍11', 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(12, '1680227230024', '视频素材名称12', 'upload/sucaishipin12.jpg', 'upload/video.mp4', 'upload/file.rar', 3, 320, 29, 480, '视频素材介绍12', 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(13, '1680227229972', '视频素材名称13', 'upload/sucaishipin13.jpg', 'upload/video.mp4', 'upload/file.rar', 1, 66, 170, 168, '视频素材介绍13', 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(14, '1680227229966', '视频素材名称14', 'upload/sucaishipin14.jpg', 'upload/video.mp4', 'upload/file.rar', 2, 272, 405, 182, '视频素材介绍14', 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09');

DROP TABLE IF EXISTS `sucaishipin_collection`;
CREATE TABLE IF NOT EXISTS `sucaishipin_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `sucaishipin_id` int DEFAULT NULL COMMENT '视频素材',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `sucaishipin_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3 COMMENT='视频素材收藏';

DELETE FROM `sucaishipin_collection`;
INSERT INTO `sucaishipin_collection` (`id`, `sucaishipin_id`, `yonghu_id`, `sucaishipin_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 2, 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(2, 2, 1, 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(3, 3, 2, 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(4, 4, 2, 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(5, 5, 2, 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(6, 6, 3, 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(7, 7, 3, 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(8, 8, 3, 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(9, 9, 3, 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(10, 10, 1, 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(11, 11, 3, 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(12, 12, 2, 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(13, 13, 2, 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(14, 14, 2, 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(15, 3, 1, 2, '2023-03-31 02:05:35', '2023-03-31 02:05:35'),
	(16, 7, 1, 1, '2023-03-31 02:05:55', '2023-03-31 02:05:55'),
	(17, 7, 1, 2, '2023-03-31 02:05:58', '2023-03-31 02:05:58'),
	(18, 8, 1, 1, '2024-08-04 01:39:37', '2024-08-04 01:39:37');

DROP TABLE IF EXISTS `sucaishipin_liuyan`;
CREATE TABLE IF NOT EXISTS `sucaishipin_liuyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `sucaishipin_id` int DEFAULT NULL COMMENT '视频素材',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `sucaishipin_liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='视频素材留言';

DELETE FROM `sucaishipin_liuyan`;
INSERT INTO `sucaishipin_liuyan` (`id`, `sucaishipin_id`, `yonghu_id`, `sucaishipin_liuyan_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 1, 2, '留言内容1', '2023-03-31 01:47:09', '回复信息1', '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(2, 2, 2, '留言内容2', '2023-03-31 01:47:09', '回复信息2', '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(3, 3, 1, '留言内容3', '2023-03-31 01:47:09', '回复信息3', '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(4, 4, 2, '留言内容4', '2023-03-31 01:47:09', '回复信息4', '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(5, 5, 3, '留言内容5', '2023-03-31 01:47:09', '回复信息5', '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(6, 6, 3, '留言内容6', '2023-03-31 01:47:09', '回复信息6', '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(7, 7, 3, '留言内容7', '2023-03-31 01:47:09', '回复信息7', '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(8, 8, 1, '留言内容8', '2023-03-31 01:47:09', '回复信息8', '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(9, 9, 1, '留言内容9', '2023-03-31 01:47:09', '回复信息9', '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(10, 10, 2, '留言内容10', '2023-03-31 01:47:09', '回复信息10', '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(11, 11, 1, '留言内容11', '2023-03-31 01:47:09', '回复信息11', '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(12, 12, 3, '留言内容12', '2023-03-31 01:47:09', '回复信息12', '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(13, 13, 2, '留言内容13', '2023-03-31 01:47:09', '回复信息13', '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(14, 14, 2, '留言内容14', '2023-03-31 01:47:09', '回复信息14', '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(15, 3, 1, '添加留言评论1', '2023-03-31 02:05:45', NULL, NULL, '2023-03-31 02:05:45');

DROP TABLE IF EXISTS `sucai_collection`;
CREATE TABLE IF NOT EXISTS `sucai_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `sucai_id` int DEFAULT NULL COMMENT '图片素材',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `sucai_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='图片素材收藏';

DELETE FROM `sucai_collection`;
INSERT INTO `sucai_collection` (`id`, `sucai_id`, `yonghu_id`, `sucai_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 3, 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(2, 2, 2, 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(3, 3, 2, 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(4, 4, 3, 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(5, 5, 1, 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(6, 6, 2, 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(8, 8, 3, 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(9, 9, 3, 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(10, 10, 3, 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(11, 11, 2, 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(12, 12, 2, 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(13, 13, 3, 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(14, 14, 2, 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(15, 11, 1, 2, '2023-03-31 02:07:13', '2023-03-31 02:07:13'),
	(16, 8, 1, 1, '2024-08-04 01:39:32', '2024-08-04 01:39:32');

DROP TABLE IF EXISTS `sucai_liuyan`;
CREATE TABLE IF NOT EXISTS `sucai_liuyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `sucai_id` int DEFAULT NULL COMMENT '图片素材',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `sucai_liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='图片素材留言';

DELETE FROM `sucai_liuyan`;
INSERT INTO `sucai_liuyan` (`id`, `sucai_id`, `yonghu_id`, `sucai_liuyan_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 1, 1, '留言内容1', '2023-03-31 01:47:09', '回复信息1', '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(2, 2, 1, '留言内容2', '2023-03-31 01:47:09', '回复信息2', '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(3, 3, 3, '留言内容3', '2023-03-31 01:47:09', '回复信息3', '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(4, 4, 2, '留言内容4', '2023-03-31 01:47:09', '回复信息4', '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(5, 5, 1, '留言内容5', '2023-03-31 01:47:09', '回复信息5', '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(6, 6, 2, '留言内容6', '2023-03-31 01:47:09', '回复信息6', '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(7, 7, 3, '留言内容7', '2023-03-31 01:47:09', '回复信息7', '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(8, 8, 2, '留言内容8', '2023-03-31 01:47:09', '回复信息8', '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(9, 9, 3, '留言内容9', '2023-03-31 01:47:09', '回复信息9', '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(10, 10, 2, '留言内容10', '2023-03-31 01:47:09', '回复信息10', '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(11, 11, 2, '留言内容11', '2023-03-31 01:47:09', '回复信息11', '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(12, 12, 1, '留言内容12', '2023-03-31 01:47:09', '回复信息12', '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(13, 13, 3, '留言内容13', '2023-03-31 01:47:09', '回复信息13', '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(14, 14, 3, '留言内容14', '2023-03-31 01:47:09', '回复信息14', '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(15, 11, 1, '留言11111', '2023-03-31 02:07:19', '回复内容11111', '2023-03-31 02:08:15', '2023-03-31 02:07:19');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '管理id',
  `username` varchar(100) NOT NULL COMMENT '管理名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'admin', 'users', '管理员', 'kum9g1aeku997en7d3puhfr1t4u3i445', '2023-03-31 02:01:52', '2024-08-04 02:37:43'),
	(2, 1, 'a1', 'yonghu', '用户', '5aghwhho15xtohu9fvrgolcf24e7856q', '2023-03-31 02:02:57', '2024-08-04 02:38:58');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '医院名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2023-03-31 01:43:42');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户名称 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `yonghu_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_phone`, `yonghu_id_number`, `yonghu_photo`, `sex_types`, `yonghu_email`, `yonghu_delete`, `insert_time`, `create_time`) VALUES
	(1, '用户1', '123456', '用户名称1', '17703786901', '410224199010102001', 'upload/yonghu1.jpg', 2, '1@qq.com', 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(2, '用户2', '123456', '用户名称2', '17703786902', '410224199010102002', 'upload/yonghu2.jpg', 1, '2@qq.com', 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09'),
	(3, '用户3', '123456', '用户名称3', '17703786903', '410224199010102003', 'upload/yonghu3.jpg', 1, '3@qq.com', 1, '2023-03-31 01:47:09', '2023-03-31 01:47:09');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
