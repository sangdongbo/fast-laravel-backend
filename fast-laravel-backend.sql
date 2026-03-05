/*
 Navicat Premium Dump SQL

 Source Server         : 本地Mysql
 Source Server Type    : MySQL
 Source Server Version : 80012 (8.0.12)
 Source Host           : localhost:3306
 Source Schema         : fast-laravel-backend

 Target Server Type    : MySQL
 Target Server Version : 80012 (8.0.12)
 File Encoding         : 65001

 Date: 05/03/2026 10:15:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for activity_log
-- ----------------------------
DROP TABLE IF EXISTS `activity_log`;
CREATE TABLE `activity_log`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `log_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `event` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `subject_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `causer_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `causer_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `properties` json NULL,
  `batch_uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `subject`(`subject_type` ASC, `subject_id` ASC) USING BTREE,
  INDEX `causer`(`causer_type` ASC, `causer_id` ASC) USING BTREE,
  INDEX `activity_log_log_name_index`(`log_name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of activity_log
-- ----------------------------
INSERT INTO `activity_log` VALUES (1, 'default', 'Menu has been created', 'BalajiDharma\\LaravelMenu\\Models\\Menu', 'created', 1, NULL, NULL, '{\"attributes\": {\"id\": 1, \"name\": \"Admin\", \"description\": \"Admin Menu\", \"machine_name\": \"admin\"}}', NULL, '2026-03-05 02:12:13', '2026-03-05 02:12:13');
INSERT INTO `activity_log` VALUES (2, 'default', 'MenuItem has been created', 'BalajiDharma\\LaravelMenu\\Models\\MenuItem', 'created', 1, NULL, NULL, '{\"attributes\": {\"id\": 1, \"uri\": \"/<admin>\", \"icon\": \"M13,3V9H21V3M13,21H21V11H13M3,21H11V15H3M3,13H11V3H3V13Z\", \"name\": \"仪表板\", \"weight\": 0, \"enabled\": true, \"menu_id\": 1, \"parent_id\": null, \"description\": null}}', NULL, '2026-03-05 02:12:13', '2026-03-05 02:12:13');
INSERT INTO `activity_log` VALUES (3, 'default', 'MenuItem has been created', 'BalajiDharma\\LaravelMenu\\Models\\MenuItem', 'created', 2, NULL, NULL, '{\"attributes\": {\"id\": 2, \"uri\": \"/<admin>/permission\", \"icon\": \"M12,12H19C18.47,16.11 15.72,19.78 12,20.92V12H5V6.3L12,3.19M12,1L3,5V11C3,16.55 6.84,21.73 12,23C17.16,21.73 21,16.55 21,11V5L12,1Z\", \"name\": \"权限\", \"weight\": 1, \"enabled\": true, \"menu_id\": 1, \"parent_id\": null, \"description\": null}}', NULL, '2026-03-05 02:12:13', '2026-03-05 02:12:13');
INSERT INTO `activity_log` VALUES (4, 'default', 'MenuItem has been created', 'BalajiDharma\\LaravelMenu\\Models\\MenuItem', 'created', 3, NULL, NULL, '{\"attributes\": {\"id\": 3, \"uri\": \"/<admin>/role\", \"icon\": \"M12,5.5A3.5,3.5 0 0,1 15.5,9A3.5,3.5 0 0,1 12,12.5A3.5,3.5 0 0,1 8.5,9A3.5,3.5 0 0,1 12,5.5M5,8C5.56,8 6.08,8.15 6.53,8.42C6.38,9.85 6.8,11.27 7.66,12.38C7.16,13.34 6.16,14 5,14A3,3 0 0,1 2,11A3,3 0 0,1 5,8M19,8A3,3 0 0,1 22,11A3,3 0 0,1 19,14C17.84,14 16.84,13.34 16.34,12.38C17.2,11.27 17.62,9.85 17.47,8.42C17.92,8.15 18.44,8 19,8M5.5,18.25C5.5,16.18 8.41,14.5 12,14.5C15.59,14.5 18.5,16.18 18.5,18.25V20H5.5V18.25M0,20V18.5C0,17.11 1.89,15.94 4.45,15.6C3.86,16.28 3.5,17.22 3.5,18.25V20H0M24,20H20.5V18.25C20.5,17.22 20.14,16.28 19.55,15.6C22.11,15.94 24,17.11 24,18.5V20Z\", \"name\": \"角色\", \"weight\": 2, \"enabled\": true, \"menu_id\": 1, \"parent_id\": null, \"description\": null}}', NULL, '2026-03-05 02:12:13', '2026-03-05 02:12:13');
INSERT INTO `activity_log` VALUES (5, 'default', 'MenuItem has been created', 'BalajiDharma\\LaravelMenu\\Models\\MenuItem', 'created', 4, NULL, NULL, '{\"attributes\": {\"id\": 4, \"uri\": \"/<admin>/user\", \"icon\": \"M16 17V19H2V17S2 13 9 13 16 17 16 17M12.5 7.5A3.5 3.5 0 1 0 9 11A3.5 3.5 0 0 0 12.5 7.5M15.94 13A5.32 5.32 0 0 1 18 17V19H22V17S22 13.37 15.94 13M15 4A3.39 3.39 0 0 0 13.07 4.59A5 5 0 0 1 13.07 10.41A3.39 3.39 0 0 0 15 11A3.5 3.5 0 0 0 15 4Z\", \"name\": \"用户\", \"weight\": 3, \"enabled\": true, \"menu_id\": 1, \"parent_id\": null, \"description\": null}}', NULL, '2026-03-05 02:12:13', '2026-03-05 02:12:13');
INSERT INTO `activity_log` VALUES (6, 'default', 'MenuItem has been created', 'BalajiDharma\\LaravelMenu\\Models\\MenuItem', 'created', 5, NULL, NULL, '{\"attributes\": {\"id\": 5, \"uri\": \"/<admin>/menu\", \"icon\": \"M3,6H21V8H3V6M3,11H21V13H3V11M3,16H21V18H3V16Z\", \"name\": \"菜单\", \"weight\": 4, \"enabled\": true, \"menu_id\": 1, \"parent_id\": null, \"description\": null}}', NULL, '2026-03-05 02:12:13', '2026-03-05 02:12:13');
INSERT INTO `activity_log` VALUES (7, 'default', 'MenuItem has been created', 'BalajiDharma\\LaravelMenu\\Models\\MenuItem', 'created', 6, NULL, NULL, '{\"attributes\": {\"id\": 6, \"uri\": \"/<admin>/category/type\", \"icon\": \"M5 3A2 2 0 0 0 3 5H5M7 3V5H9V3M11 3V5H13V3M15 3V5H17V3M19 3V5H21A2 2 0 0 0 19 3M3 7V9H5V7M7 7V11H11V7M13 7V11H17V7M19 7V9H21V7M3 11V13H5V11M19 11V13H21V11M7 13V17H11V13M13 13V17H17V13M3 15V17H5V15M19 15V17H21V15M3 19A2 2 0 0 0 5 21V19M7 19V21H9V19M11 19V21H13V19M15 19V21H17V19M19 19V21A2 2 0 0 0 21 19Z\", \"name\": \"分类\", \"weight\": 4, \"enabled\": true, \"menu_id\": 1, \"parent_id\": null, \"description\": null}}', NULL, '2026-03-05 02:12:13', '2026-03-05 02:12:13');
INSERT INTO `activity_log` VALUES (8, 'default', 'MenuItem has been created', 'BalajiDharma\\LaravelMenu\\Models\\MenuItem', 'created', 7, NULL, NULL, '{\"attributes\": {\"id\": 7, \"uri\": \"/<admin>/media\", \"icon\": \"M9 13V5C9 3.9 9.9 3 11 3H20C21.1 3 22 3.9 22 5V11H18.57L17.29 9.26C17.23 9.17 17.11 9.17 17.05 9.26L15.06 12C15 12.06 14.88 12.07 14.82 12L13.39 10.25C13.33 10.18 13.22 10.18 13.16 10.25L11.05 12.91C10.97 13 11.04 13.15 11.16 13.15H17.5V15H11C9.89 15 9 14.11 9 13M6 22V21H4V22H2V2H4V3H6V2H8.39C7.54 2.74 7 3.8 7 5V13C7 15.21 8.79 17 11 17H15.7C14.67 17.83 14 19.08 14 20.5C14 21.03 14.11 21.53 14.28 22H6M4 7H6V5H4V7M4 11H6V9H4V11M4 15H6V13H4V15M6 19V17H4V19H6M23 13V15H21V20.5C21 21.88 19.88 23 18.5 23S16 21.88 16 20.5 17.12 18 18.5 18C18.86 18 19.19 18.07 19.5 18.21V13H23Z\", \"name\": \"媒体\", \"weight\": 5, \"enabled\": true, \"menu_id\": 1, \"parent_id\": null, \"description\": null}}', NULL, '2026-03-05 02:12:13', '2026-03-05 02:12:13');
INSERT INTO `activity_log` VALUES (9, 'default', 'MenuItem has been created', 'BalajiDharma\\LaravelMenu\\Models\\MenuItem', 'created', 8, NULL, NULL, '{\"attributes\": {\"id\": 8, \"uri\": \"/<admin>/thread\", \"icon\": \"M17,12V3A1,1 0 0,0 16,2H3A1,1 0 0,0 2,3V17L6,13H16A1,1 0 0,0 17,12M21,6H19V15H6V17A1,1 0 0,0 7,18H18L22,22V7A1,1 0 0,0 21,6Z\", \"name\": \"论坛主题\", \"weight\": 6, \"enabled\": true, \"menu_id\": 1, \"parent_id\": null, \"description\": null}}', NULL, '2026-03-05 02:12:13', '2026-03-05 02:12:13');
INSERT INTO `activity_log` VALUES (10, 'default', 'MenuItem has been created', 'BalajiDharma\\LaravelMenu\\Models\\MenuItem', 'created', 9, NULL, NULL, '{\"attributes\": {\"id\": 9, \"uri\": \"/<admin>/comment\", \"icon\": \"M12,23A1,1 0 0,1 11,22V19H7A2,2 0 0,1 5,17V7A2,2 0 0,1 7,5H21A2,2 0 0,1 23,7V17A2,2 0 0,1 21,19H16.9L13.2,22.71C13,22.89 12.76,23 12.5,23H12M13,17V20.08L16.08,17H21V7H7V17H13M3,15H1V3A2,2 0 0,1 3,1H19V3H3V15M9,9H19V11H9V9M9,13H17V15H9V13Z\", \"name\": \"评论\", \"weight\": 7, \"enabled\": true, \"menu_id\": 1, \"parent_id\": null, \"description\": null}}', NULL, '2026-03-05 02:12:13', '2026-03-05 02:12:13');
INSERT INTO `activity_log` VALUES (11, 'default', 'MenuItem has been created', 'BalajiDharma\\LaravelMenu\\Models\\MenuItem', 'created', 10, NULL, NULL, '{\"attributes\": {\"id\": 10, \"uri\": \"/<admin>/activitylog\", \"icon\": \"M5.314 1.256a.75.75 0 01-.07 1.058L3.889 3.5l1.355 1.186a.75.75 0 11-.988 1.128l-2-1.75a.75.75 0 010-1.128l2-1.75a.75.75 0 011.058.07zM7.186 1.256a.75.75 0 00.07 1.058L8.611 3.5 7.256 4.686a.75.75 0 10.988 1.128l2-1.75a.75.75 0 000-1.128l-2-1.75a.75.75 0 00-1.058.07zM2.75 7.5a.75.75 0 000 1.5h10.5a.75.75 0 000-1.5H2.75zM2 11.25a.75.75 0 01.75-.75h10.5a.75.75 0 010 1.5H2.75a.75.75 0 01-.75-.75zM2.75 13.5a.75.75 0 000 1.5h6.5a.75.75 0 000-1.5h-6.5z\", \"name\": \"活动日志\", \"weight\": 8, \"enabled\": true, \"menu_id\": 1, \"parent_id\": null, \"description\": null}}', NULL, '2026-03-05 02:12:14', '2026-03-05 02:12:14');
INSERT INTO `activity_log` VALUES (12, 'default', 'MenuItem has been created', 'BalajiDharma\\LaravelMenu\\Models\\MenuItem', 'created', 11, NULL, NULL, '{\"attributes\": {\"id\": 11, \"uri\": \"/<admin>/attribute\", \"icon\": \"M21 18v1c0 1.1-.9 2-2 2H5c-1.11 0-2-.9-2-2V5c0-1.1.89-2 2-2h14c1.1 0 2 .9 2 2v1h-9c-1.11 0-2 .9-2 2v8c0 1.1.89 2 2 2h9zm-9-2h10V8H12v8zm4-2.5c-.83 0-1.5-.67-1.5-1.5s.67-1.5 1.5-1.5 1.5.67 1.5 1.5-.67 1.5-1.5 1.5z\", \"name\": \"属性\", \"weight\": 9, \"enabled\": true, \"menu_id\": 1, \"parent_id\": null, \"description\": null}}', NULL, '2026-03-05 02:12:14', '2026-03-05 02:12:14');
INSERT INTO `activity_log` VALUES (13, 'default', 'MenuItem has been created', 'BalajiDharma\\LaravelMenu\\Models\\MenuItem', 'created', 12, NULL, NULL, '{\"attributes\": {\"id\": 12, \"uri\": \"/<admin>/reaction\", \"icon\": \"M1 21h4V9H1v12zm22-11c0-1.1-.9-2-2-2h-6.31l.95-4.57.03-.32c0-.41-.17-.79-.44-1.06L14.17 1 7.59 7.59C7.22 7.95 7 8.45 7 9v10c0 1.1.9 2 2 2h9c.83 0 1.54-.5 1.84-1.22l3.02-7.05c.09-.23.14-.47.14-.73v-1.91l-.01-.01L23 10z\", \"name\": \"反应\", \"weight\": 10, \"enabled\": true, \"menu_id\": 1, \"parent_id\": null, \"description\": null}}', NULL, '2026-03-05 02:12:14', '2026-03-05 02:12:14');
INSERT INTO `activity_log` VALUES (14, 'default', 'CategoryType has been created', 'BalajiDharma\\LaravelCategory\\Models\\CategoryType', 'created', 1, NULL, NULL, '{\"attributes\": {\"id\": 1, \"name\": \"Category\", \"is_flat\": false, \"description\": \"Main Category\", \"machine_name\": \"category\"}}', NULL, '2026-03-05 02:12:14', '2026-03-05 02:12:14');
INSERT INTO `activity_log` VALUES (15, 'default', 'CategoryType has been created', 'BalajiDharma\\LaravelCategory\\Models\\CategoryType', 'created', 2, NULL, NULL, '{\"attributes\": {\"id\": 2, \"name\": \"Tag\", \"is_flat\": true, \"description\": \"Site Tags\", \"machine_name\": \"tag\"}}', NULL, '2026-03-05 02:12:14', '2026-03-05 02:12:14');
INSERT INTO `activity_log` VALUES (16, 'default', 'CategoryType has been created', 'BalajiDharma\\LaravelCategory\\Models\\CategoryType', 'created', 3, NULL, NULL, '{\"attributes\": {\"id\": 3, \"name\": \"Admin Tag\", \"is_flat\": true, \"description\": \"Admin Tags\", \"machine_name\": \"admin_tag\"}}', NULL, '2026-03-05 02:12:14', '2026-03-05 02:12:14');
INSERT INTO `activity_log` VALUES (17, 'default', 'CategoryType has been created', 'BalajiDharma\\LaravelCategory\\Models\\CategoryType', 'created', 4, NULL, NULL, '{\"attributes\": {\"id\": 4, \"name\": \"Forum Category\", \"is_flat\": false, \"description\": \"Forum Category\", \"machine_name\": \"forum_category\"}}', NULL, '2026-03-05 02:12:14', '2026-03-05 02:12:14');
INSERT INTO `activity_log` VALUES (18, 'default', 'CategoryType has been created', 'BalajiDharma\\LaravelCategory\\Models\\CategoryType', 'created', 5, NULL, NULL, '{\"attributes\": {\"id\": 5, \"name\": \"Forum Tag\", \"is_flat\": true, \"description\": \"Forum Tags\", \"machine_name\": \"forum_tag\"}}', NULL, '2026-03-05 02:12:14', '2026-03-05 02:12:14');
INSERT INTO `activity_log` VALUES (19, 'default', 'Category has been created', 'BalajiDharma\\LaravelCategory\\Models\\Category', 'created', 1, NULL, NULL, '{\"attributes\": {\"id\": 1, \"icon\": null, \"name\": \"General\", \"slug\": \"general\", \"color\": null, \"weight\": 1, \"enabled\": true, \"parent_id\": null, \"description\": \"General Forum Category\", \"category_type_id\": 4}}', NULL, '2026-03-05 02:12:14', '2026-03-05 02:12:14');

-- ----------------------------
-- Table structure for attributes
-- ----------------------------
DROP TABLE IF EXISTS `attributes`;
CREATE TABLE `attributes`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `data_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'string',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `attributable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attributable_id` bigint(20) UNSIGNED NOT NULL,
  `weight` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `attributes_unique`(`name` ASC, `attributable_type` ASC, `attributable_id` ASC) USING BTREE,
  INDEX `attributes_attributable_type_attributable_id_index`(`attributable_type` ASC, `attributable_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of attributes
-- ----------------------------

-- ----------------------------
-- Table structure for cache
-- ----------------------------
DROP TABLE IF EXISTS `cache`;
CREATE TABLE `cache`  (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cache
-- ----------------------------

-- ----------------------------
-- Table structure for cache_locks
-- ----------------------------
DROP TABLE IF EXISTS `cache_locks`;
CREATE TABLE `cache_locks`  (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cache_locks
-- ----------------------------

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_type_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `parent_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `weight` int(11) NOT NULL DEFAULT 0,
  `icon` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `color` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `categories_category_type_id_slug_unique`(`category_type_id` ASC, `slug` ASC) USING BTREE,
  CONSTRAINT `categories_category_type_id_foreign` FOREIGN KEY (`category_type_id`) REFERENCES `category_types` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES (1, 4, 'General', 'general', 'General Forum Category', NULL, 1, NULL, NULL, 1, '2026-03-05 02:12:14', '2026-03-05 02:12:14');

-- ----------------------------
-- Table structure for category_types
-- ----------------------------
DROP TABLE IF EXISTS `category_types`;
CREATE TABLE `category_types`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `machine_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_flat` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `category_types_machine_name_unique`(`machine_name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of category_types
-- ----------------------------
INSERT INTO `category_types` VALUES (1, 'Category', 'Main Category', 'category', 0, '2026-03-05 02:12:14', '2026-03-05 02:12:14');
INSERT INTO `category_types` VALUES (2, 'Tag', 'Site Tags', 'tag', 1, '2026-03-05 02:12:14', '2026-03-05 02:12:14');
INSERT INTO `category_types` VALUES (3, 'Admin Tag', 'Admin Tags', 'admin_tag', 1, '2026-03-05 02:12:14', '2026-03-05 02:12:14');
INSERT INTO `category_types` VALUES (4, 'Forum Category', 'Forum Category', 'forum_category', 0, '2026-03-05 02:12:14', '2026-03-05 02:12:14');
INSERT INTO `category_types` VALUES (5, 'Forum Tag', 'Forum Tags', 'forum_tag', 1, '2026-03-05 02:12:14', '2026-03-05 02:12:14');

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `commenter_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `commenter_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `reply_to_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `commentable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `commentable_id` bigint(20) UNSIGNED NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `comments_commenter_type_commenter_id_index`(`commenter_type` ASC, `commenter_id` ASC) USING BTREE,
  INDEX `comments_commentable_type_commentable_id_index`(`commentable_type` ASC, `commentable_id` ASC) USING BTREE,
  INDEX `comments_parent_id_index`(`parent_id` ASC) USING BTREE,
  INDEX `comments_reply_to_id_index`(`reply_to_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of comments
-- ----------------------------

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for job_batches
-- ----------------------------
DROP TABLE IF EXISTS `job_batches`;
CREATE TABLE `job_batches`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `cancelled_at` int(11) NULL DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of job_batches
-- ----------------------------

-- ----------------------------
-- Table structure for jobs
-- ----------------------------
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED NULL DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `jobs_queue_index`(`queue` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of jobs
-- ----------------------------

-- ----------------------------
-- Table structure for media
-- ----------------------------
DROP TABLE IF EXISTS `media`;
CREATE TABLE `media`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `disk` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `directory` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `filename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `aggregate_type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int(10) UNSIGNED NOT NULL,
  `variant_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `original_media_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `alt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `media_disk_directory_filename_extension_unique`(`disk` ASC, `directory` ASC, `filename` ASC, `extension` ASC) USING BTREE,
  INDEX `media_aggregate_type_index`(`aggregate_type` ASC) USING BTREE,
  INDEX `media_original_media_id_foreign`(`original_media_id` ASC) USING BTREE,
  CONSTRAINT `media_original_media_id_foreign` FOREIGN KEY (`original_media_id`) REFERENCES `media` (`id`) ON DELETE SET NULL ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of media
-- ----------------------------

-- ----------------------------
-- Table structure for mediables
-- ----------------------------
DROP TABLE IF EXISTS `mediables`;
CREATE TABLE `mediables`  (
  `media_id` bigint(20) UNSIGNED NOT NULL,
  `mediable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mediable_id` bigint(20) UNSIGNED NOT NULL,
  `tag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`media_id`, `mediable_type`, `mediable_id`, `tag`) USING BTREE,
  INDEX `mediables_mediable_type_mediable_id_index`(`mediable_type` ASC, `mediable_id` ASC) USING BTREE,
  INDEX `mediables_mediable_id_mediable_type_index`(`mediable_id` ASC, `mediable_type` ASC) USING BTREE,
  INDEX `mediables_tag_index`(`tag` ASC) USING BTREE,
  INDEX `mediables_order_index`(`order` ASC) USING BTREE,
  CONSTRAINT `mediables_media_id_foreign` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of mediables
-- ----------------------------

-- ----------------------------
-- Table structure for menu_items
-- ----------------------------
DROP TABLE IF EXISTS `menu_items`;
CREATE TABLE `menu_items`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `menu_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `parent_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `weight` int(11) NOT NULL DEFAULT 0,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `icon` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `menu_items_menu_id_foreign`(`menu_id` ASC) USING BTREE,
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of menu_items
-- ----------------------------
INSERT INTO `menu_items` VALUES (1, 1, '仪表板', '/<admin>', NULL, NULL, 0, 1, 'M13,3V9H21V3M13,21H21V11H13M3,21H11V15H3M3,13H11V3H3V13Z', '2026-03-05 02:12:13', '2026-03-05 02:12:13');
INSERT INTO `menu_items` VALUES (2, 1, '权限', '/<admin>/permission', NULL, NULL, 1, 1, 'M12,12H19C18.47,16.11 15.72,19.78 12,20.92V12H5V6.3L12,3.19M12,1L3,5V11C3,16.55 6.84,21.73 12,23C17.16,21.73 21,16.55 21,11V5L12,1Z', '2026-03-05 02:12:13', '2026-03-05 02:12:13');
INSERT INTO `menu_items` VALUES (3, 1, '角色', '/<admin>/role', NULL, NULL, 2, 1, 'M12,5.5A3.5,3.5 0 0,1 15.5,9A3.5,3.5 0 0,1 12,12.5A3.5,3.5 0 0,1 8.5,9A3.5,3.5 0 0,1 12,5.5M5,8C5.56,8 6.08,8.15 6.53,8.42C6.38,9.85 6.8,11.27 7.66,12.38C7.16,13.34 6.16,14 5,14A3,3 0 0,1 2,11A3,3 0 0,1 5,8M19,8A3,3 0 0,1 22,11A3,3 0 0,1 19,14C17.84,14 16.84,13.34 16.34,12.38C17.2,11.27 17.62,9.85 17.47,8.42C17.92,8.15 18.44,8 19,8M5.5,18.25C5.5,16.18 8.41,14.5 12,14.5C15.59,14.5 18.5,16.18 18.5,18.25V20H5.5V18.25M0,20V18.5C0,17.11 1.89,15.94 4.45,15.6C3.86,16.28 3.5,17.22 3.5,18.25V20H0M24,20H20.5V18.25C20.5,17.22 20.14,16.28 19.55,15.6C22.11,15.94 24,17.11 24,18.5V20Z', '2026-03-05 02:12:13', '2026-03-05 02:12:13');
INSERT INTO `menu_items` VALUES (4, 1, '用户', '/<admin>/user', NULL, NULL, 3, 1, 'M16 17V19H2V17S2 13 9 13 16 17 16 17M12.5 7.5A3.5 3.5 0 1 0 9 11A3.5 3.5 0 0 0 12.5 7.5M15.94 13A5.32 5.32 0 0 1 18 17V19H22V17S22 13.37 15.94 13M15 4A3.39 3.39 0 0 0 13.07 4.59A5 5 0 0 1 13.07 10.41A3.39 3.39 0 0 0 15 11A3.5 3.5 0 0 0 15 4Z', '2026-03-05 02:12:13', '2026-03-05 02:12:13');
INSERT INTO `menu_items` VALUES (5, 1, '菜单', '/<admin>/menu', NULL, NULL, 4, 1, 'M3,6H21V8H3V6M3,11H21V13H3V11M3,16H21V18H3V16Z', '2026-03-05 02:12:13', '2026-03-05 02:12:13');
INSERT INTO `menu_items` VALUES (6, 1, '分类', '/<admin>/category/type', NULL, NULL, 4, 1, 'M5 3A2 2 0 0 0 3 5H5M7 3V5H9V3M11 3V5H13V3M15 3V5H17V3M19 3V5H21A2 2 0 0 0 19 3M3 7V9H5V7M7 7V11H11V7M13 7V11H17V7M19 7V9H21V7M3 11V13H5V11M19 11V13H21V11M7 13V17H11V13M13 13V17H17V13M3 15V17H5V15M19 15V17H21V15M3 19A2 2 0 0 0 5 21V19M7 19V21H9V19M11 19V21H13V19M15 19V21H17V19M19 19V21A2 2 0 0 0 21 19Z', '2026-03-05 02:12:13', '2026-03-05 02:12:13');
INSERT INTO `menu_items` VALUES (7, 1, '媒体', '/<admin>/media', NULL, NULL, 5, 1, 'M9 13V5C9 3.9 9.9 3 11 3H20C21.1 3 22 3.9 22 5V11H18.57L17.29 9.26C17.23 9.17 17.11 9.17 17.05 9.26L15.06 12C15 12.06 14.88 12.07 14.82 12L13.39 10.25C13.33 10.18 13.22 10.18 13.16 10.25L11.05 12.91C10.97 13 11.04 13.15 11.16 13.15H17.5V15H11C9.89 15 9 14.11 9 13M6 22V21H4V22H2V2H4V3H6V2H8.39C7.54 2.74 7 3.8 7 5V13C7 15.21 8.79 17 11 17H15.7C14.67 17.83 14 19.08 14 20.5C14 21.03 14.11 21.53 14.28 22H6M4 7H6V5H4V7M4 11H6V9H4V11M4 15H6V13H4V15M6 19V17H4V19H6M23 13V15H21V20.5C21 21.88 19.88 23 18.5 23S16 21.88 16 20.5 17.12 18 18.5 18C18.86 18 19.19 18.07 19.5 18.21V13H23Z', '2026-03-05 02:12:13', '2026-03-05 02:12:13');
INSERT INTO `menu_items` VALUES (8, 1, '论坛主题', '/<admin>/thread', NULL, NULL, 6, 1, 'M17,12V3A1,1 0 0,0 16,2H3A1,1 0 0,0 2,3V17L6,13H16A1,1 0 0,0 17,12M21,6H19V15H6V17A1,1 0 0,0 7,18H18L22,22V7A1,1 0 0,0 21,6Z', '2026-03-05 02:12:13', '2026-03-05 02:12:13');
INSERT INTO `menu_items` VALUES (9, 1, '评论', '/<admin>/comment', NULL, NULL, 7, 1, 'M12,23A1,1 0 0,1 11,22V19H7A2,2 0 0,1 5,17V7A2,2 0 0,1 7,5H21A2,2 0 0,1 23,7V17A2,2 0 0,1 21,19H16.9L13.2,22.71C13,22.89 12.76,23 12.5,23H12M13,17V20.08L16.08,17H21V7H7V17H13M3,15H1V3A2,2 0 0,1 3,1H19V3H3V15M9,9H19V11H9V9M9,13H17V15H9V13Z', '2026-03-05 02:12:13', '2026-03-05 02:12:13');
INSERT INTO `menu_items` VALUES (10, 1, '活动日志', '/<admin>/activitylog', NULL, NULL, 8, 1, 'M5.314 1.256a.75.75 0 01-.07 1.058L3.889 3.5l1.355 1.186a.75.75 0 11-.988 1.128l-2-1.75a.75.75 0 010-1.128l2-1.75a.75.75 0 011.058.07zM7.186 1.256a.75.75 0 00.07 1.058L8.611 3.5 7.256 4.686a.75.75 0 10.988 1.128l2-1.75a.75.75 0 000-1.128l-2-1.75a.75.75 0 00-1.058.07zM2.75 7.5a.75.75 0 000 1.5h10.5a.75.75 0 000-1.5H2.75zM2 11.25a.75.75 0 01.75-.75h10.5a.75.75 0 010 1.5H2.75a.75.75 0 01-.75-.75zM2.75 13.5a.75.75 0 000 1.5h6.5a.75.75 0 000-1.5h-6.5z', '2026-03-05 02:12:13', '2026-03-05 02:12:13');
INSERT INTO `menu_items` VALUES (11, 1, '属性', '/<admin>/attribute', NULL, NULL, 9, 1, 'M21 18v1c0 1.1-.9 2-2 2H5c-1.11 0-2-.9-2-2V5c0-1.1.89-2 2-2h14c1.1 0 2 .9 2 2v1h-9c-1.11 0-2 .9-2 2v8c0 1.1.89 2 2 2h9zm-9-2h10V8H12v8zm4-2.5c-.83 0-1.5-.67-1.5-1.5s.67-1.5 1.5-1.5 1.5.67 1.5 1.5-.67 1.5-1.5 1.5z', '2026-03-05 02:12:14', '2026-03-05 02:12:14');
INSERT INTO `menu_items` VALUES (12, 1, '反应', '/<admin>/reaction', NULL, NULL, 10, 1, 'M1 21h4V9H1v12zm22-11c0-1.1-.9-2-2-2h-6.31l.95-4.57.03-.32c0-.41-.17-.79-.44-1.06L14.17 1 7.59 7.59C7.22 7.95 7 8.45 7 9v10c0 1.1.9 2 2 2h9c.83 0 1.54-.5 1.84-1.22l3.02-7.05c.09-.23.14-.47.14-.73v-1.91l-.01-.01L23 10z', '2026-03-05 02:12:14', '2026-03-05 02:12:14');

-- ----------------------------
-- Table structure for menus
-- ----------------------------
DROP TABLE IF EXISTS `menus`;
CREATE TABLE `menus`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `machine_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `menus_machine_name_unique`(`machine_name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of menus
-- ----------------------------
INSERT INTO `menus` VALUES (1, 'Admin', 'Admin Menu', 'admin', '2026-03-05 02:12:13', '2026-03-05 02:12:13');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '0001_01_01_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '0001_01_01_000001_create_cache_table', 1);
INSERT INTO `migrations` VALUES (3, '0001_01_01_000002_create_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2016_06_27_000000_create_mediable_tables', 1);
INSERT INTO `migrations` VALUES (5, '2020_10_12_000000_add_variants_to_media', 1);
INSERT INTO `migrations` VALUES (6, '2024_03_19_114651_create_permission_tables', 1);
INSERT INTO `migrations` VALUES (7, '2024_03_30_000000_add_alt_to_media', 1);
INSERT INTO `migrations` VALUES (8, '2026_03_04_090001_create_attributes_tables', 1);
INSERT INTO `migrations` VALUES (9, '2026_03_04_090002_create_category_tables', 1);
INSERT INTO `migrations` VALUES (10, '2026_03_04_090003_create_comment_tables', 1);
INSERT INTO `migrations` VALUES (11, '2026_03_04_090004_create_forum_tables', 1);
INSERT INTO `migrations` VALUES (12, '2026_03_04_090005_create_menu_tables', 1);
INSERT INTO `migrations` VALUES (13, '2026_03_04_090006_create_reaction_tables', 1);
INSERT INTO `migrations` VALUES (14, '2026_03_04_090007_create_viewable_tables', 1);
INSERT INTO `migrations` VALUES (15, '2026_03_04_090008_add_reply_to_id_column_to_comment_table', 1);
INSERT INTO `migrations` VALUES (16, '2026_03_04_090009_create_activity_log_table', 1);
INSERT INTO `migrations` VALUES (17, '2026_03_04_090010_add_batch_uuid_column_to_activity_log_table', 1);
INSERT INTO `migrations` VALUES (18, '2026_03_04_090011_add_event_column_to_activity_log_table', 1);

-- ----------------------------
-- Table structure for model_has_categories
-- ----------------------------
DROP TABLE IF EXISTS `model_has_categories`;
CREATE TABLE `model_has_categories`  (
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `weight` int(11) NOT NULL DEFAULT 0,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `category_type_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`category_id`, `model_id`, `model_type`) USING BTREE,
  INDEX `model_has_categories_model_type_model_id_index`(`model_type` ASC, `model_id` ASC) USING BTREE,
  CONSTRAINT `model_has_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of model_has_categories
-- ----------------------------

-- ----------------------------
-- Table structure for model_has_permissions
-- ----------------------------
DROP TABLE IF EXISTS `model_has_permissions`;
CREATE TABLE `model_has_permissions`  (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`, `model_id`, `model_type`) USING BTREE,
  INDEX `model_has_permissions_model_id_model_type_index`(`model_id` ASC, `model_type` ASC) USING BTREE,
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of model_has_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for model_has_roles
-- ----------------------------
DROP TABLE IF EXISTS `model_has_roles`;
CREATE TABLE `model_has_roles`  (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`role_id`, `model_id`, `model_type`) USING BTREE,
  INDEX `model_has_roles_model_id_model_type_index`(`model_id` ASC, `model_type` ASC) USING BTREE,
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of model_has_roles
-- ----------------------------
INSERT INTO `model_has_roles` VALUES (1, 'App\\Models\\User', 1);
INSERT INTO `model_has_roles` VALUES (1, 'App\\Models\\User', 2);
INSERT INTO `model_has_roles` VALUES (2, 'App\\Models\\User', 3);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 4);

-- ----------------------------
-- Table structure for password_reset_tokens
-- ----------------------------
DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE `password_reset_tokens`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of password_reset_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `permissions_name_guard_name_unique`(`name` ASC, `guard_name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 52 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO `permissions` VALUES (1, 'admin user', 'web', '2026-03-05 02:12:10', '2026-03-05 02:12:10');
INSERT INTO `permissions` VALUES (2, 'permission list', 'web', '2026-03-05 02:12:10', '2026-03-05 02:12:10');
INSERT INTO `permissions` VALUES (3, 'permission create', 'web', '2026-03-05 02:12:10', '2026-03-05 02:12:10');
INSERT INTO `permissions` VALUES (4, 'permission edit', 'web', '2026-03-05 02:12:10', '2026-03-05 02:12:10');
INSERT INTO `permissions` VALUES (5, 'permission delete', 'web', '2026-03-05 02:12:10', '2026-03-05 02:12:10');
INSERT INTO `permissions` VALUES (6, 'role list', 'web', '2026-03-05 02:12:10', '2026-03-05 02:12:10');
INSERT INTO `permissions` VALUES (7, 'role create', 'web', '2026-03-05 02:12:10', '2026-03-05 02:12:10');
INSERT INTO `permissions` VALUES (8, 'role edit', 'web', '2026-03-05 02:12:10', '2026-03-05 02:12:10');
INSERT INTO `permissions` VALUES (9, 'role delete', 'web', '2026-03-05 02:12:10', '2026-03-05 02:12:10');
INSERT INTO `permissions` VALUES (10, 'user list', 'web', '2026-03-05 02:12:10', '2026-03-05 02:12:10');
INSERT INTO `permissions` VALUES (11, 'user create', 'web', '2026-03-05 02:12:10', '2026-03-05 02:12:10');
INSERT INTO `permissions` VALUES (12, 'user edit', 'web', '2026-03-05 02:12:10', '2026-03-05 02:12:10');
INSERT INTO `permissions` VALUES (13, 'user delete', 'web', '2026-03-05 02:12:10', '2026-03-05 02:12:10');
INSERT INTO `permissions` VALUES (14, 'menu list', 'web', '2026-03-05 02:12:10', '2026-03-05 02:12:10');
INSERT INTO `permissions` VALUES (15, 'menu create', 'web', '2026-03-05 02:12:10', '2026-03-05 02:12:10');
INSERT INTO `permissions` VALUES (16, 'menu edit', 'web', '2026-03-05 02:12:10', '2026-03-05 02:12:10');
INSERT INTO `permissions` VALUES (17, 'menu delete', 'web', '2026-03-05 02:12:10', '2026-03-05 02:12:10');
INSERT INTO `permissions` VALUES (18, 'menu.item list', 'web', '2026-03-05 02:12:10', '2026-03-05 02:12:10');
INSERT INTO `permissions` VALUES (19, 'menu.item create', 'web', '2026-03-05 02:12:10', '2026-03-05 02:12:10');
INSERT INTO `permissions` VALUES (20, 'menu.item edit', 'web', '2026-03-05 02:12:10', '2026-03-05 02:12:10');
INSERT INTO `permissions` VALUES (21, 'menu.item delete', 'web', '2026-03-05 02:12:10', '2026-03-05 02:12:10');
INSERT INTO `permissions` VALUES (22, 'category list', 'web', '2026-03-05 02:12:10', '2026-03-05 02:12:10');
INSERT INTO `permissions` VALUES (23, 'category create', 'web', '2026-03-05 02:12:10', '2026-03-05 02:12:10');
INSERT INTO `permissions` VALUES (24, 'category edit', 'web', '2026-03-05 02:12:10', '2026-03-05 02:12:10');
INSERT INTO `permissions` VALUES (25, 'category delete', 'web', '2026-03-05 02:12:10', '2026-03-05 02:12:10');
INSERT INTO `permissions` VALUES (26, 'category.type list', 'web', '2026-03-05 02:12:10', '2026-03-05 02:12:10');
INSERT INTO `permissions` VALUES (27, 'category.type create', 'web', '2026-03-05 02:12:10', '2026-03-05 02:12:10');
INSERT INTO `permissions` VALUES (28, 'category.type edit', 'web', '2026-03-05 02:12:10', '2026-03-05 02:12:10');
INSERT INTO `permissions` VALUES (29, 'category.type delete', 'web', '2026-03-05 02:12:10', '2026-03-05 02:12:10');
INSERT INTO `permissions` VALUES (30, 'media list', 'web', '2026-03-05 02:12:10', '2026-03-05 02:12:10');
INSERT INTO `permissions` VALUES (31, 'media create', 'web', '2026-03-05 02:12:10', '2026-03-05 02:12:10');
INSERT INTO `permissions` VALUES (32, 'media edit', 'web', '2026-03-05 02:12:10', '2026-03-05 02:12:10');
INSERT INTO `permissions` VALUES (33, 'media delete', 'web', '2026-03-05 02:12:10', '2026-03-05 02:12:10');
INSERT INTO `permissions` VALUES (34, 'comment list', 'web', '2026-03-05 02:12:10', '2026-03-05 02:12:10');
INSERT INTO `permissions` VALUES (35, 'comment create', 'web', '2026-03-05 02:12:10', '2026-03-05 02:12:10');
INSERT INTO `permissions` VALUES (36, 'comment edit', 'web', '2026-03-05 02:12:10', '2026-03-05 02:12:10');
INSERT INTO `permissions` VALUES (37, 'comment delete', 'web', '2026-03-05 02:12:10', '2026-03-05 02:12:10');
INSERT INTO `permissions` VALUES (38, 'thread list', 'web', '2026-03-05 02:12:10', '2026-03-05 02:12:10');
INSERT INTO `permissions` VALUES (39, 'thread create', 'web', '2026-03-05 02:12:10', '2026-03-05 02:12:10');
INSERT INTO `permissions` VALUES (40, 'thread edit', 'web', '2026-03-05 02:12:10', '2026-03-05 02:12:10');
INSERT INTO `permissions` VALUES (41, 'thread delete', 'web', '2026-03-05 02:12:10', '2026-03-05 02:12:10');
INSERT INTO `permissions` VALUES (42, 'activitylog list', 'web', '2026-03-05 02:12:10', '2026-03-05 02:12:10');
INSERT INTO `permissions` VALUES (43, 'activitylog delete', 'web', '2026-03-05 02:12:10', '2026-03-05 02:12:10');
INSERT INTO `permissions` VALUES (44, 'attribute list', 'web', '2026-03-05 02:12:10', '2026-03-05 02:12:10');
INSERT INTO `permissions` VALUES (45, 'attribute create', 'web', '2026-03-05 02:12:10', '2026-03-05 02:12:10');
INSERT INTO `permissions` VALUES (46, 'attribute edit', 'web', '2026-03-05 02:12:10', '2026-03-05 02:12:10');
INSERT INTO `permissions` VALUES (47, 'attribute delete', 'web', '2026-03-05 02:12:10', '2026-03-05 02:12:10');
INSERT INTO `permissions` VALUES (48, 'reaction list', 'web', '2026-03-05 02:12:10', '2026-03-05 02:12:10');
INSERT INTO `permissions` VALUES (49, 'reaction create', 'web', '2026-03-05 02:12:10', '2026-03-05 02:12:10');
INSERT INTO `permissions` VALUES (50, 'reaction edit', 'web', '2026-03-05 02:12:10', '2026-03-05 02:12:10');
INSERT INTO `permissions` VALUES (51, 'reaction delete', 'web', '2026-03-05 02:12:10', '2026-03-05 02:12:10');

-- ----------------------------
-- Table structure for reactions
-- ----------------------------
DROP TABLE IF EXISTS `reactions`;
CREATE TABLE `reactions`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `reactor_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reactor_id` bigint(20) UNSIGNED NOT NULL,
  `reaction_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reaction_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` int(11) NOT NULL,
  `reactable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reactable_id` bigint(20) UNSIGNED NOT NULL,
  `comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `reactions_reactor_type_reactor_id_index`(`reactor_type` ASC, `reactor_id` ASC) USING BTREE,
  INDEX `reactions_reactable_type_reactable_id_index`(`reactable_type` ASC, `reactable_id` ASC) USING BTREE,
  INDEX `reaction_type_name_index`(`reaction_type` ASC, `reaction_name` ASC, `reactable_id` ASC, `reactable_type` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of reactions
-- ----------------------------

-- ----------------------------
-- Table structure for role_has_permissions
-- ----------------------------
DROP TABLE IF EXISTS `role_has_permissions`;
CREATE TABLE `role_has_permissions`  (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`, `role_id`) USING BTREE,
  INDEX `role_has_permissions_role_id_foreign`(`role_id` ASC) USING BTREE,
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of role_has_permissions
-- ----------------------------
INSERT INTO `role_has_permissions` VALUES (1, 2);
INSERT INTO `role_has_permissions` VALUES (2, 2);
INSERT INTO `role_has_permissions` VALUES (3, 2);
INSERT INTO `role_has_permissions` VALUES (4, 2);
INSERT INTO `role_has_permissions` VALUES (5, 2);
INSERT INTO `role_has_permissions` VALUES (6, 2);
INSERT INTO `role_has_permissions` VALUES (7, 2);
INSERT INTO `role_has_permissions` VALUES (8, 2);
INSERT INTO `role_has_permissions` VALUES (9, 2);
INSERT INTO `role_has_permissions` VALUES (10, 2);
INSERT INTO `role_has_permissions` VALUES (11, 2);
INSERT INTO `role_has_permissions` VALUES (12, 2);
INSERT INTO `role_has_permissions` VALUES (13, 2);
INSERT INTO `role_has_permissions` VALUES (14, 2);
INSERT INTO `role_has_permissions` VALUES (15, 2);
INSERT INTO `role_has_permissions` VALUES (16, 2);
INSERT INTO `role_has_permissions` VALUES (17, 2);
INSERT INTO `role_has_permissions` VALUES (18, 2);
INSERT INTO `role_has_permissions` VALUES (19, 2);
INSERT INTO `role_has_permissions` VALUES (20, 2);
INSERT INTO `role_has_permissions` VALUES (21, 2);
INSERT INTO `role_has_permissions` VALUES (22, 2);
INSERT INTO `role_has_permissions` VALUES (23, 2);
INSERT INTO `role_has_permissions` VALUES (24, 2);
INSERT INTO `role_has_permissions` VALUES (25, 2);
INSERT INTO `role_has_permissions` VALUES (26, 2);
INSERT INTO `role_has_permissions` VALUES (27, 2);
INSERT INTO `role_has_permissions` VALUES (28, 2);
INSERT INTO `role_has_permissions` VALUES (29, 2);
INSERT INTO `role_has_permissions` VALUES (30, 2);
INSERT INTO `role_has_permissions` VALUES (31, 2);
INSERT INTO `role_has_permissions` VALUES (32, 2);
INSERT INTO `role_has_permissions` VALUES (33, 2);
INSERT INTO `role_has_permissions` VALUES (34, 2);
INSERT INTO `role_has_permissions` VALUES (35, 2);
INSERT INTO `role_has_permissions` VALUES (36, 2);
INSERT INTO `role_has_permissions` VALUES (37, 2);
INSERT INTO `role_has_permissions` VALUES (38, 2);
INSERT INTO `role_has_permissions` VALUES (39, 2);
INSERT INTO `role_has_permissions` VALUES (40, 2);
INSERT INTO `role_has_permissions` VALUES (41, 2);
INSERT INTO `role_has_permissions` VALUES (42, 2);
INSERT INTO `role_has_permissions` VALUES (43, 2);
INSERT INTO `role_has_permissions` VALUES (44, 2);
INSERT INTO `role_has_permissions` VALUES (45, 2);
INSERT INTO `role_has_permissions` VALUES (46, 2);
INSERT INTO `role_has_permissions` VALUES (47, 2);
INSERT INTO `role_has_permissions` VALUES (48, 2);
INSERT INTO `role_has_permissions` VALUES (49, 2);
INSERT INTO `role_has_permissions` VALUES (50, 2);
INSERT INTO `role_has_permissions` VALUES (51, 2);
INSERT INTO `role_has_permissions` VALUES (1, 3);
INSERT INTO `role_has_permissions` VALUES (2, 3);
INSERT INTO `role_has_permissions` VALUES (6, 3);
INSERT INTO `role_has_permissions` VALUES (10, 3);
INSERT INTO `role_has_permissions` VALUES (14, 3);
INSERT INTO `role_has_permissions` VALUES (18, 3);
INSERT INTO `role_has_permissions` VALUES (22, 3);
INSERT INTO `role_has_permissions` VALUES (26, 3);
INSERT INTO `role_has_permissions` VALUES (30, 3);
INSERT INTO `role_has_permissions` VALUES (34, 3);
INSERT INTO `role_has_permissions` VALUES (38, 3);
INSERT INTO `role_has_permissions` VALUES (42, 3);
INSERT INTO `role_has_permissions` VALUES (44, 3);
INSERT INTO `role_has_permissions` VALUES (48, 3);

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `roles_name_guard_name_unique`(`name` ASC, `guard_name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES (1, 'super-admin', 'web', '2026-03-05 02:12:10', '2026-03-05 02:12:10');
INSERT INTO `roles` VALUES (2, 'admin', 'web', '2026-03-05 02:12:10', '2026-03-05 02:12:10');
INSERT INTO `roles` VALUES (3, 'writer', 'web', '2026-03-05 02:12:11', '2026-03-05 02:12:11');

-- ----------------------------
-- Table structure for sessions
-- ----------------------------
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sessions_user_id_index`(`user_id` ASC) USING BTREE,
  INDEX `sessions_last_activity_index`(`last_activity` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sessions
-- ----------------------------

-- ----------------------------
-- Table structure for threads
-- ----------------------------
DROP TABLE IF EXISTS `threads`;
CREATE TABLE `threads`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint(20) UNSIGNED NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT 0,
  `comment_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `view_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `threads_author_type_author_id_index`(`author_type` ASC, `author_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of threads
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email` ASC) USING BTREE,
  UNIQUE INDEX `users_username_unique`(`username` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, '超级管理员', 'superadmin@example.com', 'superadmin', '2026-03-05 02:12:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RgyJgosbPk', '2026-03-05 02:12:13', '2026-03-05 02:12:13');
INSERT INTO `users` VALUES (2, '超级管理员', 'admin@admin.com', 'superadmin760933', '2026-03-05 02:12:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jqyTuNyNyU', '2026-03-05 02:12:13', '2026-03-05 02:12:13');
INSERT INTO `users` VALUES (3, '管理员', 'admin@example.com', 'adminuser', '2026-03-05 02:12:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'cQQcpUTxK4', '2026-03-05 02:12:13', '2026-03-05 02:12:13');
INSERT INTO `users` VALUES (4, '张三', 'test@example.com', 'exampleuser', '2026-03-05 02:12:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'JNuvu6f2e9', '2026-03-05 02:12:13', '2026-03-05 02:12:13');

-- ----------------------------
-- Table structure for views
-- ----------------------------
DROP TABLE IF EXISTS `views`;
CREATE TABLE `views`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `viewer_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `viewer_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `viewable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `viewable_id` bigint(20) UNSIGNED NOT NULL,
  `session_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `viewed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `views_viewer_type_viewer_id_index`(`viewer_type` ASC, `viewer_id` ASC) USING BTREE,
  INDEX `views_viewable_type_viewable_id_index`(`viewable_type` ASC, `viewable_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of views
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
