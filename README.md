# テーブル設計

## users テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| nickname | string | null: false | 
| email    | string | null: false |
| password | string | null: false |

### Association
- has_many :posts

## posts テーブル

| Column  | Type     | Options     |
| ------- | -------- | ----------- |
| content | text   | null: false | 
| spoiler | boolean | null: false, default: false |
| rate | float |
| genre_id | integer | null: false |
| user  | references | null: false, foreign_key: true |
| title | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :title
- belongs_to_active_hash :genre

## titles テーブル

| Column | Type   | Options     |
| ------ | ------ | ----------- |
| title_name   | string | null: false |

### Association
- has_many :posts