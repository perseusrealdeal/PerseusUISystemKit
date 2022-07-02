Pod::Spec.new do |p|

p.name           = "PerseusUISystemKit"
p.version        = "0.0.1"
p.summary        = "My summary"
p.description    = "MUST BE LONGER THAN SUMMARY"
p.homepage       = "https://github.com/perseusrealdeal/PerseusUISystemKit"

p.license        = { :type => "MIT", :file => "LICENSE" }
p.author         = { "perseusrealdeal" => "mzhigulin@gmail.com" }

p.source         = { :git => "https://github.com/perseusrealdeal/PerseusUISystemKit.git", :tag => p.version.to_s }
p.platform       = :ios, '9.0'
p.swift_version  = "5.3"
p.requires_arc   = true

p.source_files   = 'ColorHelper.swift'

end
