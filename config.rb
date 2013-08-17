###
# Middleman
###

activate :automatic_image_sizes
activate :livereload
activate :directory_indexes
activate :deploy do |deploy|
  deploy.method = :git
  deploy.after_build = true
end

###
# Slim
###

set :slim, :disable_escape => false
set :slim, :pretty => true

###
# Compass
###

# Change Compass configuration
compass_config do |config|
#   config.output_style = :compact
  config.output_style = :expanded
  # config.sass_options = {:debug_info => true}
end

###
# Source
###

set :css_dir, 'css'

set :js_dir, 'js'

set :images_dir, 'img'

set :fonts_dir, 'css/fonts'

set :partials_dir, 'partials'

###
# Target
###

# http_path        = "/"

###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", :layout => false
#
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy (fake) files
# page "/this-page-has-no-template.html", :proxy => "/template-file.html" do
#   @which_fake_page = "Rendering a fake page with a variable"
# end

# Dynamite pages
# page "/dynamite-page-url.html", :proxy => "/template-file(xxx.erb.html).html", :ignore => true, :layout => "layout" do
#   @template_placeholder = ""
# end

###
# Helpers
###

# Methods defined in the helpers block are available in templates
# helpers do
# end

helpers HelperZhText
helpers HelperImage

# Build-specific configuration
configure :build do
  # Slim
  # Slim::Engine.set_default_options pretty: true

  # compass_config do |config|
  #   config.line_comments   = false
  #   config.output_style    = :compressed
  #   config.sass_options = {:debug_info => false}
  # end
  # Minify CSS on  build
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript

  # Create favicon/touch icon set from source/favicon_base.png (ideally with the dimensions of 114x114 pixels)
  # activate :favicon_maker

  # Enable cache buster
  activate :cache_buster

  # Use relative URLs
  activate :relative_assets

  # Compress PNGs after build
  # First: gem install middleman-smusher
  # require "middleman-smusher"
  # activate :smusher

  # Or use a different image path
  # set :http_path, "/Content/images/"
end