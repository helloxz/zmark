CREATE TABLE `zm_api_tokens` (
	`id` integer PRIMARY KEY AUTOINCREMENT NOT NULL,
	`uid` integer NOT NULL,
	`token` text NOT NULL,
	`status` text DEFAULT 'active' NOT NULL,
	`last_used_at` integer,
	`last_used_ip` text DEFAULT '',
	`created_at` integer NOT NULL,
	`updated_at` integer NOT NULL
);
--> statement-breakpoint
CREATE UNIQUE INDEX `zm_api_tokens_uid_unique` ON `zm_api_tokens` (`uid`);--> statement-breakpoint
CREATE UNIQUE INDEX `zm_api_tokens_token_unique` ON `zm_api_tokens` (`token`);--> statement-breakpoint
CREATE INDEX `idx_zm_links_checked_id` ON `zm_links` (`last_checked_at`,`id`);--> statement-breakpoint
CREATE INDEX `idx_zm_nav_links_checked_id` ON `zm_nav_links` (`last_checked_at`,`id`);