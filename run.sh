#!/bin/bash
# 脚本入口，设置遇到错误立即退出
# set -e

SCRIPT_DIR=$(pwd)

# 确保 SQLite 数据库文件存在（首次启动自动初始化）
ensure_db_file() {
    local db_dir="${SCRIPT_DIR}/data/db"
    local db_file="${db_dir}/zmark.db"

    if [ ! -f "$db_file" ]; then
        mkdir -p "$db_dir"
        touch "$db_file"
    fi
}

# 若存在更新包则解压到脚本所在目录，并在成功后删除压缩包
update() {
    local update_file="${SCRIPT_DIR}/data/update.tar.gz"

    if [ ! -f "$update_file" ]; then
        echo "No update package found, skipping update."
        return 0
    fi
    
    # 删除已经存在的前端静态文件
    rm -rf public/static/assets/*

    echo "Update package detected, extracting files..."
    tar -xzf "$update_file" -C "$SCRIPT_DIR" --overwrite
    bun install --registry https://registry.npmmirror.com
    echo "Update extracted successfully, removing package..."
    rm -f "$update_file"
    echo "Update completed."
}

# 导入当前目录下的.env环境变量（如果存在）
if [ -f "${SCRIPT_DIR}/.env" ]; then
    # source .env
    . "${SCRIPT_DIR}/.env"
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
    update
    bunx drizzle-kit migrate
    sleep 1 # 等待数据库迁移完成
    bun run ./dist/index.js
    # bun run dev
else
    # 参数不合法时报错并退出
    echo "Error: Invalid argument. Only 'dev' or empty allowed."
    exit 1
fi
