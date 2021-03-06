#
# Be sure to run `pod lib lint SecureQueue.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SecureQueue'
  s.version          = '0.2.0'
  s.summary          = 'SecureQueue is a queue that securely persists its contents to disk.'
  s.swift_version    = '4.1'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
SecureQueue leverages iOS' built-in file encryption to securely persist its contents to disk.
**This project is currently experimental and will be changing rapidly. You probably shouldn't use it yet!**
                       DESC

  s.homepage         = 'https://github.com/ResearchSuite/SecureQueue-ios'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => "Apache 2", :file => "LICENSE" }
  s.author           = { "James Kizer, Cornell Tech Foundry" => "jdk288 at cornell dot edu" }
  s.source           = { :git => 'https://github.com/ResearchSuite/SecureQueue-ios.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'SecureQueue/Classes/**/*'

  # s.resource_bundles = {
  #   'SecureQueue' => ['SecureQueue/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
