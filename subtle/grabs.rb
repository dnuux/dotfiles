# Switch current view with W-number
(1..5).each do |i|
    grab "W-#{i}", "ViewSwitch#{i}".to_sym
end

# Switch window workspace with W-S-Number
(1..5).each do |i|
  grab "W-S-%d" % [ i ] do |c|
    views = Subtlext::View.all
    names = views.map { |v| v.name }
 
    # Sanity check
    if i <= views.size
      # Tag client
      tags = c.tags.reject { |t| names.include?(t.name) or "default" == t.name }
      tags << names[i - 1]
 
      c.tags = tags
 
      # Tag view
      views[i - 1].tag(names[i - 1])
    end
  end
end

grab "KP_Add",      :ViewNext
grab "KP_Subtract", :ViewPrev
grab "W-A-1",       :ScreenJump1
grab "W-A-2",       :ScreenJump2
grab "W-C-r",       :SubtleReload
grab "W-C-S-r",     :SubtleRestart
grab "W-C-q",       :SubtleQuit
grab "W-B1",        :WindowMove
grab "W-B3",        :WindowResize
grab "W-B4",        :WindowRaise
grab "W-B5",        :WindowLower
grab "W-f",         :WindowFloat
grab "W-S-space",   :WindowFull
grab "W-r",         :WindowRaise
grab "W-m",         :WindowLower
grab "W-h",         :WindowLeft
grab "W-j",         :WindowDown
grab "W-k",         :WindowUp
grab "W-l",         :WindowRight
grab "W-S-c",       :WindowKill
grab "W-s",         :WindowStick

grab "C-space" do Subtle::Contrib::Selector.run; end
grab "W-space" do Subtle::Contrib::Launcher.run; end

# Scratchpad
grab "W-x" do
  if (c = Subtlext::Client.first("scratch"))
    c.toggle_stick
    c.focus
  elsif (c = Subtlext::Subtle.spawn("urxvtc -pe tabbed -name scratch"))
    c.tags  = [ ] 
    c.flags = [ :stick ]
  end
end

# Tabbing
grab "W-Tab" do
  Subtlext::Client.recent[1].focus
end

grab "W-KP_5", [ :center,                                        ]
grab "W-KP_7", [ :top_left,                                      ]
grab "W-KP_8", [ :top,                                           ]
grab "W-KP_9", [ :top_right,    :top_right45,    :top_right66    ]
grab "W-KP_4", [ :left,         :left45,                         ]
grab "W-KP_6", [ :right,                                         ]
grab "W-KP_1", [ :bottom_left                                    ]
grab "W-KP_2", [ :bottom,                                        ]
grab "W-KP_3", [ :bottom_right, :bottom_right45, :bottom_right55 ]

grab "W-Return", "urxvtc"
grab "W-S-f", "firefox-beta-bin"
grab "W-S-z", "zathura"
grab "W-S-r", "urxvtc -name rtorrent -e rtorrent"
grab "W-S-o", "xset dpms force off"

grab "W-S-l" do |c|
  Subtlext::Subtle.spawn("zathura")
  Subtlext::Subtle.spawn("gvim")
  Subtlext::Subtle.spawn("urxvtc -pe tabbed -name devterm")
end

grab "W-i", "subtler -s -u pacman"
grab "W-o", "subtler -s -u cpu"
grab "W-p", "subtler -s -u memory"

grab "XF86AudioPlay",         :MpdToggle
grab "XF86AudioPrev",         :MpdPrevious
grab "XF86AudioNext",         :MpdNext
grab "XF86AudioStop",         :MpdStop
grab "XF86AudioLowerVolume",  "amixer -q sset Master 4- unmute"
grab "XF86AudioRaiseVolume",  "amixer -q sset Master 4+ unmute"
grab "XF86AudioMute",         "amixer -q sset Master toggle"
