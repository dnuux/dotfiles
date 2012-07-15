# -*- encoding: utf-8 -*-

# Subtle-contrib stuff
begin
  require "#{ENV["HOME"]}/.config/subtle/subtle-contrib/ruby/selector.rb" 
  require "#{ENV["HOME"]}/.config/subtle/subtle-contrib/ruby/launcher.rb"

  # Set fonts
  Subtle::Contrib::Selector.font = "xft:Pragmata:pixelsize=12:antialias=true"
  Subtle::Contrib::Launcher.fonts = [
    "xft:Pragmata:pixelsize=80:antialias=true",
    "xft:Pragmata:pixelsize=12:antialias=true" 
  ]

  # Set launcher path
  Subtle::Contrib::Launcher.paths = [ "/usr/bin", "#{ENV["HOME"]}/bin" ]
rescue LoadError => error
  puts error
end
            
# Options
set :increase_step,     5
set :border_snap,       10
set :default_gravity,   :center
set :urgent_dialogs,    false
set :honor_size_hints,  false
set :gravity_tiling,    false
set :click_to_focus,    false
set :skip_pointer_warp, false
set :skip_urgent_warp,  false

# Screens
load_config "screens.rb"

# Styles
load_config "styles.rb"

# Gravities
load_config "gravities.rb"

# Grabs
load_config "grabs.rb"

# Tags
load_config "tags.rb"

# Views
load_config "views.rb"

# Sublets
load_config "sublets.rb"

on :start do
   # Create missing tags
   views = Subtlext::View.all.map { |v| v.name }
   tags  = Subtlext::Tag.all.map { |t| t.name }
 
   views.each do |v|
     unless tags.include?(v)
       t = Subtlext::Tag.new(v)
       t.save
     end
  end
end

on :client_create do |c|
  #view = Subtlext::View.current
  #tags = c.tags.map { |t| t.name }

  ## Add tag to view
  #view.tag(view.name) unless(view.tags.include?(view.name))

  ## Exclusive for clients with default tag only
  #if tags.include?("default") and 1 == tags.size
    #c.tags = [ view.name ]
  #end

  ## Focus client on creation
  c.views.first.jump
  c.focus
end

#  vim: set ts=2 sw=2 tw=0 :
