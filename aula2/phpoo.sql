/*
Navicat MySQL Data Transfer

Source Server         : Local Host
Source Server Version : 50616
Source Host           : localhost:3306
Source Database       : phpoo

Target Server Type    : MYSQL
Target Server Version : 50616
File Encoding         : 65001

Date: 2014-09-07 19:03:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for usuarios
-- ----------------------------
DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios` (
  `id` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(120) DEFAULT NULL,
  `usuario` varchar(60) NOT NULL,
  `senha` varchar(60) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `ativo` int(1) unsigned NOT NULL DEFAULT '1',
  `nivel` int(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usuarios
-- ----------------------------
INSERT INTO `usuarios` VALUES ('1', 'Carlos', 'carlos', '123456', 'kaduamaral@live.com', '1', '1');
INSERT INTO `usuarios` VALUES ('2', 'Fulano', 'fulano', '123', 'asd@asd.asd', '1', '1');
INSERT INTO `usuarios` VALUES ('3', 'Beltrano', 'betra', '321', 'asd@fas.ree', '1', '1');
INSERT INTO `usuarios` VALUES ('4', 'Chiquinha', 'chica', '558', 'chica@devcia.com', '1', '1');
