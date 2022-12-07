Pod::Spec.new do |p|

p.name           = "PerseusUISystemKit"
p.version        = "1.1.0"
p.summary        = "Produces modern features for early iOS and macOS devices."
p.description    = "Includes colors system and semantic, DarkModeImageView that are sensitive to Dark Mode."
p.homepage       = "https://github.com/perseusrealdeal/PerseusUISystemKit"

p.license        = { :type => "MIT", :file => "LICENSE" }
p.author         = { "perseusrealdeal" => "mzhigulin@gmail.com" }

p.source         = { :git => "https://github.com/perseusrealdeal/PerseusUISystemKit.git", :tag => p.version.to_s }
p.platform       = :ios, '9.3'
p.swift_version  = "4.2"
p.requires_arc   = true

p.source_files   = 'Sources/**/*.swift'

p.dependency       'PerseusDarkMode', '= 1.1.0'

end
