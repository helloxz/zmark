// drizzle.config.ts
import type { Config } from "drizzle-kit";
export default {
    schema: "./src/db/schema.ts", // 你的 schema 文件路径
    out: "./drizzle", // 迁移文件输出目录
    dialect: "sqlite", // 数据库类型
    dbCredentials: {
        url: "file:./data/db/zmark.db", // SQLite 文件路径（libsql 格式）
    },
} satisfies Config;
