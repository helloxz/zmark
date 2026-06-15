# 搜索链接

```
POST /api/v1/search_links
```

## 描述

按关键词搜索当前用户的链接，在标题、链接地址、备用链接、描述中进行模糊匹配。

## 请求参数

| 参数 | 类型 | 必填 | 说明 |
| --- | --- | --- | --- |
| `keyword` | string | 是 | 搜索关键词 |

## 响应

返回匹配的链接列表，最多 20 条，按更新时间倒序排列。

## curl 示例

```bash
curl -X POST https://your-domain.com/api/v1/search_links \
  -H "Authorization: Bearer sk-abc123DEF456ghi789JKL012mno345PQR" \
  -H "Content-Type: application/json" \
  -d '{
    "keyword": "github"
  }'
```

## 响应示例

```json
{
  "code": 200,
  "msg": "success",
  "data": [
    {
      "id": 42,
      "uid": 1,
      "title": "GitHub",
      "url": "https://github.com",
      "backup_url": "",
      "content": "",
      "keywords": "",
      "description": "全球最大代码托管平台",
      "icon": "",
      "category_type": "l1",
      "category_id": 1,
      "sort_order": 0,
      "is_public": 0,
      "http_code": 200,
      "created_at": "2026-06-11T12:00:00.000Z",
      "updated_at": "2026-06-11T12:00:00.000Z"
    }
  ]
}
```
