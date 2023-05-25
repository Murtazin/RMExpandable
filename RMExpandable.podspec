Pod::Spec.new do |s|
  s.name             = 'RMExpandable'
  s.version          = '0.1.1'
  s.summary          = 'RMExpandable is a lightweight, flexible, and easy-to-use package that allows you to expand and collapse cells in a table.
                        You can customize the cell as you wish.'
  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC
  s.homepage         = 'https://github.com/Murtazin/RMExpandable'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Murtazin' => 'renatmurtazin20@gmail.com' }
  s.source           = { :git => 'https://github.com/Murtazin/RMExpandable.git', :tag => s.version.to_s }
  s.ios.deployment_target = '13.0'
  s.swift_version = '5.0'
  s.source_files = 'Sources/RMExpandable/**/*'
  s.frameworks = 'UIKit'
end
