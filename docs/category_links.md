# 获取分类链接

```
GET /api/v1/category_links
```

## 描述

获取指定分类下的所有链接。

## 请求参数

| 参数 | 类型 | 必填 | 说明 |
| --- | --- | --- | --- |
| `category_type` | string | 是 | 分类类型：`l1`（一级分类）或 `l2`（二级分类） |
| `category_id` | number | 是 | 分类 ID |

## 响应

返回该分类下的链接列表，按排序值升序、创建时间倒序排列。

## curl 示例

```bash
curl -X GET "https://your-domain.com/api/v1/category_links?category_type=l1&category_id=1" \
  -H "Authorization: Bearer sk-abc123DEF456ghi789JKL012mno345PQR"
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
