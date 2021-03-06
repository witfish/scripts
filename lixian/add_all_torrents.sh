###
# @fileOverview 上传目录下的所有 torrent 文件到迅雷离线.
# @author ChenCheng <sorrycc@gmail.com>
# @ref    https://github.com/iambus/xunlei-lixian
###

tmpdir="/Users/chencheng/Downloads/tmp/";

if [ ! -d "$tmpdir" ]; then
  mkdir -p "$tmpdir";
fi

find ~/Downloads/ -name  "*.torrent" | while read name; do
  lx add --torrent "$name"
  mv "$name" "$tmpdir"
done

rm -rf "$tmpdir"

## 
## Another Method to add torrents.
##
# cd ~/Downloads/
# for file in *.torrent; do
#   ~/Documents/Work/library/xunlei-lixian/lixian_cli.py add --torrent $file
#   rm $file
# done

