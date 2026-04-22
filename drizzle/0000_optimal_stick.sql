CREATE TABLE `zm_categories_l1` (
	`id` integer PRIMARY KEY AUTOINCREMENT NOT NULL,
	`uid` integer NOT NULL,
	`name` text NOT NULL,
	`description` text DEFAULT '',
	`icon` text DEFAULT '',
	`icon_color` text DEFAULT '',
	`sort_order` integer DEFAULT 0,
	`is_public` integer DEFAULT 0 NOT NULL,
	`created_at` integer,
	`updated_at` integer
);
--> statement-breakpoint
CREATE UNIQUE INDEX `zm_categories_l1_name_unique` ON `zm_categories_l1` (`name`);--> statement-breakpoint
CREATE TABLE `zm_categories_l2` (
	`id` integer PRIMARY KEY AUTOINCREMENT NOT NULL,
	`l1_id` integer NOT NULL,
	`uid` integer NOT NULL,
	`name` text NOT NULL,
	`description` text DEFAULT '',
	`icon` text DEFAULT '',
	`icon_color` text DEFAULT '',
	`sort_order` integer DEFAULT 0,
	`is_public` integer DEFAULT 0 NOT NULL,
	`created_at` integer,
	`updated_at` integer
);
--> statement-breakpoint
CREATE UNIQUE INDEX `zm_categories_l2_name_unique` ON `zm_categories_l2` (`name`);--> statement-breakpoint
CREATE TABLE `zm_global_settings` (
	`id` integer PRIMARY KEY AUTOINCREMENT NOT NULL,
	`key` text NOT NULL,
	`value` text NOT NULL,
	`updated_at` integer
);
--> statement-breakpoint
CREATE UNIQUE INDEX `zm_global_settings_key_unique` ON `zm_global_settings` (`key`);--> statement-breakpoint
CREATE TABLE `zm_links` (
	`id` integer PRIMARY KEY AUTOINCREMENT NOT NULL,
	`uid` integer NOT NULL,
	`title` text NOT NULL,
	`url` text NOT NULL,
	`backup_url` text DEFAULT '',
	`content` text DEFAULT '',
	`keywords` text DEFAULT '',
	`description` text DEFAULT '',
	`icon` text DEFAULT '',
	`category_type` text NOT NULL,
	`category_id` integer NOT NULL,
	`sort_order` integer DEFAULT 0,
	`is_public` integer DEFAULT 0 NOT NULL,
	`http_code` integer DEFAULT 0 NOT NULL,
	`last_checked_at` integer,
	`created_at` integer,
	`updated_at` integer
);
--> statement-breakpoint
CREATE INDEX `idx_zm_links_uid` ON `zm_links` (`uid`);--> statement-breakpoint
CREATE TABLE `zm_nav_categories_l1` (
	`id` integer PRIMARY KEY AUTOINCREMENT NOT NULL,
	`name` text NOT NULL,
	`description` text DEFAULT '',
	`keywords` text DEFAULT '',
	`icon` text DEFAULT '',
	`icon_color` text DEFAULT '',
	`sort_order` integer DEFAULT 0,
	`visibility` text DEFAULT 'public' NOT NULL,
	`created_at` integer,
	`updated_at` integer
);
--> statement-breakpoint
CREATE UNIQUE INDEX `zm_nav_categories_l1_name_unique` ON `zm_nav_categories_l1` (`name`);--> statement-breakpoint
CREATE TABLE `zm_nav_categories_l2` (
	`id` integer PRIMARY KEY AUTOINCREMENT NOT NULL,
	`l1_id` integer NOT NULL,
	`name` text NOT NULL,
	`description` text DEFAULT '',
	`keywords` text DEFAULT '',
	`icon` text DEFAULT '',
	`icon_color` text DEFAULT '',
	`sort_order` integer DEFAULT 0,
	`visibility` text DEFAULT 'public' NOT NULL,
	`created_at` integer,
	`updated_at` integer
);
--> statement-breakpoint
CREATE UNIQUE INDEX `zm_nav_categories_l2_name_unique` ON `zm_nav_categories_l2` (`name`);--> statement-breakpoint
CREATE TABLE `zm_nav_links` (
	`id` integer PRIMARY KEY AUTOINCREMENT NOT NULL,
	`title` text NOT NULL,
	`url` text NOT NULL,
	`backup_url` text DEFAULT '',
	`content` text DEFAULT '',
	`keywords` text DEFAULT '',
	`description` text DEFAULT '',
	`icon` text DEFAULT '',
	`category_type` text NOT NULL,
	`category_id` integer NOT NULL,
	`sort_order` integer DEFAULT 0,
	`visibility` text DEFAULT 'public' NOT NULL,
	`http_code` integer DEFAULT 0 NOT NULL,
	`last_checked_at` integer,
	`created_at` integer,
	`updated_at` integer
);
--> statement-breakpoint
CREATE INDEX `idx_zm_nav_links_category` ON `zm_nav_links` (`category_type`,`category_id`,`visibility`);--> statement-breakpoint
CREATE TABLE `zm_sessions` (
	`id` integer PRIMARY KEY AUTOINCREMENT NOT NULL,
	`uid` integer NOT NULL,
	`role` text NOT NULL,
	`token` text NOT NULL,
	`ip` text NOT NULL,
	`ua` text NOT NULL,
	`location` text DEFAULT '',
	`created_at` integer NOT NULL,
	`last_active_at` integer NOT NULL,
	`expires_at` integer NOT NULL,
	`status` text DEFAULT 'active' NOT NULL
);
--> statement-breakpoint
CREATE UNIQUE INDEX `zm_sessions_token_unique` ON `zm_sessions` (`token`);--> statement-breakpoint
CREATE TABLE `zm_user_settings` (
	`id` integer PRIMARY KEY AUTOINCREMENT NOT NULL,
	`uid` integer NOT NULL,
	`value` text DEFAULT '{}' NOT NULL,
	`created_at` integer,
	`updated_at` integer
);
--> statement-breakpoint
CREATE UNIQUE INDEX `zm_user_settings_uid_unique` ON `zm_user_settings` (`uid`);--> statement-breakpoint
CREATE TABLE `zm_users` (
	`id` integer PRIMARY KEY AUTOINCREMENT NOT NULL,
	`username` text NOT NULL,
	`email` text DEFAULT '',
	`nickname` text DEFAULT '',
	`password` text NOT NULL,
	`role` text DEFAULT 'user' NOT NULL,
	`avatar` text DEFAULT '',
	`reg_ip` text NOT NULL,
	`reg_ua` text NOT NULL,
	`created_at` integer,
	`updated_at` integer,
	`status` text DEFAULT 'active' NOT NULL,
	`remark` text DEFAULT ''
);
--> statement-breakpoint
CREATE UNIQUE INDEX `zm_users_username_unique` ON `zm_users` (`username`);--> statement-breakpoint
CREATE UNIQUE INDEX `zm_users_email_unique` ON `zm_users` (`email`);