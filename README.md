# env_atcoder

## overview

- vscodeのdevcontainerを使って簡単にAtCoder用のC/C++環境を作れるテンプレートです

- atcoder-cliとonline-judge-toolを採用しています

## installation

1. GitHubでこのテンプレートをもとにリポジトリを作成

2. 作成したリポジトリをクローン

3. クローンしたリポジトリをVS Codeで開く

4. VS Codeの拡張機能`Remote - Containers`がまだインストールされていなければインストールする

5. `./.env.example`のファイル名を`.env`に変更

6. `.env`ファイルの`<username>`を自分のAtCoderのユーザー名に、`<password>`を自分のAtCoderのパスワードに書き換える

7. 画面左下の`><`みたいなアイコンをクリックし、`Reopen in Container`を選択

8. 初回はビルドに少々時間がかかるのでログでも眺めながらしばし待つ

## usage

使うコマンド

- AtCoderにログインできているか確認

    ```shell
    acc session
    ```

- コンテストを追加

    ```shell
    acc new <ContestID>
    ```

    \<ContestID\>はブラウザで追加したいコンテストを開いた際のURLを見ればわかる　ex) abc42, abs

    `./contests`以下にコンテスト用のディレクトリが追加されるので、それぞれの問題のmain.cppにプログラムを書いていく

- テストケースを実行

    `cmd(ctrl)+shift+P`でコマンドパレットを開いてから`Tasks: Run Test Task`を実行

    このコマンドにキーバインド割り当てておくと便利。自分は`cmd+ctrl+T`を割り当てています

- 提出

    例のごとくコマンドパレットを開いてから`Tasks: Run Build Task`を実行

    こちらはデフォルトでキーバインドが割り当てられていて、`cmd(ctrl)+shift+B`で実行できる

- デバッグ

    `F5`を押して、`C/C++: g++ build and debug active file` *Configured Task (debug task for AtCoder)* を選択するとgdbでデバッグできる

## customize

- テンプレートファイル

    - `./cpp/main.cpp`を変更

- VS Codeの拡張機能

    - `./.devcontainer/devcontainer.json`の`extensions`項目に追加したい拡張機能のextensionIDを追記

- コンテナを開いた時に実行されるコマンド

    - `./login.sh`を変更

    - 詳しい設定内容については`$ acc -h`や[atcoder-cliの作者さんのブログ](http://tatamo.81.la/blog/2018/12/07/atcoder-cli-tutorial/)で確認してみてください
