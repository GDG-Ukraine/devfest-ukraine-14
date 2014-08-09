require 'sass-media_query_combiner'
require 'autoprefixer-rails'

on_stylesheet_saved do |file|
  css = File.read(file)
  File.open(file, 'w') do |io|
    io << AutoprefixerRails.process(css, browsers: ["last 2 version", "> 1%"])
  end
end

http_path = "/" 
css_dir = "../css" 
sass_dir = "./" 
images_dir = "../img" 
javascripts_dir = "../js" 

if environment == :development
    line_comments = true
	relative_assets = true 
    output_style = :expanded
end

if environment == :production
    line_comments = false
	relative_assets = true 
    output_style = :compressed
    sourcemap = true

    require 'fileutils'
        on_stylesheet_saved do |file|
            if File.exists?(file)
            filename = File.basename(file, File.extname(file))
            File.rename(file, "../css" + "/" + filename + ".min" + File.extname(file))
        end
    end
end 