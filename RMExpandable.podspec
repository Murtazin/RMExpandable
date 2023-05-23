#
# Be sure to run `pod lib lint RMExpandable.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'RMExpandable'
  s.version          = '0.1.0'
  s.summary          = 'A short description of RMExpandable.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/Murtazin/RMExpandable'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Murtazin' => 'renatmurtazin@yahoo.com' }
  s.source           = { :git => 'https://github.com/Murtazin/RMExpandable.git', :tag => s.version.to_s }

  s.ios.deployment_target = '13.0'
  s.swift_version = '5.0'

  s.source_files = 'RMExpandable/Sources/**/*'
  
  s.resource_bundles = { 'RMExpandable' => ['RMExpandable/Assets/*.png'] }
  s.frameworks = 'UIKit'
end
