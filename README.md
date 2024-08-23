# fish-exa

## ✅ Requirements
- [Fisher](https://github.com/jorgebucaran/fisher) 4.0+

## Important Information!
This fork is for my primarily customization purposes. 
It may not work for you if you try it.
I *may* or *may not* respond to issues/pull requests depending on my current mental state.

## 🚀 Install

Install using Fisher:

```console
fisher install amadea-system/fish-exa
```

## 🔧 Usage

### Aliases Descriptions

- `ls`: Plain `exa`. (Absolutely no default arguments applied)
- `l`: Shortcut for `exa --git --header`
  - The default arguments don't do anything unless you add `-l`
- `ll`: Display extended file information in a table - `ls -l`
- `la`: Display extended file information in a table, including hidden files - `ls -la`
- `ld`: Display only directories
- `le`: Display all extended file information in a table.
  - This adds the following headers: "Group", "Date Changed", "Date Created", "Date Accessed"
- `lt`: Displays a file tree with the specified number of levels.
  - Requires the desired number of levels as first argument
- `lld`: Display only directories in a table with extended information.
  - This is a combination of `ll` and `ld`
- `lad`: Display only directories (including hidden dir) in a table with extended information.
  - This is a combination of `la` and `ld`
- `llt`: Displays an extended file tree in a table with the specified number of levels
  - Requires the desired number of levels as first argument
  - This is a combination of `ll` and `lt`

### Aliases

| alias | default options                                                                                  |
| ----- | ------------------------------------------------------------------------------------------------ |
| `ls`  | `exa`                                                                                            |
| `l`   | `exa --git --header`                                                                             |
| `ll`  | `exa --git --header --long --icons`                                                              |
| `la`  | `exa --git --header --long --icons --all`                                                        |
| `ld`  | `exa --git --header --only-dirs`                                                                 |
| `le`  | `exa --git --header --long --icons --extended --group --created --modified --accessed --changed` |
| `lt`  | `exa --git --header --tree --level LEVEL`                                                        |
| `lld` | `exa --git --header --long --icons --only-dirs`                                                  |
| `lad` | `exa --git --header --long --icons --all --only-dirs`                                            |
| `llt` | `exa --git --header --long --icons --tree --level LEVEL`                                         |

Currently, the `--git` option is always applied w/ aliases that list it regardless of the current directory's git repository status.

### Original Aliases Documentation

| alias            | default options                                                        |
| ---------------- | ---------------------------------------------------------------------- |
| `l`              | `exa`                                                                  |
| `ll`             | `exa --long --all --group --header`                                    |
| `ll` in git repo | `exa --long --all --group --header --git`                              |
| `la`             | `exa --long --all --group --header --binary --links --inode --blocks`  |
| `ld`             | `exa --long --all --group --header --list-dirs`                        |
| `lg`             | `exa --long --all --group --header --git`                              |
| `le`             | `exa --long --all --group --header --extended`                         |
| `lt`             | `exa --long --all --group --header --tree --level LEVEL`               |

## 🛠 Configuration

Configuration is done through environment variables.

To avoid spamming your `config.fish`, you can set environment variables using `set -Ux` once, to make them persistent across restarts and share them across fish's instances

⚠️ : Don't use quotes in variables, set them as a list : `set -Ux EXA_STANDARD_OPTIONS --long --all`

### Default options

`EXA_STANDARD_OPTIONS`


default exa options used in all aliases except `l`

default : `--long --all --group --header`

### Aliases options

You can define per alias options using an env variable with name `EXA_<ALIAS>_OPTIONS`.

For example, to customize `ll` specific options, you would store them in `EXA_LL_OPTIONS`

Here are the defaults :

- `EXA_LL_OPTIONS` : No specific options
- `EXA_LA_OPTIONS` : `--binary --links --inode --blocks`
- `EXA_LD_OPTIONS` : `--list-dirs`
- `EXA_LG_OPTIONS` : `--git`
- `EXA_LE_OPTIONS` : `--extended`
- `EXA_LT_OPTIONS` : `--tree --level LEVEL` You must pass the max number of levels to `--level` option

## 📝 License

[MIT](https://github.com/Gazorby/fish-exa/blob/master/LICENSE)
