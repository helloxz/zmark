#!/bin/bash
# 脚本入口，设置遇到错误立即退出
# set -e

# 确保 SQLite 数据库文件存在（首次启动自动初始化）
ensure_db_file() {
    local db_dir="./data/db"
    local db_file="${db_dir}/zmark.db"

    if [ ! -f "$db_file" ]; then
        mkdir -p "$db_dir"
        touch "$db_file"
    fi
}

# 导入当前目录下的.env环境变量（如果存在）
if [ -f .env ]; then
    # source .env
    . ./.env
fi

# 判断用户传递的参数
if [ "$1" = "dev" ]; then
    # 参数为dev时，启动开发服务器
    echo "Starting development server..."
    bun run dev
elif [ -z "$1" ]; then
    # 参数为空时，启动生产服务器
    echo "Starting production server..."
    ensure_db_file
    bunx drizzle-kit migrate
    sleep 1 # 等待数据库迁移完成
    bun run ./dist/index.js
else
    # 参数不合法时报错并退出
    echo "Error: Invalid argument. Only 'dev' or empty allowed."
    exit 1
fi
