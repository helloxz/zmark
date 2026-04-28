DROP INDEX `zm_categories_l1_name_unique`;--> statement-breakpoint
CREATE UNIQUE INDEX `uid_name_unique_idx` ON `zm_categories_l1` (`uid`,`name`);--> statement-breakpoint
DROP INDEX `zm_categories_l2_name_unique`;--> statement-breakpoint
CREATE UNIQUE INDEX `uid_l1_name_unique_idx` ON `zm_categories_l2` (`uid`,`l1_id`,`name`);