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

## 概要
- echoと|(パイプ)を使用して入力された数字と同じ文字数の単語をランダムで出力するコマンドです。  
- 出力される単語は[word.txt](https://github.com/junsei0/robosys2024/blob/main/word.txt)内に記入されている単語を使用しています。

## 実行方法
下記コマンドでディレクトリに移動してから実行してください。
```
$ cd robosys2024
```
実行権限の付与が必要です。  
下記コマンドで付与してください。  
```
$ chmod +x random_word
```
echoの""部分に任意の数字を入力して実行してください。
```
$ echo "" | ./random_word
```
## 実行例
```
$ echo 4 | ./random_word
ミキサー

$ echo 4 | ./random_word
パソコン
```

## 著作権・ライセンス
- このソフトウェアパッケージは、３条項BSDライセンスの下で公開されています。
- 詳細は[LICENSE](https://github.com/junsei0/robosys2024/blob/main/LICENSE)を確認してください
- ©︎ 2024 Junsei Iimori

