iconspath = "#{ENV["HOME"]}/pictures/icons/sm4tik"

view "alpha" do
  match "ncmpcpp|htop|weechat"
  icon "%s/screen.xbm" % iconspath
end

view "beta" do
  match "browser"
  icon "%s/fox.xbm" % iconspath
end

view "gamma" do
  match "pdf|gvim|devterm"
  icon "%s/dev.xbm" % iconspath
end

view "delta" do
  match "torrent"
  icon "%s/net_down_01.xbm" % iconspath
end

view "epsilon" do
  match "default"
  icon "%s/info_03.xbm" % iconspath
end
