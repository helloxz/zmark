FROM oven/bun:slim
# 创建工作目录为/opt/zmark
WORKDIR /opt/zmark
# 合并所有 COPY 操作
COPY . ./
# 3. 安装依赖
RUN bun install
# 暴露挂载路径为/opt/zmark/data
VOLUME /opt/zmark/data
# 暴露暴露端口为3080
EXPOSE 3080
# 启动命令为sh run.sh
CMD ["sh", "run.sh"]