tag "browser" do
  match   "Navigator"
  gravity :center
end

tag "gvim" do
  match   "gvim"
  gravity :top_right66
end

tag "devterm" do
  match   "devterm"
  gravity :bottom_right45
end

tag "pdf" do
  match   "zathura"
  gravity :left45
end

tag "htop" do
  match instance: "htop", class: "URxvt"
  gravity :top_right45
end

tag "weechat" do
  match instance: "weechat", class: "URxvt"
  gravity :left
end

tag "ncmpcpp" do
  match instance: "ncmpcpp", class: "URxvt"
  gravity :bottom_right55
end

tag "torrent" do
  match instance: "rtorrent", class: "URxvt"
  gravity :center
end

tag "stick" do
  match "Mplayer|MPlayer"
  gravity :mplayer
  stick true
end

tag "float" do
  match instance: "scratch"
  match "feh"
  float true
end
