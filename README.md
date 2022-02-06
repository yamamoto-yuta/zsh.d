# zsh.d

zsh の設定を管理するためのリポジトリ

## インストール

```
$ git clone git@github.com:yamamoto-yuta/zsh.d.git ~/.zsh.d
$ cat ~/.zsh.d/install >> ~/.zshrc
```

## 使い方

ディレクトリ構成：

```
.zsh.d
├── alias.d
│  ├── _general.zsh
│  ├── bat.zsh
│  ├── chown-here.zsh
│  ├── fa.zsh
│  ├── fch.zsh
│  ├── fde.zsh
│  └── fdrmi.zsh
├── config.zsh
├── install
├── README.md
└── scripts
   └── show_source.zsh
```

### 基本方針

- `.zshrc` にはその端末固有の設定を記述し、それは管理しない
- 管理したい設定は `.zsh.d/` ディレクトリ内のファイルに記述する

### alias の設定

- alias の設定は `alias.d` ディレクトリ内で行う
- 通常の alias を登録する場合は `_general.zsh` に記述する
- 関数を利用する alias を登録する場合は、以下の手順で登録する。
  1. `<alias名>.zsh` というファイルを作成する
  1. 関数を利用した alias を登録する。その際、関数名の先頭に `function_` という文字列を付ける

### その他個人設定

- その他の個人設定は `config.zsh` に記述する

### シェルスクリプト内でシェルスクリプトを利用する

- `scripts/` ディレクトリ内にシェルスクリプトを作成する
