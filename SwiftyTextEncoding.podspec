#
# Be sure to run `pod lib lint SwiftyTextEncoding.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SwiftyTextEncoding'
  s.version          = '1.0.1'
  s.summary          = 'Swift implementation of some older Text/Data Encoding algorithms: base16, base32, base32hex, z-base32, word-safe base32'
  s.description      = <<-DESC
                        Swift implementation of some older Text/Data Encoding algorithms:
                            base16, base32, base32hex, z-base32, word-safe base32.
                        Implementation is focused on avoiding of crashes than algorithm effectivity.
                       DESC

  s.homepage         = 'https://github.com/LukasHakulin/SwiftyTextEncoding'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Lukas Hakulin' => 'lukas.hakulin@gmail.com' }
  s.source           = { :git => 'https://github.com/LukasHakulin/SwiftyTextEncoding.git', :tag => s.version.to_s }
  s.platform         = :ios, '10.0'
  s.requires_arc     = true

  s.ios.deployment_target = '10.0'
  s.swift_version = '5.0'
  s.source_files = 'SwiftyTextEncoding/Classes/**/*'
end
