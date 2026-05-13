# Zmark

Zmark 是一款功能强大且简洁高效的浏览器书签管理系统，支持集中式管理书签，完美解决跨设备、跨平台、跨浏览器的同步与访问难题，实现一处部署、随处访问。它不仅安装简单、界面简洁、操作方便，还可与浏览器扩展（插件）配合使用，为你带来更加高效便捷的书签管理体验。

## 部分截图

首页导航

![CleanShot 2026-05-12 at 10.47.50@2x.png](https://img.rss.ink/2026/05/12/mNYBIPvb.png)

书签模式

![CleanShot 2026-05-12 at 10.48.51@2x.png](https://img.rss.ink/2026/05/12/I9LzMPiL.png)

后台管理

![CleanShot 2026-05-12 at 10.49.57@2x.png](https://img.rss.ink/2026/05/12/5Qv7ov0v.png)

浏览器插件（开源）:支持右键菜单添加、支持浏览器书签双向同步、模糊搜索等。

![](https://img.rss.ink/2026/05/07/R7x8shn8.png)

## 技术栈

* 后端：Bun + Hono.js
* 数据库：SQLite3
* 前端：Vue3 + Naive UI + Tailwind CSS


## 功能特点

- **轻量级：** 使用Bun + Hono.js + SQLite3开发，极低的内存占用。
- **多用户：** 支持多用户，方便与您的家人或团队一起使用。
- **双模式：** 同时支持浏览器书签管理与网址导航两种模式，支持灵活切换。
- **备用链接：** 支持为书签或导航添加备用链接，满足一个应用多个地址的需求。
- **书签导入：** 支持 Chrome / Edge / Firefox 等主流浏览器书签一键导入。
- **浏览器插件：** 支持 Chrome / Edge / Firefox扩展/插件
- **多级分类：** 支持最多二级分类，覆盖大多数用户的分类需求。
- **链接检测：** 定时批量检测链接状态，自动识别失效链接，保持书签库整洁。
- **数据备份：** 一键备份和恢复系统数据，确保数据安全无忧。
- **在线更新：** 告别繁琐的手动更新，后台一键点击即可轻松升级版本。
- **响应式设计：** 用户界面同时兼容 PC 和手机，随时随地管理书签。
- **开放API：** 提供完善的开放 API，开发者可轻松将 ZMark 集成到您的应用中。

## 部署方式

推荐使用Docker Compose部署，`compose.yaml`内容如下：

```yaml
services:
    zmark:
        container_name: zmark
        environment:
            - 'TZ=Asia/Shanghai'
        dns:
            - '119.29.29.29'
            - '223.5.5.5'
        volumes:
            - './data:/opt/zmark/data'
        ports:
            - '3080:3080'
        restart: always
        image: 'helloz/zmark'
```

然后输入以下命令启动：

```bash
docker compose up -d
```

最后访问 `http://IP:3080/user/init` 完成初始化设置即可使用。

## 联系我们

- QQ：`337003006`
- 微信：`xiaozme`

> 添加时请备注：`ZMark`
