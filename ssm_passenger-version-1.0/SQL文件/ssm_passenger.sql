/*
 Navicat Premium Data Transfer

 Source Server         : icanci
 Source Server Type    : MySQL
 Source Server Version : 50540
 Source Host           : localhost:3306
 Source Schema         : ssm_passenger

 Target Server Type    : MySQL
 Target Server Version : 50540
 File Encoding         : 65001

 Date: 19/01/2020 17:51:54
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ssm_pa_log
-- ----------------------------
DROP TABLE IF EXISTS `ssm_pa_log`;
CREATE TABLE `ssm_pa_log`  (
  `id` bigint(32) NOT NULL AUTO_INCREMENT COMMENT '无意义,主键id',
  `visitTime` timestamp NULL DEFAULT NULL COMMENT '访问时间',
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '操作者用户名',
  `ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '操作者访问的 ip 地址',
  `url` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '访问资源 url',
  `executionTime` int(11) NULL DEFAULT NULL COMMENT '执行时长 毫秒',
  `method` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '访问的方法',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 244 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ssm_pa_log
-- ----------------------------
INSERT INTO `ssm_pa_log` VALUES (26, '2020-01-18 23:26:05', 'haxi', '127.0.0.1', '/user/findAll.do', 10, '[类名] cn.icanci.tourism.controller.UserController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (27, '2020-01-18 23:26:08', 'haxi', '127.0.0.1', '/role/findAll.do', 12, '[类名] cn.icanci.tourism.controller.RoleController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (28, '2020-01-18 23:26:11', 'haxi', '127.0.0.1', '/permission/findAll.do', 12, '[类名] cn.icanci.tourism.controller.PermissionController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (29, '2020-01-18 23:26:18', 'haxi', '127.0.0.1', '/orders/findAll.do', 68, '[类名] cn.icanci.tourism.controller.OrdersController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (30, '2020-01-18 23:26:22', 'haxi', '127.0.0.1', '/role/findAll.do', 1, '[类名] cn.icanci.tourism.controller.RoleController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (31, '2020-01-18 23:26:25', 'haxi', '127.0.0.1', '/orders/findAll.do', 23, '[类名] cn.icanci.tourism.controller.OrdersController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (32, '2020-01-18 23:26:39', 'haxi', '127.0.0.1', '/user/findAll.do', 2, '[类名] cn.icanci.tourism.controller.UserController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (33, '2020-01-18 23:26:44', 'haxi', '127.0.0.1', '/permission/findAll.do', 2, '[类名] cn.icanci.tourism.controller.PermissionController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (34, '2020-01-18 23:27:03', 'haxi', '127.0.0.1', '/user/findAll.do', 2, '[类名] cn.icanci.tourism.controller.UserController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (35, '2020-01-18 23:27:05', 'haxi', '127.0.0.1', '/user/findAll.do', 6, '[类名] cn.icanci.tourism.controller.UserController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (36, '2020-01-18 23:27:09', 'haxi', '127.0.0.1', '/user/findAll.do', 3, '[类名] cn.icanci.tourism.controller.UserController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (37, '2020-01-18 23:27:11', 'haxi', '127.0.0.1', '/user/findAll.do', 4, '[类名] cn.icanci.tourism.controller.UserController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (38, '2020-01-18 23:27:14', 'haxi', '127.0.0.1', '/user/findAll.do', 3, '[类名] cn.icanci.tourism.controller.UserController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (39, '2020-01-18 23:27:14', 'haxi', '127.0.0.1', '/user/findAll.do', 1, '[类名] cn.icanci.tourism.controller.UserController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (40, '2020-01-18 23:28:27', 'haxi', '127.0.0.1', '/product/findAll.do', 12, '[类名] cn.icanci.tourism.controller.ProductController [方法名] findAllProduct');
INSERT INTO `ssm_pa_log` VALUES (41, '2020-01-18 23:28:29', 'haxi', '127.0.0.1', '/orders/findAll.do', 17, '[类名] cn.icanci.tourism.controller.OrdersController [方法名] findAllProduct');
INSERT INTO `ssm_pa_log` VALUES (42, '2020-01-18 23:28:31', 'haxi', '127.0.0.1', '/user/findAll.do', 1, '[类名] cn.icanci.tourism.controller.UserController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (43, '2020-01-18 23:28:33', 'haxi', '127.0.0.1', '/role/findAll.do', 2, '[类名] cn.icanci.tourism.controller.RoleController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (44, '2020-01-18 23:28:35', 'haxi', '127.0.0.1', '/permission/findAll.do', 2, '[类名] cn.icanci.tourism.controller.PermissionController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (45, '2020-01-18 23:28:46', 'haxi', '127.0.0.1', '/orders/findAll.do', 17, '[类名] cn.icanci.tourism.controller.OrdersController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (46, '2020-01-19 08:03:10', 'haxi', '127.0.0.1', '/product/findAll.do', 11, '[类名] cn.icanci.tourism.controller.ProductController [方法名] findAllProduct');
INSERT INTO `ssm_pa_log` VALUES (47, '2020-01-19 08:11:42', 'haxi', '127.0.0.1', '/user/findAll.do', 11, '[类名] cn.icanci.tourism.controller.UserController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (48, '2020-01-19 08:11:44', 'haxi', '127.0.0.1', '/role/findAll.do', 14, '[类名] cn.icanci.tourism.controller.RoleController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (49, '2020-01-19 08:11:47', 'haxi', '127.0.0.1', '/permission/findAll.do', 14, '[类名] cn.icanci.tourism.controller.PermissionController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (50, '2020-01-19 08:11:54', 'haxi', '127.0.0.1', '/product/findAll.do', 13, '[类名] cn.icanci.tourism.controller.ProductController [方法名] findAllProduct');
INSERT INTO `ssm_pa_log` VALUES (51, '2020-01-19 08:11:57', 'haxi', '127.0.0.1', '/orders/findAll.do', 70, '[类名] cn.icanci.tourism.controller.OrdersController [方法名] findAllProduct');
INSERT INTO `ssm_pa_log` VALUES (52, '2020-01-19 08:12:02', 'haxi', '127.0.0.1', '/orders/findAll.do', 21, '[类名] cn.icanci.tourism.controller.OrdersController [方法名] findAllProduct');
INSERT INTO `ssm_pa_log` VALUES (53, '2020-01-19 08:12:04', 'haxi', '127.0.0.1', '/product/findAll.do', 5, '[类名] cn.icanci.tourism.controller.ProductController [方法名] findAllProduct');
INSERT INTO `ssm_pa_log` VALUES (54, '2020-01-19 08:12:35', 'haxi', '127.0.0.1', '/permission/findAll.do', 8, '[类名] cn.icanci.tourism.controller.PermissionController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (55, '2020-01-19 08:12:42', 'haxi', '127.0.0.1', '/user/findAll.do', 6, '[类名] cn.icanci.tourism.controller.UserController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (56, '2020-01-19 08:12:44', 'haxi', '127.0.0.1', '/permission/findAll.do', 2, '[类名] cn.icanci.tourism.controller.PermissionController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (57, '2020-01-19 08:12:46', 'haxi', '127.0.0.1', '/user/findAll.do', 6, '[类名] cn.icanci.tourism.controller.UserController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (58, '2020-01-19 08:12:47', 'haxi', '127.0.0.1', '/permission/findAll.do', 3, '[类名] cn.icanci.tourism.controller.PermissionController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (59, '2020-01-19 08:12:48', 'haxi', '127.0.0.1', '/user/findAll.do', 5, '[类名] cn.icanci.tourism.controller.UserController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (60, '2020-01-19 08:12:49', 'haxi', '127.0.0.1', '/permission/findAll.do', 5, '[类名] cn.icanci.tourism.controller.PermissionController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (61, '2020-01-19 08:13:06', 'haxi', '127.0.0.1', '/permission/findAll.do', 2, '[类名] cn.icanci.tourism.controller.PermissionController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (62, '2020-01-19 08:13:11', 'haxi', '127.0.0.1', '/orders/findAll.do', 18, '[类名] cn.icanci.tourism.controller.OrdersController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (63, '2020-01-19 08:13:13', 'haxi', '127.0.0.1', '/orders/findAll.do', 5, '[类名] cn.icanci.tourism.controller.OrdersController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (64, '2020-01-19 08:13:31', 'haxi', '127.0.0.1', '/orders/findAll.do', 18, '[类名] cn.icanci.tourism.controller.OrdersController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (65, '2020-01-19 08:13:34', 'haxi', '127.0.0.1', '/orders/findAll.do', 4, '[类名] cn.icanci.tourism.controller.OrdersController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (66, '2020-01-19 08:13:36', 'haxi', '127.0.0.1', '/orders/findAll.do', 16, '[类名] cn.icanci.tourism.controller.OrdersController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (67, '2020-01-19 08:14:02', 'haxi', '127.0.0.1', '/role/findAll.do', 2, '[类名] cn.icanci.tourism.controller.RoleController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (68, '2020-01-19 08:14:19', 'haxi', '127.0.0.1', '/role/findAll.do', 1, '[类名] cn.icanci.tourism.controller.RoleController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (69, '2020-01-19 08:14:23', 'haxi', '127.0.0.1', '/permission/findAll.do', 2, '[类名] cn.icanci.tourism.controller.PermissionController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (70, '2020-01-19 08:15:48', 'haxi', '127.0.0.1', '/permission/findAll.do', 15, '[类名] cn.icanci.tourism.controller.PermissionController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (71, '2020-01-19 08:15:50', 'haxi', '127.0.0.1', '/user/findAll.do', 12, '[类名] cn.icanci.tourism.controller.UserController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (72, '2020-01-19 08:15:52', 'haxi', '127.0.0.1', '/permission/findAll.do', 3, '[类名] cn.icanci.tourism.controller.PermissionController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (73, '2020-01-19 08:18:13', 'haxi', '127.0.0.1', '/permission/findAll.do', 17, '[类名] cn.icanci.tourism.controller.PermissionController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (74, '2020-01-19 08:26:23', 'haxi', '127.0.0.1', '/user/findAll.do', 11, '[类名] cn.icanci.tourism.controller.UserController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (75, '2020-01-19 08:26:26', 'haxi', '127.0.0.1', '/user/findAll.do', 6, '[类名] cn.icanci.tourism.controller.UserController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (76, '2020-01-19 08:26:27', 'haxi', '127.0.0.1', '/user/findAll.do', 2, '[类名] cn.icanci.tourism.controller.UserController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (77, '2020-01-19 08:26:29', 'haxi', '127.0.0.1', '/user/findAll.do', 8, '[类名] cn.icanci.tourism.controller.UserController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (78, '2020-01-19 08:26:30', 'haxi', '127.0.0.1', '/user/findAll.do', 2, '[类名] cn.icanci.tourism.controller.UserController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (79, '2020-01-19 08:27:32', 'haxi', '127.0.0.1', '/user/findAll.do', 3, '[类名] cn.icanci.tourism.controller.UserController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (80, '2020-01-19 08:28:14', 'haxi', '127.0.0.1', '/user/findAll.do', 5, '[类名] cn.icanci.tourism.controller.UserController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (81, '2020-01-19 08:28:21', 'haxi', '127.0.0.1', '/user/findAll.do', 2, '[类名] cn.icanci.tourism.controller.UserController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (82, '2020-01-19 08:28:44', 'haxi', '127.0.0.1', '/role/findAll.do', 12, '[类名] cn.icanci.tourism.controller.RoleController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (83, '2020-01-19 08:29:31', 'haxi', '127.0.0.1', '/permission/findAll.do', 12, '[类名] cn.icanci.tourism.controller.PermissionController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (84, '2020-01-19 08:29:36', 'haxi', '127.0.0.1', '/permission/findAll.do', 2, '[类名] cn.icanci.tourism.controller.PermissionController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (85, '2020-01-19 08:30:16', 'haxi', '127.0.0.1', '/product/findAll.do', 12, '[类名] cn.icanci.tourism.controller.ProductController [方法名] findAllProduct');
INSERT INTO `ssm_pa_log` VALUES (86, '2020-01-19 08:30:21', 'haxi', '127.0.0.1', '/orders/findAll.do', 63, '[类名] cn.icanci.tourism.controller.OrdersController [方法名] findAllProduct');
INSERT INTO `ssm_pa_log` VALUES (87, '2020-01-19 08:30:59', 'haxi', '127.0.0.1', '/role/findAll.do', 16, '[类名] cn.icanci.tourism.controller.RoleController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (88, '2020-01-19 08:31:07', 'haxi', '127.0.0.1', '/user/findAll.do', 9, '[类名] cn.icanci.tourism.controller.UserController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (89, '2020-01-19 08:31:10', 'haxi', '127.0.0.1', '/permission/findAll.do', 13, '[类名] cn.icanci.tourism.controller.PermissionController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (90, '2020-01-19 08:31:16', 'haxi', '127.0.0.1', '/permission/findAll.do', 3, '[类名] cn.icanci.tourism.controller.PermissionController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (91, '2020-01-19 08:31:18', 'haxi', '127.0.0.1', '/product/findAll.do', 13, '[类名] cn.icanci.tourism.controller.ProductController [方法名] findAllProduct');
INSERT INTO `ssm_pa_log` VALUES (92, '2020-01-19 08:31:22', 'haxi', '127.0.0.1', '/user/findAll.do', 2, '[类名] cn.icanci.tourism.controller.UserController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (93, '2020-01-19 08:33:14', 'haxi', '127.0.0.1', '/product/findAll.do', 14, '[类名] cn.icanci.tourism.controller.ProductController [方法名] findAllProduct');
INSERT INTO `ssm_pa_log` VALUES (94, '2020-01-19 08:47:34', 'haxi', '127.0.0.1', '/user/findAll.do', 11, '[类名] cn.icanci.tourism.controller.UserController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (95, '2020-01-19 08:49:08', 'haxi', '127.0.0.1', '/user/findAll.do', 8, '[类名] cn.icanci.tourism.controller.UserController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (96, '2020-01-19 08:49:58', 'haxi', '127.0.0.1', '/orders/findAll.do', 72, '[类名] cn.icanci.tourism.controller.OrdersController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (97, '2020-01-19 08:52:03', 'haxi', '127.0.0.1', '/orders/findAll.do', 34, '[类名] cn.icanci.tourism.controller.OrdersController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (98, '2020-01-19 08:57:46', 'haxi', '127.0.0.1', '/product/findAll.do', 16, '[类名] cn.icanci.tourism.controller.ProductController [方法名] findAllProduct');
INSERT INTO `ssm_pa_log` VALUES (99, '2020-01-19 08:58:03', 'haxi', '127.0.0.1', '/orders/findAll.do', 22, '[类名] cn.icanci.tourism.controller.OrdersController [方法名] findAllProduct');
INSERT INTO `ssm_pa_log` VALUES (100, '2020-01-19 08:58:06', 'haxi', '127.0.0.1', '/orders/findAll.do', 22, '[类名] cn.icanci.tourism.controller.OrdersController [方法名] findAllProduct');
INSERT INTO `ssm_pa_log` VALUES (101, '2020-01-19 08:58:11', 'haxi', '127.0.0.1', '/orders/findAll.do', 20, '[类名] cn.icanci.tourism.controller.OrdersController [方法名] findAllProduct');
INSERT INTO `ssm_pa_log` VALUES (102, '2020-01-19 08:58:27', 'haxi', '127.0.0.1', '/orders/findAll.do', 21, '[类名] cn.icanci.tourism.controller.OrdersController [方法名] findAllProduct');
INSERT INTO `ssm_pa_log` VALUES (103, '2020-01-19 08:59:01', 'haxi', '127.0.0.1', '/orders/findAll.do', 32, '[类名] cn.icanci.tourism.controller.OrdersController [方法名] findAllProduct');
INSERT INTO `ssm_pa_log` VALUES (104, '2020-01-19 08:59:06', 'haxi', '127.0.0.1', '/orders/findAll.do', 15, '[类名] cn.icanci.tourism.controller.OrdersController [方法名] findAllProduct');
INSERT INTO `ssm_pa_log` VALUES (105, '2020-01-19 08:59:08', 'haxi', '127.0.0.1', '/orders/findAll.do', 29, '[类名] cn.icanci.tourism.controller.OrdersController [方法名] findAllProduct');
INSERT INTO `ssm_pa_log` VALUES (106, '2020-01-19 08:59:12', 'haxi', '127.0.0.1', '/orders/findAll.do', 28, '[类名] cn.icanci.tourism.controller.OrdersController [方法名] findAllProduct');
INSERT INTO `ssm_pa_log` VALUES (107, '2020-01-19 08:59:19', 'haxi', '127.0.0.1', '/orders/findAll.do', 17, '[类名] cn.icanci.tourism.controller.OrdersController [方法名] findAllProduct');
INSERT INTO `ssm_pa_log` VALUES (108, '2020-01-19 08:59:22', 'haxi', '127.0.0.1', '/orders/findAll.do', 10, '[类名] cn.icanci.tourism.controller.OrdersController [方法名] findAllProduct');
INSERT INTO `ssm_pa_log` VALUES (109, '2020-01-19 08:59:24', 'haxi', '127.0.0.1', '/orders/findAll.do', 7, '[类名] cn.icanci.tourism.controller.OrdersController [方法名] findAllProduct');
INSERT INTO `ssm_pa_log` VALUES (110, '2020-01-19 08:59:26', 'haxi', '127.0.0.1', '/orders/findAll.do', 13, '[类名] cn.icanci.tourism.controller.OrdersController [方法名] findAllProduct');
INSERT INTO `ssm_pa_log` VALUES (111, '2020-01-19 08:59:26', 'haxi', '127.0.0.1', '/orders/findAll.do', 14, '[类名] cn.icanci.tourism.controller.OrdersController [方法名] findAllProduct');
INSERT INTO `ssm_pa_log` VALUES (112, '2020-01-19 08:59:27', 'haxi', '127.0.0.1', '/orders/findAll.do', 13, '[类名] cn.icanci.tourism.controller.OrdersController [方法名] findAllProduct');
INSERT INTO `ssm_pa_log` VALUES (113, '2020-01-19 08:59:29', 'haxi', '127.0.0.1', '/orders/findAll.do', 16, '[类名] cn.icanci.tourism.controller.OrdersController [方法名] findAllProduct');
INSERT INTO `ssm_pa_log` VALUES (114, '2020-01-19 08:59:30', 'haxi', '127.0.0.1', '/orders/findAll.do', 13, '[类名] cn.icanci.tourism.controller.OrdersController [方法名] findAllProduct');
INSERT INTO `ssm_pa_log` VALUES (115, '2020-01-19 09:02:10', 'haxi', '127.0.0.1', '/product/findAll.do', 17, '[类名] cn.icanci.tourism.controller.ProductController [方法名] findAllProduct');
INSERT INTO `ssm_pa_log` VALUES (116, '2020-01-19 09:02:12', 'haxi', '127.0.0.1', '/orders/findAll.do', 18, '[类名] cn.icanci.tourism.controller.OrdersController [方法名] findAllProduct');
INSERT INTO `ssm_pa_log` VALUES (117, '2020-01-19 09:02:29', 'haxi', '127.0.0.1', '/orders/findAll.do', 24, '[类名] cn.icanci.tourism.controller.OrdersController [方法名] findAllProduct');
INSERT INTO `ssm_pa_log` VALUES (118, '2020-01-19 09:12:25', 'haxi', '0:0:0:0:0:0:0:1', '/product/findAll.do', 16, '[类名] cn.icanci.tourism.controller.ProductController [方法名] findAllProduct');
INSERT INTO `ssm_pa_log` VALUES (119, '2020-01-19 09:12:27', 'haxi', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 16, '[类名] cn.icanci.tourism.controller.OrdersController [方法名] findAllProduct');
INSERT INTO `ssm_pa_log` VALUES (120, '2020-01-19 09:12:33', 'haxi', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 8, '[类名] cn.icanci.tourism.controller.OrdersController [方法名] findAllProduct');
INSERT INTO `ssm_pa_log` VALUES (121, '2020-01-19 09:12:35', 'haxi', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 9, '[类名] cn.icanci.tourism.controller.OrdersController [方法名] findAllProduct');
INSERT INTO `ssm_pa_log` VALUES (122, '2020-01-19 09:12:36', 'haxi', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 7, '[类名] cn.icanci.tourism.controller.OrdersController [方法名] findAllProduct');
INSERT INTO `ssm_pa_log` VALUES (123, '2020-01-19 09:12:36', 'haxi', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 9, '[类名] cn.icanci.tourism.controller.OrdersController [方法名] findAllProduct');
INSERT INTO `ssm_pa_log` VALUES (124, '2020-01-19 09:13:29', 'haxi', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 14, '[类名] cn.icanci.tourism.controller.OrdersController [方法名] findAllProduct');
INSERT INTO `ssm_pa_log` VALUES (125, '2020-01-19 09:13:37', 'haxi', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 11, '[类名] cn.icanci.tourism.controller.OrdersController [方法名] findAllProduct');
INSERT INTO `ssm_pa_log` VALUES (126, '2020-01-19 09:14:05', 'haxi', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 18, '[类名] cn.icanci.tourism.controller.OrdersController [方法名] findAllProduct');
INSERT INTO `ssm_pa_log` VALUES (127, '2020-01-19 09:14:07', 'haxi', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 8, '[类名] cn.icanci.tourism.controller.OrdersController [方法名] findAllProduct');
INSERT INTO `ssm_pa_log` VALUES (128, '2020-01-19 09:14:08', 'haxi', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 9, '[类名] cn.icanci.tourism.controller.OrdersController [方法名] findAllProduct');
INSERT INTO `ssm_pa_log` VALUES (129, '2020-01-19 09:14:09', 'haxi', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 7, '[类名] cn.icanci.tourism.controller.OrdersController [方法名] findAllProduct');
INSERT INTO `ssm_pa_log` VALUES (130, '2020-01-19 09:14:09', 'haxi', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 9, '[类名] cn.icanci.tourism.controller.OrdersController [方法名] findAllProduct');
INSERT INTO `ssm_pa_log` VALUES (131, '2020-01-19 09:14:10', 'haxi', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 8, '[类名] cn.icanci.tourism.controller.OrdersController [方法名] findAllProduct');
INSERT INTO `ssm_pa_log` VALUES (132, '2020-01-19 09:14:10', 'haxi', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 7, '[类名] cn.icanci.tourism.controller.OrdersController [方法名] findAllProduct');
INSERT INTO `ssm_pa_log` VALUES (133, '2020-01-19 09:14:11', 'haxi', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 9, '[类名] cn.icanci.tourism.controller.OrdersController [方法名] findAllProduct');
INSERT INTO `ssm_pa_log` VALUES (134, '2020-01-19 09:14:11', 'haxi', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 7, '[类名] cn.icanci.tourism.controller.OrdersController [方法名] findAllProduct');
INSERT INTO `ssm_pa_log` VALUES (135, '2020-01-19 09:15:10', 'haxi', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 7, '[类名] cn.icanci.tourism.controller.OrdersController [方法名] findAllProduct');
INSERT INTO `ssm_pa_log` VALUES (136, '2020-01-19 09:17:17', 'haxi', '0:0:0:0:0:0:0:1', '/product/findAll.do', 17, '[类名] cn.icanci.tourism.controller.ProductController [方法名] findAllProduct');
INSERT INTO `ssm_pa_log` VALUES (137, '2020-01-19 09:17:21', 'haxi', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 14, '[类名] cn.icanci.tourism.controller.OrdersController [方法名] findAllProduct');
INSERT INTO `ssm_pa_log` VALUES (138, '2020-01-19 09:22:23', 'haxi', '0:0:0:0:0:0:0:1', '/product/findAll.do', 15, '[类名] cn.icanci.tourism.controller.ProductController [方法名] findAllProduct');
INSERT INTO `ssm_pa_log` VALUES (139, '2020-01-19 09:22:26', 'haxi', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 12, '[类名] cn.icanci.tourism.controller.OrdersController [方法名] findAllProduct');
INSERT INTO `ssm_pa_log` VALUES (140, '2020-01-19 09:24:01', 'haxi', '0:0:0:0:0:0:0:1', '', 62, NULL);
INSERT INTO `ssm_pa_log` VALUES (141, '2020-01-19 09:24:19', 'haxi', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 12, '[类名] cn.icanci.tourism.controller.OrdersController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (142, '2020-01-19 09:24:22', 'haxi', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 15, '[类名] cn.icanci.tourism.controller.OrdersController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (143, '2020-01-19 09:24:25', 'haxi', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 10, '[类名] cn.icanci.tourism.controller.OrdersController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (144, '2020-01-19 09:24:30', 'haxi', '0:0:0:0:0:0:0:1', '/product/findAll.do', 17, '[类名] cn.icanci.tourism.controller.ProductController [方法名] findAllProduct');
INSERT INTO `ssm_pa_log` VALUES (145, '2020-01-19 09:26:06', 'haxi', '0:0:0:0:0:0:0:1', '/product/findAll.do', 11, '[类名] cn.icanci.tourism.controller.ProductController [方法名] findAllProduct');
INSERT INTO `ssm_pa_log` VALUES (146, '2020-01-19 09:27:44', 'haxi', '0:0:0:0:0:0:0:1', '', 13, NULL);
INSERT INTO `ssm_pa_log` VALUES (147, '2020-01-19 14:15:50', 'haxi', '0:0:0:0:0:0:0:1', '/role/findAll.do', 16, NULL);
INSERT INTO `ssm_pa_log` VALUES (148, '2020-01-19 14:15:54', 'haxi', '0:0:0:0:0:0:0:1', '/role/findAll.do', 2, NULL);
INSERT INTO `ssm_pa_log` VALUES (149, '2020-01-19 14:15:54', 'haxi', '0:0:0:0:0:0:0:1', '/role/findAll.do', 2, NULL);
INSERT INTO `ssm_pa_log` VALUES (150, '2020-01-19 14:16:18', 'haxi', '0:0:0:0:0:0:0:1', '/role/findAll.do', 1, NULL);
INSERT INTO `ssm_pa_log` VALUES (151, '2020-01-19 14:16:18', 'haxi', '0:0:0:0:0:0:0:1', '/role/findAll.do', 3, NULL);
INSERT INTO `ssm_pa_log` VALUES (152, '2020-01-19 14:16:24', 'haxi', '0:0:0:0:0:0:0:1', '/role/findAll.do', 2, NULL);
INSERT INTO `ssm_pa_log` VALUES (153, '2020-01-19 14:16:25', 'haxi', '0:0:0:0:0:0:0:1', '/permission/findAll.do', 47, NULL);
INSERT INTO `ssm_pa_log` VALUES (154, '2020-01-19 14:20:24', 'haxi', '0:0:0:0:0:0:0:1', '/role/findAll.do', 13, NULL);
INSERT INTO `ssm_pa_log` VALUES (155, '2020-01-19 14:20:27', 'haxi', '0:0:0:0:0:0:0:1', '/permission/findAll.do', 3, NULL);
INSERT INTO `ssm_pa_log` VALUES (156, '2020-01-19 14:20:29', 'haxi', '0:0:0:0:0:0:0:1', '/user/findAll.do', 2, NULL);
INSERT INTO `ssm_pa_log` VALUES (157, '2020-01-19 14:20:34', 'haxi', '0:0:0:0:0:0:0:1', '/permission/findAll.do', 4, NULL);
INSERT INTO `ssm_pa_log` VALUES (158, '2020-01-19 14:23:18', 'haxi', '0:0:0:0:0:0:0:1', '/user/findAll.do', 3, NULL);
INSERT INTO `ssm_pa_log` VALUES (159, '2020-01-19 14:23:22', 'haxi', '0:0:0:0:0:0:0:1', '/user/findAll.do', 3, NULL);
INSERT INTO `ssm_pa_log` VALUES (160, '2020-01-19 14:23:31', 'haxi', '0:0:0:0:0:0:0:1', '/user/findAll.do', 10, NULL);
INSERT INTO `ssm_pa_log` VALUES (161, '2020-01-19 14:23:31', 'haxi', '0:0:0:0:0:0:0:1', '/user/findAll.do', 3, NULL);
INSERT INTO `ssm_pa_log` VALUES (162, '2020-01-19 14:23:33', 'haxi', '0:0:0:0:0:0:0:1', '/user/findAll.do', 5, NULL);
INSERT INTO `ssm_pa_log` VALUES (163, '2020-01-19 14:23:34', 'haxi', '0:0:0:0:0:0:0:1', '/user/findAll.do', 3, NULL);
INSERT INTO `ssm_pa_log` VALUES (164, '2020-01-19 14:23:39', 'haxi', '0:0:0:0:0:0:0:1', '/user/findAll.do', 3, NULL);
INSERT INTO `ssm_pa_log` VALUES (165, '2020-01-19 14:26:18', 'haxi', '0:0:0:0:0:0:0:1', '/role/findAll.do', 13, NULL);
INSERT INTO `ssm_pa_log` VALUES (166, '2020-01-19 14:27:02', 'haxi', '0:0:0:0:0:0:0:1', '/permission/findAll.do', 16, NULL);
INSERT INTO `ssm_pa_log` VALUES (167, '2020-01-19 14:34:06', 'haxi', '0:0:0:0:0:0:0:1', '/role/findAll.do', 30, NULL);
INSERT INTO `ssm_pa_log` VALUES (168, '2020-01-19 14:34:08', 'haxi', '0:0:0:0:0:0:0:1', '/role/findAll.do', 1, NULL);
INSERT INTO `ssm_pa_log` VALUES (169, '2020-01-19 14:34:09', 'haxi', '0:0:0:0:0:0:0:1', '/role/findAll.do', 2, NULL);
INSERT INTO `ssm_pa_log` VALUES (170, '2020-01-19 14:34:10', 'haxi', '0:0:0:0:0:0:0:1', '/role/findAll.do', 2, NULL);
INSERT INTO `ssm_pa_log` VALUES (171, '2020-01-19 14:34:11', 'haxi', '0:0:0:0:0:0:0:1', '/role/findAll.do', 1, NULL);
INSERT INTO `ssm_pa_log` VALUES (172, '2020-01-19 14:34:41', 'haxi', '0:0:0:0:0:0:0:1', '/permission/findAll.do', 14, NULL);
INSERT INTO `ssm_pa_log` VALUES (173, '2020-01-19 14:37:55', 'haxi', '0:0:0:0:0:0:0:1', '/role/findAll.do', 14, NULL);
INSERT INTO `ssm_pa_log` VALUES (174, '2020-01-19 14:38:00', 'haxi', '0:0:0:0:0:0:0:1', '/permission/findAll.do', 14, NULL);
INSERT INTO `ssm_pa_log` VALUES (175, '2020-01-19 14:38:06', 'haxi', '0:0:0:0:0:0:0:1', '/permission/findAll.do', 6, NULL);
INSERT INTO `ssm_pa_log` VALUES (176, '2020-01-19 14:38:07', 'haxi', '0:0:0:0:0:0:0:1', '/permission/findAll.do', 4, NULL);
INSERT INTO `ssm_pa_log` VALUES (177, '2020-01-19 14:38:08', 'haxi', '0:0:0:0:0:0:0:1', '/permission/findAll.do', 3, NULL);
INSERT INTO `ssm_pa_log` VALUES (178, '2020-01-19 14:38:46', 'haxi', '0:0:0:0:0:0:0:1', '/product/findAll.do', 29, NULL);
INSERT INTO `ssm_pa_log` VALUES (179, '2020-01-19 14:38:48', 'haxi', '0:0:0:0:0:0:0:1', '/product/findAll.do', 5, NULL);
INSERT INTO `ssm_pa_log` VALUES (180, '2020-01-19 14:38:52', 'haxi', '0:0:0:0:0:0:0:1', '/product/findAll.do', 11, NULL);
INSERT INTO `ssm_pa_log` VALUES (181, '2020-01-19 14:39:51', 'haxi', '0:0:0:0:0:0:0:1', '/product/findAll.do', 5, NULL);
INSERT INTO `ssm_pa_log` VALUES (182, '2020-01-19 14:39:51', 'haxi', '0:0:0:0:0:0:0:1', '/product/findAll.do', 4, NULL);
INSERT INTO `ssm_pa_log` VALUES (183, '2020-01-19 14:39:56', 'haxi', '0:0:0:0:0:0:0:1', '/product/findAll.do', 4, NULL);
INSERT INTO `ssm_pa_log` VALUES (184, '2020-01-19 14:40:01', 'haxi', '0:0:0:0:0:0:0:1', '/product/findAll.do', 5, NULL);
INSERT INTO `ssm_pa_log` VALUES (185, '2020-01-19 14:40:03', 'haxi', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 22, NULL);
INSERT INTO `ssm_pa_log` VALUES (186, '2020-01-19 14:40:06', 'haxi', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 13, NULL);
INSERT INTO `ssm_pa_log` VALUES (187, '2020-01-19 14:40:13', 'haxi', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 10, NULL);
INSERT INTO `ssm_pa_log` VALUES (188, '2020-01-19 14:42:58', 'haxi', '0:0:0:0:0:0:0:1', '/role/findAll.do', 16, '[类名] cn.icanci.tourism.controller.RoleController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (189, '2020-01-19 14:43:01', 'haxi', '0:0:0:0:0:0:0:1', '/role/findAll.do', 2, '[类名] cn.icanci.tourism.controller.RoleController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (190, '2020-01-19 14:43:05', 'haxi', '0:0:0:0:0:0:0:1', '/user/findAll.do', 8, '[类名] cn.icanci.tourism.controller.UserController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (191, '2020-01-19 14:43:07', 'haxi', '0:0:0:0:0:0:0:1', '/user/findAll.do', 2, '[类名] cn.icanci.tourism.controller.UserController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (192, '2020-01-19 14:43:23', 'haxi', '0:0:0:0:0:0:0:1', '/product/findAll.do', 7, '[类名] cn.icanci.tourism.controller.ProductController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (193, '2020-01-19 14:43:30', 'haxi', '0:0:0:0:0:0:0:1', '/user/findAll.do', 2, '[类名] cn.icanci.tourism.controller.UserController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (194, '2020-01-19 14:46:00', 'haxi', '0:0:0:0:0:0:0:1', '/role/findAll.do', 2, '[类名] cn.icanci.tourism.controller.RoleController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (195, '2020-01-19 14:46:02', 'haxi', '0:0:0:0:0:0:0:1', '/permission/findAll.do', 4, '[类名] cn.icanci.tourism.controller.PermissionController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (196, '2020-01-19 14:46:05', 'haxi', '0:0:0:0:0:0:0:1', '/permission/findAll.do', 10, '[类名] cn.icanci.tourism.controller.PermissionController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (197, '2020-01-19 14:46:10', 'haxi', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 23, '[类名] cn.icanci.tourism.controller.OrdersController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (198, '2020-01-19 14:46:13', 'haxi', '0:0:0:0:0:0:0:1', '/product/findAll.do', 7, '[类名] cn.icanci.tourism.controller.ProductController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (199, '2020-01-19 14:46:16', 'haxi', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 14, '[类名] cn.icanci.tourism.controller.OrdersController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (200, '2020-01-19 14:46:21', 'haxi', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 12, '[类名] cn.icanci.tourism.controller.OrdersController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (201, '2020-01-19 14:46:23', 'haxi', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 11, '[类名] cn.icanci.tourism.controller.OrdersController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (202, '2020-01-19 14:46:37', 'haxi', '0:0:0:0:0:0:0:1', '/user/findAll.do', 4, '[类名] cn.icanci.tourism.controller.UserController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (203, '2020-01-19 14:46:43', 'haxi', '0:0:0:0:0:0:0:1', '/role/findAll.do', 1, '[类名] cn.icanci.tourism.controller.RoleController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (204, '2020-01-19 14:46:45', 'haxi', '0:0:0:0:0:0:0:1', '/role/findAll.do', 3, '[类名] cn.icanci.tourism.controller.RoleController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (205, '2020-01-19 14:47:01', 'haxi', '0:0:0:0:0:0:0:1', '/role/findAll.do', 2, '[类名] cn.icanci.tourism.controller.RoleController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (206, '2020-01-19 16:44:32', 'icanci', '0:0:0:0:0:0:0:1', '/role/findAll.do', 11, '[类名] cn.icanci.tourism.controller.RoleController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (207, '2020-01-19 16:46:07', 'icanci', '0:0:0:0:0:0:0:1', '/role/findAll.do', 2, '[类名] cn.icanci.tourism.controller.RoleController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (208, '2020-01-19 16:46:07', 'icanci', '0:0:0:0:0:0:0:1', '/role/findAll.do', 1, '[类名] cn.icanci.tourism.controller.RoleController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (209, '2020-01-19 16:46:46', 'icanci', '0:0:0:0:0:0:0:1', '/role/findAll.do', 3, '[类名] cn.icanci.tourism.controller.RoleController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (210, '2020-01-19 16:47:14', 'icanci', '0:0:0:0:0:0:0:1', '/role/findAll.do', 6, '[类名] cn.icanci.tourism.controller.RoleController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (211, '2020-01-19 16:47:14', 'icanci', '0:0:0:0:0:0:0:1', '/role/findAll.do', 1, '[类名] cn.icanci.tourism.controller.RoleController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (212, '2020-01-19 16:47:18', 'icanci', '0:0:0:0:0:0:0:1', '/permission/findAll.do', 15, '[类名] cn.icanci.tourism.controller.PermissionController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (213, '2020-01-19 16:47:23', 'icanci', '0:0:0:0:0:0:0:1', '/role/findAll.do', 1, '[类名] cn.icanci.tourism.controller.RoleController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (214, '2020-01-19 16:47:26', 'icanci', '0:0:0:0:0:0:0:1', '/permission/findAll.do', 3, '[类名] cn.icanci.tourism.controller.PermissionController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (215, '2020-01-19 16:47:57', 'icanci', '0:0:0:0:0:0:0:1', '/permission/findAll.do', 5, '[类名] cn.icanci.tourism.controller.PermissionController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (216, '2020-01-19 16:48:52', 'icanci', '0:0:0:0:0:0:0:1', '/permission/findAll.do', 6, '[类名] cn.icanci.tourism.controller.PermissionController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (217, '2020-01-19 16:48:52', 'icanci', '0:0:0:0:0:0:0:1', '/permission/findAll.do', 5, '[类名] cn.icanci.tourism.controller.PermissionController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (218, '2020-01-19 16:49:26', 'icanci', '0:0:0:0:0:0:0:1', '/user/findAll.do', 3, '[类名] cn.icanci.tourism.controller.UserController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (219, '2020-01-19 16:49:50', 'icanci', '0:0:0:0:0:0:0:1', '/user/findAll.do', 2, '[类名] cn.icanci.tourism.controller.UserController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (220, '2020-01-19 16:49:50', 'icanci', '0:0:0:0:0:0:0:1', '/user/findAll.do', 2, '[类名] cn.icanci.tourism.controller.UserController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (221, '2020-01-19 16:50:10', 'icanci', '0:0:0:0:0:0:0:1', '/permission/findAll.do', 4, '[类名] cn.icanci.tourism.controller.PermissionController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (222, '2020-01-19 16:51:50', 'icanci', '0:0:0:0:0:0:0:1', '/product/findAll.do', 19, '[类名] cn.icanci.tourism.controller.ProductController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (223, '2020-01-19 16:54:08', 'icanci', '0:0:0:0:0:0:0:1', '/product/findAll.do', 4, '[类名] cn.icanci.tourism.controller.ProductController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (224, '2020-01-19 16:54:08', 'icanci', '0:0:0:0:0:0:0:1', '/product/findAll.do', 4, '[类名] cn.icanci.tourism.controller.ProductController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (225, '2020-01-19 16:54:10', 'icanci', '0:0:0:0:0:0:0:1', '/product/findAll.do', 3, '[类名] cn.icanci.tourism.controller.ProductController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (226, '2020-01-19 16:54:33', 'icanci', '0:0:0:0:0:0:0:1', '/product/findAll.do', 6, '[类名] cn.icanci.tourism.controller.ProductController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (227, '2020-01-19 16:55:15', 'icanci', '0:0:0:0:0:0:0:1', '/product/findAll.do', 11, '[类名] cn.icanci.tourism.controller.ProductController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (228, '2020-01-19 16:55:15', 'icanci', '0:0:0:0:0:0:0:1', '/product/findAll.do', 4, '[类名] cn.icanci.tourism.controller.ProductController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (229, '2020-01-19 16:55:17', 'icanci', '0:0:0:0:0:0:0:1', '/product/findAll.do', 4, '[类名] cn.icanci.tourism.controller.ProductController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (230, '2020-01-19 16:55:45', 'icanci', '0:0:0:0:0:0:0:1', '/product/findAll.do', 4, '[类名] cn.icanci.tourism.controller.ProductController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (231, '2020-01-19 16:55:45', 'icanci', '0:0:0:0:0:0:0:1', '/product/findAll.do', 3, '[类名] cn.icanci.tourism.controller.ProductController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (232, '2020-01-19 16:55:48', 'icanci', '0:0:0:0:0:0:0:1', '/product/findAll.do', 4, '[类名] cn.icanci.tourism.controller.ProductController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (233, '2020-01-19 16:56:26', 'icanci', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 11, '[类名] cn.icanci.tourism.controller.OrdersController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (234, '2020-01-19 16:57:00', 'icanci', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 13, '[类名] cn.icanci.tourism.controller.OrdersController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (235, '2020-01-19 16:57:58', 'icanci', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 6, '[类名] cn.icanci.tourism.controller.OrdersController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (236, '2020-01-19 16:57:58', 'icanci', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 9, '[类名] cn.icanci.tourism.controller.OrdersController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (237, '2020-01-19 16:58:09', 'icanci', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 5, '[类名] cn.icanci.tourism.controller.OrdersController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (238, '2020-01-19 16:58:21', 'icanci', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 5, '[类名] cn.icanci.tourism.controller.OrdersController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (239, '2020-01-19 16:58:37', 'icanci', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 5, '[类名] cn.icanci.tourism.controller.OrdersController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (240, '2020-01-19 16:58:47', 'icanci', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 6, '[类名] cn.icanci.tourism.controller.OrdersController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (241, '2020-01-19 16:59:35', 'icanci', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 4, '[类名] cn.icanci.tourism.controller.OrdersController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (242, '2020-01-19 16:59:35', 'icanci', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 9, '[类名] cn.icanci.tourism.controller.OrdersController [方法名] findAll');
INSERT INTO `ssm_pa_log` VALUES (243, '2020-01-19 17:00:25', 'icanci', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 10, '[类名] cn.icanci.tourism.controller.OrdersController [方法名] findAll');

-- ----------------------------
-- Table structure for ssm_pa_member
-- ----------------------------
DROP TABLE IF EXISTS `ssm_pa_member`;
CREATE TABLE `ssm_pa_member`  (
  `id` bigint(32) NOT NULL AUTO_INCREMENT COMMENT '无意义,主键id',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '姓名',
  `nickName` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '昵称',
  `phoneNum` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '电话号码',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ssm_pa_member
-- ----------------------------
INSERT INTO `ssm_pa_member` VALUES (1, '戴非', 'DF', '15252067235', 'daifei@163.com');
INSERT INTO `ssm_pa_member` VALUES (2, '吕布', 'LB', '15252067223', 'lvbu@163.com');

-- ----------------------------
-- Table structure for ssm_pa_order_traveller
-- ----------------------------
DROP TABLE IF EXISTS `ssm_pa_order_traveller`;
CREATE TABLE `ssm_pa_order_traveller`  (
  `orderId` bigint(32) NOT NULL COMMENT '订单id',
  `travellerId` bigint(32) NOT NULL COMMENT '旅客id'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ssm_pa_order_traveller
-- ----------------------------
INSERT INTO `ssm_pa_order_traveller` VALUES (1, 1);
INSERT INTO `ssm_pa_order_traveller` VALUES (1, 2);

-- ----------------------------
-- Table structure for ssm_pa_orders
-- ----------------------------
DROP TABLE IF EXISTS `ssm_pa_orders`;
CREATE TABLE `ssm_pa_orders`  (
  `id` bigint(32) NOT NULL AUTO_INCREMENT COMMENT '无意义,主键id',
  `orderNum` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '订单编号,不为空 唯一',
  `orderTime` timestamp NULL DEFAULT NULL COMMENT '下单时间',
  `peopleCount` int(11) NULL DEFAULT NULL COMMENT '出行人数',
  `orderDesc` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '订单描述(其他信息)',
  `payType` int(11) NULL DEFAULT NULL COMMENT '支付方式(0 支付宝 1 微信 2 其他)',
  `orderStatus` int(11) NULL DEFAULT NULL COMMENT '订单状态(0 未支付 1 已经支付)',
  `productId` int(11) NULL DEFAULT NULL COMMENT '产品 id 外键',
  `memberId` int(11) NULL DEFAULT NULL COMMENT '会员(联系人）id 外键',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ssm_pa_orders
-- ----------------------------
INSERT INTO `ssm_pa_orders` VALUES (1, 'x1205230255', '2020-01-15 08:41:54', 2, '一日旅游', 1, 1, 5, 1);
INSERT INTO `ssm_pa_orders` VALUES (2, 'x1205230255', '2020-02-01 09:50:23', 7, '回家哈哈哈', 1, 1, 1, 1);
INSERT INTO `ssm_pa_orders` VALUES (3, 'x1205230255', '2020-02-09 09:50:42', 4, '嘻嘻嘻', -1, 0, 1, 1);
INSERT INTO `ssm_pa_orders` VALUES (4, 'x1205230255', '2020-01-30 11:51:17', 2, '弯曲', 1, 1, 1, 1);
INSERT INTO `ssm_pa_orders` VALUES (5, 'x1205230255', '2020-01-28 09:51:45', 23, '哈哈哈', 1, 1, 4, 1);
INSERT INTO `ssm_pa_orders` VALUES (6, 'x1205230255', '2020-02-09 09:50:42', 4, '嘻嘻嘻', -1, 0, 1, 1);
INSERT INTO `ssm_pa_orders` VALUES (7, 'x1205230255', '2020-01-28 09:51:45', 23, '哈哈哈', 1, 1, 1, 1);
INSERT INTO `ssm_pa_orders` VALUES (8, 'x1205230255', '2020-01-28 09:51:45', 23, '哈哈哈', -1, 0, 1, 1);
INSERT INTO `ssm_pa_orders` VALUES (9, 'x1205230255', '2020-01-28 09:51:45', 23, '哈哈哈', 1, 1, 1, 1);
INSERT INTO `ssm_pa_orders` VALUES (10, 'x1205230255', '2020-01-28 09:51:45', 23, '哈哈哈', 1, 1, 1, 1);
INSERT INTO `ssm_pa_orders` VALUES (11, 'x1205230255', '2020-01-28 09:51:45', 23, '哈哈哈', -1, 0, 1, 1);
INSERT INTO `ssm_pa_orders` VALUES (12, 'x1205230255', '2020-01-28 09:51:45', 23, '哈哈哈', 1, 1, 1, 1);
INSERT INTO `ssm_pa_orders` VALUES (13, 'x1205230255', '2020-01-28 09:51:45', 23, '哈哈哈', 1, 1, 1, 1);
INSERT INTO `ssm_pa_orders` VALUES (14, 'x1205230255', '2020-01-28 09:51:45', 23, '哈哈哈', 1, 1, 1, 1);
INSERT INTO `ssm_pa_orders` VALUES (15, 'x1205230255', '2020-01-28 09:51:45', 23, '哈哈哈', 1, 1, 1, 1);
INSERT INTO `ssm_pa_orders` VALUES (16, 'x1205230255', '2020-01-28 09:51:45', 23, '哈哈哈', 1, 1, 1, 1);
INSERT INTO `ssm_pa_orders` VALUES (17, 'x1205230255', '2020-01-28 09:51:45', 23, '哈哈哈', 1, 1, 1, 1);
INSERT INTO `ssm_pa_orders` VALUES (18, 'x1205230255', '2020-01-28 09:51:45', 23, '哈哈哈', 1, 1, 1, 1);
INSERT INTO `ssm_pa_orders` VALUES (19, 'x1205230255', '2020-01-28 09:51:45', 23, '哈哈哈', 1, 1, 1, 1);
INSERT INTO `ssm_pa_orders` VALUES (20, 'x1205230255', '2020-01-28 09:51:45', 23, '哈哈哈', 1, 1, 1, 1);
INSERT INTO `ssm_pa_orders` VALUES (21, 'x1205230255', '2020-01-28 09:51:45', 23, '哈哈哈', 1, 1, 1, 1);
INSERT INTO `ssm_pa_orders` VALUES (22, 'x1205230255', '2020-01-28 09:51:45', 23, '哈哈哈', 1, 1, 1, 1);
INSERT INTO `ssm_pa_orders` VALUES (23, 'x1205230255', '2020-01-28 09:51:45', 23, '哈哈哈', 1, 1, 1, 1);
INSERT INTO `ssm_pa_orders` VALUES (24, 'x1205230255', '2020-01-28 09:51:45', 23, '哈哈哈', 1, 1, 1, 1);
INSERT INTO `ssm_pa_orders` VALUES (25, 'x1205230255', '2020-01-28 09:51:45', 23, '哈哈哈', 1, 1, 1, 1);
INSERT INTO `ssm_pa_orders` VALUES (26, 'x1205230255', '2020-01-28 09:51:45', 23, '哈哈哈', 1, 1, 1, 1);
INSERT INTO `ssm_pa_orders` VALUES (27, '0x1234645', '2020-01-19 15:50:21', 4, 'test insert', 0, 1, 1, 1);
INSERT INTO `ssm_pa_orders` VALUES (28, '0x1234645', '2020-01-19 16:57:58', 12, '用户态度很好 就是不付钱怎么搞?', -1, 0, 1, 1);

-- ----------------------------
-- Table structure for ssm_pa_permission
-- ----------------------------
DROP TABLE IF EXISTS `ssm_pa_permission`;
CREATE TABLE `ssm_pa_permission`  (
  `id` bigint(32) NOT NULL AUTO_INCREMENT COMMENT '无意义,主键id',
  `permissionName` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '权限名',
  `url` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '资源路径',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ssm_pa_permission
-- ----------------------------
INSERT INTO `ssm_pa_permission` VALUES (1, 'user find All', '/user/findAll.do');
INSERT INTO `ssm_pa_permission` VALUES (2, 'user find By one', '/user/findById.do');
INSERT INTO `ssm_pa_permission` VALUES (3, 'insert into user info', '/user/findAll.do');
INSERT INTO `ssm_pa_permission` VALUES (4, 'show all roles', '/role/findAll.do');
INSERT INTO `ssm_pa_permission` VALUES (5, 'test ', '/user/findAll.do');

-- ----------------------------
-- Table structure for ssm_pa_product
-- ----------------------------
DROP TABLE IF EXISTS `ssm_pa_product`;
CREATE TABLE `ssm_pa_product`  (
  `id` bigint(32) NOT NULL AUTO_INCREMENT COMMENT '无意义,主键',
  `productNum` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '产品编号,唯一不为空',
  `productName` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '产品名称(路线名称)',
  `cityName` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '出发城市',
  `departureTime` timestamp NULL DEFAULT NULL COMMENT '出发时间',
  `productPrice` decimal(10, 2) NULL DEFAULT NULL COMMENT '产品价格',
  `productDesc` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '产品描述',
  `productStatus` int(11) NULL DEFAULT NULL COMMENT '状态(0 关闭 1 开启)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ssm_pa_product
-- ----------------------------
INSERT INTO `ssm_pa_product` VALUES (1, 'a004', '上海三日游', '浦东新区', '2020-03-19 14:34:00', 87492.00, '经济之领头羊', 1);
INSERT INTO `ssm_pa_product` VALUES (4, 'a005', '西安一日游', '西安', '2020-04-07 15:00:45', 892.00, '哈哈,西安欢迎你的到来', 1);
INSERT INTO `ssm_pa_product` VALUES (5, 'a002', '南京一日游', '南京', '2020-04-19 23:00:00', 892.00, '美丽南京,八代古都', 0);
INSERT INTO `ssm_pa_product` VALUES (19, '0x1231', '镇江一日游', '镇江', '2020-01-17 21:51:00', 15621.00, '哈哈哈啊哈', 0);
INSERT INTO `ssm_pa_product` VALUES (28, 'a009', '镇江一日游', '徐州', '2020-01-30 20:45:00', 15621.00, '加油 ', 0);
INSERT INTO `ssm_pa_product` VALUES (29, 'a009', '镇江一日游', '镇江', '2020-06-03 18:50:00', 12152.00, '镇江一日游玩', 0);
INSERT INTO `ssm_pa_product` VALUES (31, 'haxi1245125', '泰州十日游', '镇江', '2020-01-29 18:50:00', 132521.00, '去泰州找小朋友玩', 1);

-- ----------------------------
-- Table structure for ssm_pa_role
-- ----------------------------
DROP TABLE IF EXISTS `ssm_pa_role`;
CREATE TABLE `ssm_pa_role`  (
  `id` bigint(32) NOT NULL AUTO_INCREMENT COMMENT '无意义,主键id',
  `roleName` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '角色名',
  `roleDesc` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '角色描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ssm_pa_role
-- ----------------------------
INSERT INTO `ssm_pa_role` VALUES (1, 'ROLE_USER', '用户角色');
INSERT INTO `ssm_pa_role` VALUES (2, 'ROLE_ADMIN', '管理员角色');
INSERT INTO `ssm_pa_role` VALUES (4, 'MAIN', '主函数');
INSERT INTO `ssm_pa_role` VALUES (5, 'TEST', '测试新建角色');

-- ----------------------------
-- Table structure for ssm_pa_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `ssm_pa_role_permission`;
CREATE TABLE `ssm_pa_role_permission`  (
  `permissionId` bigint(32) NULL DEFAULT NULL COMMENT 'permission 权限的 id',
  `roleId` bigint(32) NULL DEFAULT NULL COMMENT 'role 角色的id'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ssm_pa_role_permission
-- ----------------------------
INSERT INTO `ssm_pa_role_permission` VALUES (1, 1);
INSERT INTO `ssm_pa_role_permission` VALUES (1, 2);
INSERT INTO `ssm_pa_role_permission` VALUES (2, 1);
INSERT INTO `ssm_pa_role_permission` VALUES (2, 2);
INSERT INTO `ssm_pa_role_permission` VALUES (2, 3);
INSERT INTO `ssm_pa_role_permission` VALUES (3, 1);
INSERT INTO `ssm_pa_role_permission` VALUES (3, 5);
INSERT INTO `ssm_pa_role_permission` VALUES (4, 5);

-- ----------------------------
-- Table structure for ssm_pa_traveller
-- ----------------------------
DROP TABLE IF EXISTS `ssm_pa_traveller`;
CREATE TABLE `ssm_pa_traveller`  (
  `id` bigint(32) NOT NULL AUTO_INCREMENT COMMENT '无意义,主键id',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '姓名',
  `sex` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '性别',
  `phoneNum` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '手机号码',
  `credentialsType` int(11) NULL DEFAULT NULL COMMENT '证件类型 ( 0 身份证 1 护照 2 军官证 )',
  `credentialsNum` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '证件号码',
  `travellerType` int(11) NULL DEFAULT NULL COMMENT '旅客类型[人群]( 0 成人 1 儿童)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ssm_pa_traveller
-- ----------------------------
INSERT INTO `ssm_pa_traveller` VALUES (1, '戴非', '男', '15252067235', 0, '333323199806044044', 0);
INSERT INTO `ssm_pa_traveller` VALUES (2, '吕布', '男', '15252067223', 0, '441323199811074082', 0);

-- ----------------------------
-- Table structure for ssm_pa_user
-- ----------------------------
DROP TABLE IF EXISTS `ssm_pa_user`;
CREATE TABLE `ssm_pa_user`  (
  `id` bigint(32) NOT NULL AUTO_INCREMENT COMMENT '无意义,主键',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '邮箱,非空,唯一',
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '密码(加密)',
  `phoneNum` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '电话',
  `status` int(11) NULL DEFAULT NULL COMMENT '状态 ( 0 未开启 1 开启 )',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ssm_pa_user
-- ----------------------------
INSERT INTO `ssm_pa_user` VALUES (1, 'icnaci@163.com', 'haxiTable', 'icanci', '15252067235', 0);
INSERT INTO `ssm_pa_user` VALUES (2, 'icancicn@163.com', 'demo', 'icanci', '15252067225', 0);
INSERT INTO `ssm_pa_user` VALUES (3, '123456@qq.com', 'zq', '123', '173725888461', 0);
INSERT INTO `ssm_pa_user` VALUES (4, '123456@qq.com', 'icanci', '$2a$10$v4Uyat1bSkkmwIwvCn0p8Ou.BK9B8gqEpYE2gNWaD8x9fisQVW.MC', '173725888461', 1);
INSERT INTO `ssm_pa_user` VALUES (5, '789@icanci.cn', 'test', '$2a$10$CcCQfyph7Uo/J5qKtcogke4IPuFnPUbm.nBmu/.Crc1m1hN4aLmyK', '17385588461', 1);

-- ----------------------------
-- Table structure for ssm_pa_users_role
-- ----------------------------
DROP TABLE IF EXISTS `ssm_pa_users_role`;
CREATE TABLE `ssm_pa_users_role`  (
  `userId` bigint(32) NULL DEFAULT NULL COMMENT 'user 的 id',
  `roleId` bigint(32) NULL DEFAULT NULL COMMENT 'role 的 id'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ssm_pa_users_role
-- ----------------------------
INSERT INTO `ssm_pa_users_role` VALUES (1, 1);
INSERT INTO `ssm_pa_users_role` VALUES (2, 1);
INSERT INTO `ssm_pa_users_role` VALUES (1, 2);
INSERT INTO `ssm_pa_users_role` VALUES (4, 1);
INSERT INTO `ssm_pa_users_role` VALUES (4, 2);
INSERT INTO `ssm_pa_users_role` VALUES (2, 3);
INSERT INTO `ssm_pa_users_role` VALUES (3, 1);
INSERT INTO `ssm_pa_users_role` VALUES (3, 2);
INSERT INTO `ssm_pa_users_role` VALUES (3, 3);
INSERT INTO `ssm_pa_users_role` VALUES (2, 2);
INSERT INTO `ssm_pa_users_role` VALUES (5, 2);
INSERT INTO `ssm_pa_users_role` VALUES (5, 5);

SET FOREIGN_KEY_CHECKS = 1;
