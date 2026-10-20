# 0xfeedface1993/homebrew-tap

[CHERRY Utility for Mac](https://github.com/0xfeedface1993/cherry-utility-mac) 的 Homebrew tap：CHERRY 键盘的非官方 macOS 配置工具，以及它的命令行工具 `cherry`。

```bash
brew install --cask 0xfeedface1993/tap/cherry-utility   # App（macOS 15+，Apple 芯片与 Intel 通用）
brew install --cask 0xfeedface1993/tap/cherry-cli       # 只装命令行 cherry（含 cherry mcp）
```

两个 cask 互不依赖，可以只装其中一个。下载的是 [GitHub Release](https://github.com/0xfeedface1993/cherry-utility-mac/releases) 的附件，与 [官网](https://odeployer.online/cherry-utility/) 提供的是同一份文件，都经过 Developer ID 签名和 Apple 公证。

| Cask | 内容 | 更新 |
|---|---|---|
| `cherry-utility` | `CherryUtility.app` | App 内置 Sparkle 自动更新（`auto_updates true`），`brew upgrade` 默认跳过它，需要时用 `brew upgrade --cask --greedy cherry-utility` |
| `cherry-cli` | `cherry` 链接到 Homebrew 的 bin 目录 | `brew upgrade --cask cherry-cli` |

卸载：`brew uninstall --cask cherry-utility`；连同设置和数据一起删除用 `brew uninstall --zap --cask cherry-utility`。

## 维护

cask 由主仓库的 [`Packaging/homebrew/`](https://github.com/0xfeedface1993/cherry-utility-mac/tree/main/Packaging/homebrew) 模板渲染，每次发布用主仓库的 `Scripts/publish-homebrew.sh` 推送，不要在这里手改版本号和 sha256。流程见 [发布与官网](https://github.com/0xfeedface1993/cherry-utility-mac/blob/main/Docs/dev/release.md#homebrew)。
