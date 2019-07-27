
DROP TABLE IF EXISTS `t_admin`;

CREATE TABLE `t_admin` (
  `userId` INT(11) NOT NULL,
  `userName` VARCHAR(66) DEFAULT NULL,
  `userPw` VARCHAR(55) DEFAULT NULL,
  PRIMARY KEY  (`userId`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;


INSERT INTO `t_admin` VALUES ('1', '001', '123');
INSERT INTO `t_admin` VALUES ('2', '002', '123');
INSERT INTO `t_admin` VALUES ('3', '003', '123');


DROP TABLE IF EXISTS `t_doc`;
CREATE TABLE `t_doc` (
  `id` INT(11) NOT NULL,
  `mingcheng` VARCHAR(66) DEFAULT NULL,
  `fujian` VARCHAR(50) DEFAULT NULL,
  `fujianYuanshiming` VARCHAR(55) DEFAULT NULL,
  `shijian` VARCHAR(50) DEFAULT NULL,
  `del` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;


INSERT INTO `t_doc` VALUES ('1', 'Servlet-技术', 'upload1463664057689.txt', 'Servlet.txt', '2016-05-19', 'no');
INSERT INTO `t_doc` VALUES ('2', 'GUI-技术', 'upload1463664251344.doc', 'GUI.doc', '2016-05-19', 'no');
INSERT INTO `t_doc` VALUES ('3', 'Ajax-技术', 'upload1463664282453.docx', 'SSH.docx', '2016-05-19', 'no');
INSERT INTO `t_doc` VALUES ('4', 'Spring-笔记', 'upload1463664310222.java', 'Spring笔记.java', '2016-05-19', 'no');
INSERT INTO `t_doc` VALUES ('5', 'Velocity-技术', 'upload1463664347977.doc', 'velocity.doc', '2016-05-19', 'no');



DROP TABLE IF EXISTS `t_message`;
CREATE TABLE `t_message` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `neirong` VARCHAR(2000) DEFAULT NULL,
  `liuyanshi` VARCHAR(55) DEFAULT NULL,
  `stu_id` INT(11) DEFAULT NULL,
  `huifu` VARCHAR(2000) DEFAULT NULL,
  `huifushi` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;


INSERT INTO `t_message` VALUES (NULL, '使用onclick跳转到其他页面跳转到指定url的方式？',   '2016-04-27 1029', '5',  '如果是本页显示可以直接用location,方法如下：XXXXXXXXX', '2016-04-27 16：40');
INSERT INTO `t_message` VALUES (NULL, '使用onclick跳转到其他页面跳转到指定url的方式？',   '2016-04-27 1029', '5',  '如果是本页显示可以直接用location,方法如下：XXXXXXXXX', '2016-04-27 16：40');
INSERT INTO `t_message` VALUES (NULL, '使用onclick跳转到其他页面跳转到指定url的方式？',   '2016-04-27 1029', '5',  '如果是本页显示可以直接用location,方法如下：XXXXXXXXX', '2016-04-27 16：40');



DROP TABLE IF EXISTS `t_vedio`;
CREATE TABLE `t_vedio` (
  `shipin_id` INT(11) NOT NULL,
  `shipin_name` VARCHAR(66) DEFAULT NULL,
  `shipin_jianjie` VARCHAR(2000) DEFAULT NULL,
  `fujian` VARCHAR(55) DEFAULT NULL,
  `fujianYuanshiming` VARCHAR(2000) DEFAULT NULL,
  `shijian` VARCHAR(50) DEFAULT NULL,
  `del` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY  (`shipin_id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;


INSERT INTO `t_vedio` VALUES ('1', '正则表达式01', '', 'upload1463664109382.avi', '黑马程序员_毕向东_Java基础视频教程第25天-01-正则表达式(特点).avi', '2016-05-19', 'no');
INSERT INTO `t_vedio` VALUES ('3', '正则表达式03', 'pspan style=white-space normal; text-transform none; word-spacing 0px; float none; color rgb(51,51,51); font 14px24px arial, 宋体, sans-serif; widows 1; display inline !important; letter-spacing normal; background-color rgb(255,255,255); text-indent 28px; -webkit-text-stroke-width 0pxspan style=white-space normal; text-transform none; word-spacing 0px; float none; color rgb(51,51,51); font 14px24px arial, 宋体, sans-serif; widows 1; display inline !important; letter-spacing normal; background-color rgb(255,255,255); text-indent 28px; -webkit-text-stroke-width 0px正则表达式的&ldquo;鼻祖&rdquo;或许可一直追溯到科学家对人类神经系统工作原理的早期研究。美国新泽西州的Warren McCulloch和出生在美国底特律的Walter Pitts这两位神经生理方面的科学家，研究出了一种用数学方式来描述神经网络的新方法，他们创造性地将神经系统中的神经元描述成了小而简单的自动控制元，从而作出了一项伟大的工作革新spanspanp', 'upload1463664370109.avi', '黑马程序员_毕向东_Java基础视频教程第25天-02-正则表达式(匹配).avi', '2016-05-19', 'no');
INSERT INTO `t_vedio` VALUES ('5', '正则表达式08', 'span style=white-space normal; text-transform none; word-spacing 0px; float none; color rgb(51,51,51); font 14px24px arial, 宋体, sans-serif; widows 1; display inline !important; letter-spacing normal; background-color rgb(255,255,255); text-indent 28px; -webkit-text-stroke-width 0px在最简单的情况下，一个正则表达式看上去就是一个普通的查找串。例如，正则表达式&quot;testing&quot;中没有包含任何元字符，它可以匹配&quot;testing&quot;和&quot;testing123&quot;等字符串，但是不能匹配&quot;Testing&quot;。span', 'upload1463664707010.mp4', '黑马程序员_毕向东_Java基础视频教程第25天-08-正则表达式(网页爬虫).mp4', '2016-05-19', 'no');
INSERT INTO `t_vedio` VALUES ('6', 'Linux系统', 'Linux系统视频教学---尚学堂 --马世兵', 'upload1463667318497.avi', 'linux_02_Disk_Partition.avi', '2016-05-19', 'no');
INSERT INTO `t_vedio` VALUES ('7', 'Linux命令', 'Linux教学，Linux命令教学', 'upload1463667437456.avi', 'linux_04_dev_partition.avi', '2016-05-19', 'no');
INSERT INTO `t_vedio` VALUES ('8', 'GUI技术', '&nbsp;&nbsp;&nbsp;&nbsp; 图形用户界面是一种人与计算机通信的界面显示格式，允许用户使用鼠标等输入设备操纵屏幕上的图标或菜单选项，以选择命令、调用文件、启动程序或执行其它一些日常任务。与通过键盘输入文本或字符命令来完成例行任务的字符界面相比，图形用户界面有许多优点。', 'upload1463794061959.avi', '黑马程序员_毕向东_Java基础视频教程第22天-01-GUI(概述).avi', '2016-05-21', 'no');
INSERT INTO `t_shipin` VALUES ('9', '1233', 'br ', 'upload1463796701370.avi', 'linux_10_basic_commands_4.avi', '2016-05-21', 'no');


DROP TABLE IF EXISTS `t_exam`;
CREATE TABLE `t_exam` (
  `id` INT(11) NOT NULL,
  `mingcheng` VARCHAR(66) DEFAULT NULL,
  `fujian` VARCHAR(55) DEFAULT NULL,
  `fujianYuanshiming` VARCHAR(50) DEFAULT NULL,
  `shijian` VARCHAR(50) DEFAULT NULL,
  `del` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;


INSERT INTO `t_exam` VALUES ('1', 'java基础测试', 'upload1463667046660.doc', 'java基础测试题.doc', '2016-05-19', 'no');
INSERT INTO `t_exam` VALUES ('2', 'JavaSE第一次月考', 'upload1463667078113.docx', 'javaSe第一次月考.docx', '2016-05-19', 'no');
INSERT INTO `t_exam` VALUES ('3', 'JavaWeb第二次月考', 'upload1463667099735.docx', 'JavaWeb第二次月考.docx', '2016-05-19', 'no');
INSERT INTO `t_exam` VALUES ('4', 'ssh第三次月考', 'upload1463667118316.docx', 'SSH第三次月考.docx', '2016-05-19', 'no');
INSERT INTO `t_exam` VALUES ('5', '月考题库', 'upload1463667140625.txt', '月考题库.txt', '2016-05-19', 'no');
INSERT INTO `t_exam` VALUES ('6', 'GUI技术测试', 'upload1463794244012.docx', 'GUI技术.docx', '2016-05-21', 'no');


DROP TABLE IF EXISTS `t_stu`;
CREATE TABLE `t_stu` (
  `stu_id` INT(11) NOT NULL,
  `stu_xuehao` VARCHAR(66) DEFAULT NULL,
  `stu_realname` VARCHAR(50) DEFAULT NULL,
  `stu_sex` VARCHAR(50) DEFAULT NULL,
  `stu_age` VARCHAR(55) DEFAULT NULL,
  `login_pw` VARCHAR(50) DEFAULT NULL,
  `zhuangtai` VARCHAR(50) DEFAULT NULL,
  `del` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY  (`stu_id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;


INSERT INTO `t_stu` VALUES ('1', '2014001', '刘三三', '男', '21', '000000', 'b', 'no');
INSERT INTO `t_stu` VALUES ('2', '2014002', '马散散', '男', '21', '000000', 'b', 'no');
INSERT INTO `t_stu` VALUES ('3', '2014003', '刘光亮', '男', '21', '000000', 'b', 'no');
INSERT INTO `t_stu` VALUES ('4', '2014004', '刘德华', '男', '21', '000000', 'b', 'no');


DROP TABLE IF EXISTS `t_tea`;
CREATE TABLE `t_tea` (
  `tea_id` INT(11) NOT NULL,
  `tea_bianhao` VARCHAR(66) DEFAULT NULL,
  `tea_realname` VARCHAR(55) DEFAULT NULL,
  `tea_sex` VARCHAR(50) DEFAULT NULL,
  `tea_age` VARCHAR(50) DEFAULT NULL,
  `login_name` VARCHAR(50) DEFAULT NULL,
  `login_pw` VARCHAR(50) DEFAULT NULL,
  `del` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY  (`tea_id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;


INSERT INTO `t_tea` VALUES ('1', '1', '刘老师', '男', '28', '0001', '000000', 'no');
INSERT INTO `t_tea` VALUES ('2', '001', '张老师', '男', '30', '001', '123', 'no');
INSERT INTO `t_tea` VALUES ('3', '002', '王老师', '女', '23', '002', '123', 'no');
INSERT INTO `t_tea` VALUES ('4', '002', '李老师', '男', '24', '002', '123', 'no');