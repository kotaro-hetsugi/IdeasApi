# 目次
1.API概要
2.使用方法
3.API仕様
4.工夫した点
5.テーブル設計

# 1.API概要
## 1-1.API名
IdeasApi

## 1-2.概要説明
アイデアとカテゴリを登録することができます。<br>
登録したアイデアとカテゴリは、一覧を取得できます。<br>
登録したカテゴリを指定すると、カテゴリに紐付いたアイデア一覧を取得できます。<br>

# 2.使用方法
下記Google Chromeの拡張機能をご使用ください<br>
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
![201c0564ac75f272c078b7faf4a9ad3e](https://user-images.githubusercontent.com/78333577/113824978-64c14b80-97bb-11eb-8971-bd69836c1872.gif)
カテゴリとアイデアの一覧を取得できます。<br>
HTTPメソッド:GET<br>
URL:http://localhost:3000/ideas/<br>

## 3-3.カテゴリに紐付いたアイデア取得
![443c719cc546259196e990a4fb050cb2](https://user-images.githubusercontent.com/78333577/113825380-da2d1c00-97bb-11eb-90dd-83d909fee446.gif)
指定したカテゴリに紐付いたアイデア一覧を取得できます。<br>
HTTPメソッド:GET<br>
URL:http://localhost:3000/ideas/search?category_name=(カテゴリ)<br>
(カテゴリ)には指定したいカテゴリを入力してください。<br>
<br>
例えばカテゴリを"会議"とする場合、URLは<br>
http://localhost:3000/ideas/search?category_name=会議 <br>
となります。


# 4.工夫した点
## できることから実装を開始
APIの作成は初めてでしたので、まずは登録と取得機能を満たしたアプリケーションを開発しました。<br>
https://github.com/kotaro-hetsugi/ideas-app

アプリケーションでMVCのコーディングと挙動確認ができたので、APIにコードを取り入れることでコードを整理しつつ作成することができました。

# 5. テーブル設計
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
