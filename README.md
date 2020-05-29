# README

## ジム関連のアプリ
# 生徒とオンラインで関わりを持ち、生徒は自宅にいながら指導を受けることが出来る。
# ジムでやった内容を振り返ることができる。
# ジム外での生徒同士でコミュニティのやりとりを行うことが出来る。

## サインアップを行う → 

# DB設計
## users table

|Column|Type|Options|
|------|----|-------|
|email|string|null: false,index: true,unique:true|
|password|string|null: false,index: true,unique:true|
|nickname|string|null: false,index: true,unique:true|

### Association
- has_many :communities, through:communitys_users
- has_many :communities_users
- has_many :messages

## messages table

|Column|Type|Options|
|------|----|-------|
|text|text||
|image|text||
|user_id|integer|null: false, foreign_key: true|
|community_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :community

## communities table

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|image|string||

### Association
- has_many :users, through: groups_users
- has_many :community_users
- has_many :messages

## community_users table
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :community
- belongs_to :user

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
