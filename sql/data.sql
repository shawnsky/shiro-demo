-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        5.5.13 - MySQL Community Server (GPL)
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  9.4.0.5174
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 正在导出表  shiro.sys_permissions 的数据：~3 rows (大约)
DELETE FROM `sys_permissions`;
/*!40000 ALTER TABLE `sys_permissions` DISABLE KEYS */;
INSERT INTO `sys_permissions` (`id`, `permission`, `description`, `available`) VALUES
	(1, 'user:create', '添加用户', 1),
	(2, 'user:update', '修改用户', 1),
	(3, 'user:view', '查看用户', 1);
/*!40000 ALTER TABLE `sys_permissions` ENABLE KEYS */;

-- 正在导出表  shiro.sys_roles 的数据：~2 rows (大约)
DELETE FROM `sys_roles`;
/*!40000 ALTER TABLE `sys_roles` DISABLE KEYS */;
INSERT INTO `sys_roles` (`id`, `role`, `description`, `available`) VALUES
	(1, 'admin', '管理员', 1),
	(2, 'customer', '客户', 1);
/*!40000 ALTER TABLE `sys_roles` ENABLE KEYS */;

-- 正在导出表  shiro.sys_roles_permissions 的数据：~4 rows (大约)
DELETE FROM `sys_roles_permissions`;
/*!40000 ALTER TABLE `sys_roles_permissions` DISABLE KEYS */;
INSERT INTO `sys_roles_permissions` (`role_id`, `permission_id`) VALUES
	(1, 1),
	(1, 2),
	(1, 3),
	(2, 3);
/*!40000 ALTER TABLE `sys_roles_permissions` ENABLE KEYS */;

-- 正在导出表  shiro.sys_users 的数据：~2 rows (大约)
DELETE FROM `sys_users`;
/*!40000 ALTER TABLE `sys_users` DISABLE KEYS */;
INSERT INTO `sys_users` (`id`, `username`, `password`, `salt`, `locked`) VALUES
	(1, 'David', '123', '123', 0),
	(2, 'Jet', '123', '123', 0);
/*!40000 ALTER TABLE `sys_users` ENABLE KEYS */;

-- 正在导出表  shiro.sys_users_roles 的数据：~2 rows (大约)
DELETE FROM `sys_users_roles`;
/*!40000 ALTER TABLE `sys_users_roles` DISABLE KEYS */;
INSERT INTO `sys_users_roles` (`user_id`, `role_id`) VALUES
	(1, 1),
	(2, 2);
/*!40000 ALTER TABLE `sys_users_roles` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
