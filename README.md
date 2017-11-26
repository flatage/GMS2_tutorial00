# GMS2_tutorial00

GMS2を新しく購入したので基本的なチュートリアルをこなしてみる。

## memo

- 2017/11/26
	- obj_player.sprite_height / 2
		- ↑オブジェクト名.参照(上記は指定したオブジェクトのスプライトの高さを取得)で各種取得ができる。
	- 
~~~ ruby
var hspd = argument0;
var vspd = argument1;
~~~
- ↑スクリプトの内部で、上記「argument0,1,2...」を定義すると、関数定義された引数を参照する。
	- 例：move(10, 20);
	hspdに10, vspdに20を代入する。

- 2017/11/16
    - 新規の変数にクリエイトした弾を代入すると、各弾のIDが別扱いになるので、パラメータ定義を毎フレーム行っても既に造られた弾に影響は出ない。
	- 敵が弾を出す仕組みの実装まで。

	
## Hotkey

- 全体検索
	- ctrl + shift + f
