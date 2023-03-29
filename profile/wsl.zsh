if hash wslpath 2>/dev/null; then
  # [同じディレクトリ内のタブまたはペインを開く | Microsoft Docs](https://docs.microsoft.com/ja-jp/windows/terminal/tutorials/new-tab-same-directory)
  keep_current_path() {
    printf '\e]9;9;%s\e\\' "$(wslpath -w "$PWD")"
  }
  precmd_functions+=(keep_current_path)
fi
