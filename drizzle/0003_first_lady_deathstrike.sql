ALTER TABLE `zm_links` ADD `vectorized` integer DEFAULT 0;--> statement-breakpoint
ALTER TABLE `zm_links` ADD `vectorized_at` integer;--> statement-breakpoint
CREATE INDEX `idx_zm_links_vectorized` ON `zm_links` (`vectorized`);--> statement-breakpoint
ALTER TABLE `zm_nav_links` ADD `vectorized` integer DEFAULT 0;--> statement-breakpoint
ALTER TABLE `zm_nav_links` ADD `vectorized_at` integer;--> statement-breakpoint
CREATE INDEX `idx_zm_nav_links_vectorized` ON `zm_nav_links` (`vectorized`);