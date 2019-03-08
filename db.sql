-- ----------------------------------
-- 	学生 - 课程 - 成绩 - 班级(高中，非大学)
-- ----------------------------------

SET FOREIGN_KEY_CHECKS=0;

-- 建数据库
DROP DATABASE IF EXISTS `node_project`;
CREATE DATABASE `node_project`;

USE `node_project`;

-- 学生表
DROP TABLE IF EXISTS `students_info`;
CREATE TABLE `students_info` (
	`id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'ID编号',
	`stu_id` int(10) NOT NULL UNIQUE COMMENT '学生学号(主键)',
	`stu_name` varchar(20) NOT NULL COMMENT '学生姓名',
	`stu_sex` tinyint(1) DEFAULT 0 COMMENT '学生性别 0 未知 1 男 2 女',
	`stu_birth` date COMMENT '出生日期',
	`stu_tel` varchar(20) COMMENT '联系电话',
	`stu_addr` varchar(255) COMMENT '家庭住址',
	`add_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
	`op_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后操作时间',
	`del_flag` tinyint(1) NOT NULL DEFAULT 0 COMMENT '删除标记 0 在使用 1 已删除',
	PRIMARY KEY (`id`),
	UNIQUE KEY `idx_stu_id` (`stu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='学生表';

INSERT INTO `students_info`(`stu_id`, `stu_name`, `stu_sex`, `stu_birth`, `stu_tel`, `stu_addr`) VALUES ('2012030101', '达摩', 1, '2000/12/18', '18048550345', '江苏省南京市雨花台区板桥红太阳装饰城朝阳大道');
INSERT INTO `students_info`(`stu_id`, `stu_name`, `stu_sex`, `stu_birth`, `stu_tel`, `stu_addr`) VALUES ('2012030102', '典韦', 1, '2018/9/27', '13919110291', '南京市建邺区江东中路98号');
INSERT INTO `students_info`(`stu_id`, `stu_name`, `stu_sex`, `stu_birth`, `stu_tel`, `stu_addr`) VALUES ('2012030103', '曹操', 1, '2001/8/5', '17879654268', '泰安市泰山区岱宗大街26号(原体育局地块)');
INSERT INTO `students_info`(`stu_id`, `stu_name`, `stu_sex`, `stu_birth`, `stu_tel`, `stu_addr`) VALUES ('2012030104', '钟无艳', 2, '2012/12/26', '15201685434', '南京市秦淮区石鼓路42号');
INSERT INTO `students_info`(`stu_id`, `stu_name`, `stu_sex`, `stu_birth`, `stu_tel`, `stu_addr`) VALUES ('2012030105', '墨子', 1, '2000/10/3', '16166420406', '南京市秦淮区石鼓路43-47');
INSERT INTO `students_info`(`stu_id`, `stu_name`, `stu_sex`, `stu_birth`, `stu_tel`, `stu_addr`) VALUES ('2012030106', '赵云', 1, '2014/8/25', '15230145557', '南京市秦淮区评事街208号附近');
INSERT INTO `students_info`(`stu_id`, `stu_name`, `stu_sex`, `stu_birth`, `stu_tel`, `stu_addr`) VALUES ('2012030107', '雅典娜', 2, '2015/1/19', '19808936427', '南京市秦淮区石杨路101号银龙花园22幢');
INSERT INTO `students_info`(`stu_id`, `stu_name`, `stu_sex`, `stu_birth`, `stu_tel`, `stu_addr`) VALUES ('2012030108', '李白', 1, '2011/2/10', '19703755910', '南京市栖霞区壹城西区42幢');
INSERT INTO `students_info`(`stu_id`, `stu_name`, `stu_sex`, `stu_birth`, `stu_tel`, `stu_addr`) VALUES ('2012030109', '花木兰', 2, '2018/6/19', '15254648289', '南京市栖霞区兴都花园90号院别墅30幢');
INSERT INTO `students_info`(`stu_id`, `stu_name`, `stu_sex`, `stu_birth`, `stu_tel`, `stu_addr`) VALUES ('2012030110', '兰陵王', 1, '2016/1/28', '15175281183', '南京市鼓楼区汽轮七村8栋');
INSERT INTO `students_info`(`stu_id`, `stu_name`, `stu_sex`, `stu_birth`, `stu_tel`, `stu_addr`) VALUES ('2012030111', '露娜', 2, '2018/11/4', '17513019270', '南京市鼓楼区中央门外安怀村460号');
INSERT INTO `students_info`(`stu_id`, `stu_name`, `stu_sex`, `stu_birth`, `stu_tel`, `stu_addr`) VALUES ('2012030112', '程咬金', 1, '2007/6/23', '17474717449', '南京市鼓楼区恒盛嘉园13栋');
INSERT INTO `students_info`(`stu_id`, `stu_name`, `stu_sex`, `stu_birth`, `stu_tel`, `stu_addr`) VALUES ('2012030113', '白起', 1, '2014/8/10', '17046118005', '南京市浦口区桥北社区毛纺厂路桥北新村32幢');
INSERT INTO `students_info`(`stu_id`, `stu_name`, `stu_sex`, `stu_birth`, `stu_tel`, `stu_addr`) VALUES ('2012030114', '甄姬', 2, '2006/4/7', '15338867933', '南京市浦口区桥北天润城14街区天润城第三街区12幢');

-- 班级表
DROP TABLE IF EXISTS `class_info`;
CREATE TABLE `class_info` (
	`id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'ID编号',
	`class_id` varchar(20) NOT NULL UNIQUE COMMENT '班级编号(主键)',
	`class_name` varchar(50) NOT NULL COMMENT '班级名称',
	`class_remark` varchar(255) COMMENT '班级备注',
	`add_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
	`op_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后操作时间',
	`del_flag` tinyint(1) NOT NULL DEFAULT 0 COMMENT '删除标记 0 在使用 1 已删除',
	PRIMARY KEY (`id`),
	UNIQUE KEY `idx_class_id` (`class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='班级表';

INSERT INTO `class_info`(`class_id`, `class_name`, `class_remark`) VALUES ('MSOOC2012101', '初一1班', '');
INSERT INTO `class_info`(`class_id`, `class_name`, `class_remark`) VALUES ('MSOTC2012102', '初一2班', '');
INSERT INTO `class_info`(`class_id`, `class_name`, `class_remark`) VALUES ('MSTOC2012201', '初二1班', '');
INSERT INTO `class_info`(`class_id`, `class_name`, `class_remark`) VALUES ('MSTOC2012301', '初三1班', '');
INSERT INTO `class_info`(`class_id`, `class_name`, `class_remark`) VALUES ('HSOOC2012101', '高一1班', '');
INSERT INTO `class_info`(`class_id`, `class_name`, `class_remark`) VALUES ('HSTOC2012201', '高二1班', '');
INSERT INTO `class_info`(`class_id`, `class_name`, `class_remark`) VALUES ('HSTTC2012202', '高二2班', '');
INSERT INTO `class_info`(`class_id`, `class_name`, `class_remark`) VALUES ('HSTOC2012301', '高三1班', '理科班');
INSERT INTO `class_info`(`class_id`, `class_name`, `class_remark`) VALUES ('HSTTC2012302', '高三2班', '理科班');
INSERT INTO `class_info`(`class_id`, `class_name`, `class_remark`) VALUES ('HSTTC2012303', '高三3班', '文科班');

-- 课程表
DROP TABLE IF EXISTS `course_info`;
CREATE TABLE `course_info` (
	`id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'ID编号',
	`course_id` varchar(20) NOT NULL UNIQUE COMMENT '课程编号(主键)',
	`course_name` varchar(50) NOT NULL COMMENT '课程名称',
	`course_remark` varchar(255) COMMENT '课程备注',
	`add_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
	`op_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后操作时间',
	`del_flag` tinyint(1) NOT NULL DEFAULT 0 COMMENT '删除标记 0 在使用 1 已删除',
	PRIMARY KEY (`id`),
	UNIQUE KEY `idx_course_id` (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='课程表';

INSERT INTO `course_info`(`course_id`, `course_name`, `course_remark`) VALUES ('C12001', '语文', '');
INSERT INTO `course_info`(`course_id`, `course_name`, `course_remark`) VALUES ('M12002', '数学', '');
INSERT INTO `course_info`(`course_id`, `course_name`, `course_remark`) VALUES ('E12003', '英语', '');
INSERT INTO `course_info`(`course_id`, `course_name`, `course_remark`) VALUES ('P12004', '物理', '');
INSERT INTO `course_info`(`course_id`, `course_name`, `course_remark`) VALUES ('C12005', '化学', '');
INSERT INTO `course_info`(`course_id`, `course_name`, `course_remark`) VALUES ('P12006', '政治', '');
INSERT INTO `course_info`(`course_id`, `course_name`, `course_remark`) VALUES ('H12007', '历史', '');
INSERT INTO `course_info`(`course_id`, `course_name`, `course_remark`) VALUES ('G12008', '地理', '');
INSERT INTO `course_info`(`course_id`, `course_name`, `course_remark`) VALUES ('S12009', '体育', '');
INSERT INTO `course_info`(`course_id`, `course_name`, `course_remark`) VALUES ('B12010', '生物', '');
INSERT INTO `course_info`(`course_id`, `course_name`, `course_remark`) VALUES ('A12011', '美术', '');
INSERT INTO `course_info`(`course_id`, `course_name`, `course_remark`) VALUES ('S12012', '科学', '');

-- 成绩表
DROP TABLE IF EXISTS `score`;
CREATE TABLE `score`(
	`s_id` int(10) NOT NULL UNIQUE AUTO_INCREMENT COMMENT '主键ID(主键)',
	`stu_id` int(10) NOT NULL COMMENT '学生学号',
	`course_id` varchar(20) NOT NULL COMMENT '课程编号',
	`score_value` int(10) COMMENT '分数',
	`add_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
	`op_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后操作时间',
	`del_flag` tinyint(1) NOT NULL DEFAULT 0 COMMENT '删除标记 0 在使用 1 已删除',
	PRIMARY KEY (`s_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='学生成绩表';

INSERT INTO `score`(`stu_id`, `course_id`, `score_value`) VALUES ('2012030101', 'C12001', '88');
INSERT INTO `score`(`stu_id`, `course_id`, `score_value`) VALUES ('2012030101', 'M12002', '95');
INSERT INTO `score`(`stu_id`, `course_id`, `score_value`) VALUES ('2012030102', 'E12003', '91');

-- 学生和班级表
DROP TABLE IF EXISTS `student_class`;
CREATE TABLE `student_class`(
	`sc_id` int(10) NOT NULL UNIQUE AUTO_INCREMENT COMMENT '主键ID(主键)',
	`stu_id` int(10) NOT NULL COMMENT '学生学号',
	`class_id` varchar(20) NOT NULL COMMENT '班级编号',
	`add_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
	`op_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后操作时间',
	`del_flag` tinyint(1) NOT NULL DEFAULT 0 COMMENT '删除标记 0 在使用 1 已删除',
	PRIMARY KEY (`sc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='学生所属班级对应表';

INSERT INTO `student_class`(`stu_id`, `class_id`) VALUES ('2012030101', 'MSOOC2012101');
INSERT INTO `student_class`(`stu_id`, `class_id`) VALUES ('2012030102', 'MSOOC2012101');
INSERT INTO `student_class`(`stu_id`, `class_id`) VALUES ('2012030103', 'MSTOC2012301');
INSERT INTO `student_class`(`stu_id`, `class_id`) VALUES ('2012030103', 'HSTTC2012202');

-- 班级对应课程表
DROP TABLE IF EXISTS `class_course`;
CREATE TABLE `class_course`(
	`cc_id` int(10) NOT NULL UNIQUE AUTO_INCREMENT COMMENT '主键ID(主键)',
	`class_id` varchar(20) NOT NULL COMMENT '班级编号',
	`course_id` varchar(20) NOT NULL COMMENT '课程编号(主键)',
	`add_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
	`op_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后操作时间',
	`del_flag` tinyint(1) NOT NULL DEFAULT 0 COMMENT '删除标记 0 在使用 1 已删除',
	PRIMARY KEY (`cc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='班级所学课程对应表';


INSERT INTO `class_course`(`class_id`, `course_id`) VALUES ('MSOOC2012101', 'C12001');
INSERT INTO `class_course`(`class_id`, `course_id`) VALUES ('MSOOC2012101', 'M12002');
INSERT INTO `class_course`(`class_id`, `course_id`) VALUES ('MSOOC2012101', 'E12003');
INSERT INTO `class_course`(`class_id`, `course_id`) VALUES ('MSOOC2012101', 'S12012');
INSERT INTO `class_course`(`class_id`, `course_id`) VALUES ('MSOTC2012102', 'C12001');
INSERT INTO `class_course`(`class_id`, `course_id`) VALUES ('MSOTC2012102', 'M12002');
INSERT INTO `class_course`(`class_id`, `course_id`) VALUES ('MSOTC2012102', 'E12003');
INSERT INTO `class_course`(`class_id`, `course_id`) VALUES ('MSOTC2012102', 'S12012');
INSERT INTO `class_course`(`class_id`, `course_id`) VALUES ('MSTOC2012201', 'C12001');
INSERT INTO `class_course`(`class_id`, `course_id`) VALUES ('MSTOC2012201', 'M12002');
INSERT INTO `class_course`(`class_id`, `course_id`) VALUES ('MSTOC2012201', 'E12003');
INSERT INTO `class_course`(`class_id`, `course_id`) VALUES ('MSTOC2012201', 'S12009');
INSERT INTO `class_course`(`class_id`, `course_id`) VALUES ('MSTOC2012201', 'A12011');
