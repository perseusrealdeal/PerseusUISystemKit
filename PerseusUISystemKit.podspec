Pod::Spec.new do |p|

p.name           = "PerseusUISystemKit"
p.version        = "1.0.0"
p.summary        = "Relying on PerseusDarkMode produces modern features for early iOS devices."
p.description    = "Includes colors system and semantic, DarkModeImageView that are sensitive to Dark Mode which access is available via PerseusDarkMode lib."
p.homepage       = "https://github.com/perseusrealdeal/PerseusUISystemKit"

p.license        = { :type => "MIT", :file => "LICENSE" }
p.author         = { "perseusrealdeal" => "mzhigulin@gmail.com" }

p.source         = { :git => "https://github.com/perseusrealdeal/PerseusUISystemKit.git", :tag => p.version.to_s }
p.platform       = :ios, '9.0'
p.swift_version  = "5.3"
p.requires_arc   = true

p.source_files   = 'Sources/**/*.swift'

end
