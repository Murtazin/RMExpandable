Pod::Spec.new do |s|
  s.name             = 'RMExpandable'
  s.version          = '1.1.0'
  s.summary          = 'Package to expand and collapse cells.'
  s.description      = 'RMExpandable is a lightweight, flexible, and easy-to-use package that allows you to expand and collapse cells in a table.
                        You can customize the cell as you wish.'
  s.homepage         = 'https://github.com/Murtazin/RMExpandable'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Murtazin' => 'renatmurtazin@yahoo.com' }
  s.source           = { :git => 'https://github.com/Murtazin/RMExpandable.git', :tag => s.version.to_s }

  s.ios.deployment_target = '13.0'
  s.swift_version = '5.0'

  s.source_files = 'Sources/RMExpandable/*.swift'
  s.resource_bundles        = { 'ExpandableCell' => [ 'Sources/RMExpandable/*.xcassets' ] }
end
