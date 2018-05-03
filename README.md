# CursorCentering

Centering Your Cursor on Active Window

## Required

* [cliclick](https://github.com/BlueM/cliclick)
* [Karabiner-Elements](https://github.com/tekezo/Karabiner-Elements)

## Install

1. リポジトリをクローン
2. クローンしたリポジトリ内で `make install`
3. Karabiner-Elementsで _left control + left shilf + ..._ という内容のルールをimportし有効化する
4. 上記の設定のキーコンビネーションで起動する
5. 初回起動時は補助アクセスの権限で実行が出来ないため，ダイアログに沿ってシステム環境設定を開く
6. システム環境設定 -> セキュリティとプライバシー -> プライバシー -> アクセシビリティ に遷移して， krabiner_console_user_server にチェックを入れる

## Q&A

Q. Keyコンビネーションを変えたい

A. 一度`make install`を実行している場合は`~/.config/karabiner/assets/complex_modifications/CursorCenteringRunner.json` を編集できるようになるため，このファイルを編集し，Karabiner-Elementsで編集し直す．

`make edit_keyconf`でも編集が可能．

Q. 動かないウインドウがある

A. アプリケーションやウインドウの状態によっては動作しない場合もあります．
可能であればIssueに状況を教えてください．
