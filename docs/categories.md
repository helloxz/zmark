# 获取分类列表

```
GET /api/v1/categories
```

## 描述

获取当前用户的分类列表，返回两级分类的树形结构。

## 请求参数

无

## 响应

| 字段 | 类型 | 说明 |
| --- | --- | --- |
| `id` | number | 分类 ID |
| `name` | string | 分类名称 |
| `description` | string/null | 分类描述 |
| `icon` | string/null | 图标名称 |
| `icon_color` | string/null | 图标颜色 |
| `sort_order` | number/null | 排序值 |
| `is_public` | number | 是否公开（0/1） |
| `created_at` | string | 创建时间 |
| `children` | array | 子分类列表 |

## 示例

```json
{
  "code": 200,
  "msg": "success",
  "data": [
    {
      "id": 1,
      "name": "开发工具",
      "description": "常用开发工具",
      "icon": "ri:tools-line",
      "icon_color": "#18a058",
      "sort_order": 0,
      "is_public": 0,
      "created_at": "2026-06-11T12:00:00.000Z",
      "children": [
        {
          "id": 2,
          "name": "前端框架",
          "description": null,
          "icon": null,
          "icon_color": null,
          "sort_order": 0,
          "is_public": 0,
          "created_at": "2026-06-11T12:00:00.000Z"
        }
      ]
    }
  ]
}
```
