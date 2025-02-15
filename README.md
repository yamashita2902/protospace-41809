# テーブル設計

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| name               | string | NOT NULL    |
| email              | string | NOT NULL ,UNIQUE|
| encrypted_password | string | NOT NULL    |
| profile            | text   | NOT NULL    |
| occupation         | text   | NOT NULL    |
| position           | text   | NOT NULL    |

## comments テーブル

| Column    | Type       | Options     |
| --------- | ---------- | NOT NULL    |
| prototype | references | NOT NULL    |1
| user      | references | NOT NULL    |1
| content   | text       | NOT NULL    |

## prototypes テーブル

| Column      | Type       | Options     |
| ----------- | ---------- | ------------|
| content     | text       | NOT NULL    |
| user        | references | NOT NULL    |1
| catch_copy  | text       | NOT NULL    |
| title       | string     | NOT NULL    |
