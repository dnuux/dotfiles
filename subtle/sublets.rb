# Use random prime numbers as update rates to avoid all updating at once

sublet :wifi do
  interval 107
end

sublet :pacman do
  interval   311
  separator  " / "
end

sublet :mpd do
  interval      97
  format_string "%note% %artist% - %title%"
  artist_color  "#eee"
  title_color   "#eee"
  pause_color   "#909090"
  artist_color  "#cc7683"
  show_icons    false
  show_colors   true
  note_color    "#cc7683"
end

sublet :memory do
  interval 89
end

sublet :cpu do
  interval 7
end

sublet :clock do
  format_string "%d/%m/%Y %H:%M"
end
