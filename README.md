# 1.API概要

## 1-1.API名
IdeasApi

## 1-2.概要説明
アイデアとカテゴリを登録することができます。<br>
登録したアイデアとカテゴリは、一覧を取得できます。<br>
登録したカテゴリを指定すると、カテゴリに紐付いたアイデア一覧を取得できます。<br>

# 2.使用方法
Google Chromeの拡張機能をご使用ください<br>
- Talend API Tester<br>
chrome://extensions/?id=aejoelaoggembcahagimdiliamlcdmfm<br>
# 3.API仕様
## 3-1.アイデア登録
![ff94b514617dce05cd94f35eda728c0f](https://user-images.githubusercontent.com/78333577/113824378-ad2c3980-97ba-11eb-89d8-b631301ffdfc.gif)
json形式でカテゴリとアイデアを登録できます。<br>
HTTPメソッド:POST<br>
URL:http://localhost:3000/ideas/<br>
BODY記入例（keyは記入例と同じものをご使用ください）<br>
```
{
  "category_name":"会議",
  "body":"会議室の管理表を作成する"
} 
```
## 3-2.アイデア取得


## 3-3.カテゴリに紐付いたアイデア取得

# 4.工夫した点
## できることから実装を開始
APIの作成は初めてでしたので、まずは登録と取得機能を満たしたアプリケーションを開発しました。<br>
https://github.com/kotaro-hetsugi/ideas-app

アプリケーションでMVCのコーディングと挙動確認ができたので、APIにコードを取り入れることでコードを整理しつつ作成することができました。

# テーブル設計
## categories テーブル
| Column   | Type   |  Options                  |
| -------- | ------ | ------------------------- |
| name     | string | null: false, unique: true |

### Association
- has_many :ideas

## ideas テーブル
| Column   | Type       |  Options          |
| -------- | ---------- | ----------------- |
| category | references | foreign_key: true |
| body     | text       | null: false       |

### Association
- belongs_to :categories
