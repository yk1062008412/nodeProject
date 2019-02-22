/*
	学生 - 课程 - 成绩 - 班级(高中，非大学)
 */

SET FOREIGN_KEY_CHECKS=0;

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
	PRIMARY KEY (`stu_id`),
	UNIQUE KEY `idx_stu_id` (`stu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='学生表';

-- 班级表
DROP TABLE IF EXISTS 'class_info';
CREATE TABLE `class_info` (
	`id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'ID编号',
	`class_id` varchar(20) NOT NULL UNIQUE COMMENT '班级编号(主键)',
	`class_name` varchar(50) NOT NULL COMMENT '班级名称',
	`class_remark` varchar(255) COMMENT '班级备注',
	`add_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
	`op_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后操作时间',
	`del_flag` tinyint(1) NOT NULL DEFAULT 0 COMMENT '删除标记 0 在使用 1 已删除',
	PRIMARY KEY (`class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='班级表';

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
	PRIMARY KEY (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='课程表';

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