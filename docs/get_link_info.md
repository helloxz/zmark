# 抓取网页信息

```
POST /api/v1/get_link_info
```

## 描述

抓取指定网页的标题、关键词和描述信息。

## 请求参数

| 参数 | 类型 | 必填 | 说明 |
| --- | --- | --- | --- |
| `url` | string | 是 | 网页 URL（仅支持 http/https） |

## 响应

| 字段 | 类型 | 说明 |
| --- | --- | --- |
| `title` | string | 网页标题 |
| `keywords` | string | 关键词 |
| `description` | string | 描述 |

## 说明

- 优先使用 Open Graph 标签（og:title、og:description）
- 超时时间：8 秒
- 仅处理 HTML 页面，最大 5MB

## curl 示例

```bash
curl -X POST https://your-domain.com/api/v1/get_link_info \
  -H "Authorization: Bearer sk-abc123DEF456ghi789JKL012mno345PQR" \
  -H "Content-Type: application/json" \
  -d '{
    "url": "https://github.com"
  }'
```

## 响应示例

```json
{
  "code": 200,
  "msg": "success",
  "data": {
    "title": "GitHub: Let's build from here",
    "keywords": "git, github, code, repository",
    "description": "GitHub is where over 100 million developers shape the future of software, together."
  }
}
```
