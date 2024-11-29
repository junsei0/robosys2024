# random_word

**roobsys2024**    
千葉工業大学 未来ロボティクス学科2024年度ロボットシステム学の講義内で行った内容に、課題1で作成したファイルを追加したものです。

## テスト結果
[![test](https://github.com/junsei0/robosys2024/actions/workflows/test.yml/badge.svg)](https://github.com/junsei0/robosys2024/actions/workflows/test.yml)

## 必要なソフトウェア
- Python
  - テスト済みバージョン: 3.7~3.10

## テスト環境
- Ubuntu 20.04 LTS

## 使用方法
使用する場合は、"git"コマンドを使用してリポジトリをクローンしてください。
```
$ git clone https://github.com/junsei0/robosys2024.git
```
### 実行方法
下記コマンドでディレクトリに移動してから実行してください。
```
$ cd robosys2024
```
echoコマンドで入力された数字と同じ文字数の単語をランダムで出力するコマンドです。  
[word.txt](https://github.com/junsei0/robosys2024/blob/main/word.txt)内の単語をランダムで出力します。

```
$ echo 4 | ./random_word
ミキサー

$ echo 4 | ./random_word
パソコン

## ライセンス
- このソフトウェアパッケージは、３条項BSDライセンスの下で公開されています。

## copyright
© 2024 Junsei Iimori

