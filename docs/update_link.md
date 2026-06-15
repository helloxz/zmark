# 更新链接

```
POST /api/v1/update_link
```

## 描述

更新指定链接的信息。

## 请求参数

| 参数 | 类型 | 必填 | 说明 |
| --- | --- | --- | --- |
| `id` | number | 是 | 链接 ID（正整数） |
| `title` | string | 是 | 链接标题 |
| `url` | string | 是 | 链接地址（支持 http/https/ftp/ftps） |
| `backup_url` | string | 否 | 备用链接 |
| `content` | string | 否 | 内容 |
| `keywords` | string | 否 | 关键词 |
| `description` | string | 否 | 描述 |
| `icon` | string | 否 | 图标 |
| `category_type` | string | 是 | 分类类型：`l1`（一级分类）或 `l2`（二级分类） |
| `category_id` | number | 是 | 分类 ID（正整数） |
| `sort_order` | number | 否 | 排序值（0-99999，默认 0） |
| `is_public` | number | 否 | 是否公开：`0`（私有）或 `1`（公开），默认 0 |

## 响应

| 字段 | 类型 | 说明 |
| --- | --- | --- |
| `id` | number | 链接 ID |
| `title` | string | 链接标题 |
| `url` | string | 链接地址 |
| `category_type` | string | 分类类型 |
| `category_id` | number | 分类 ID |

## curl 示例

```bash
curl -X POST https://your-domain.com/api/v1/update_link \
  -H "Authorization: Bearer sk-abc123DEF456ghi789JKL012mno345PQR" \
  -H "Content-Type: application/json" \
  -d '{
    "id": 42,
    "title": "GitHub",
    "url": "https://github.com",
    "description": "全球最大代码托管平台",
    "category_type": "l1",
    "category_id": 1
  }'
```

## 响应示例

```json
{
  "code": 200,
  "msg": "success",
  "data": {
    "id": 42,
    "title": "GitHub",
    "url": "https://github.com",
    "category_type": "l1",
    "category_id": 1
  }
}
```
