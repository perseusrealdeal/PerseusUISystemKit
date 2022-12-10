Pod::Spec.new do |p|

p.name           = "PerseusUISystemKit"
p.version        = "1.1.1"
p.summary        = "Modern features for early Apple devices."
p.description    = "Dark Mode sensitive colours system and semantic, dynamic image."
p.homepage       = "https://github.com/perseusrealdeal/PerseusUISystemKit"

p.license        = { :type => "MIT", :file => "LICENSE" }
p.author         = { "perseusrealdeal" => "mzhigulin@gmail.com" }

p.source         = { :git => "https://github.com/perseusrealdeal/PerseusUISystemKit.git", :tag => p.version.to_s }

p.ios.deployment_target  = '9.3'
p.osx.deployment_target  = '10.10'

p.swift_version  = "4.2"
p.requires_arc   = true

p.source_files   = 'Sources/**/*.swift'

p.dependency       'PerseusDarkMode', '= 1.1.2'

end
