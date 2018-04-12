#
# Be sure to run `pod lib lint ResearchSuiteApplicationFramework.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ResearchSuiteApplicationFramework'
  s.version          = '0.14.1'
  s.summary          = 'The ResearchSuite Application Framework is the easiest way to build mobile health research studies.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  The ResearchSuite Application Framework is the easiest way to build mobile health research studies.
  NOTE: VERY EXPERIMENTAL!!
                       DESC

  s.homepage         = 'https://github.com/jdkizer9/ResearchSuiteApplicationFramework-iOS'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'Apache 2.0', :file => 'LICENSE' }
  s.author           = { 'jdkizer9' => 'jdkizer9@users.noreply.github.com' }
  s.source           = { :git => 'https://github.com/jdkizer9/ResearchSuiteApplicationFramework-iOS.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'
  s.swift_version = '4.1'

  s.subspec 'Core' do |core|
    core.source_files = 'Source/Core/Classes/**/*'
    core.resources = 'Source/Core/Storyboards/**/*'
    core.dependency 'ResearchKit', '~> 1.4'
    core.dependency 'ReSwift', '~> 3.0'
    core.dependency 'ResearchSuiteTaskBuilder', '~> 0.8'
    core.dependency 'ResearchSuiteResultsProcessor', '~> 0.8'
    core.dependency 'ResearchSuiteExtensions', '~> 0.12'
    core.dependency 'Gloss', '~> 2'
  end

  s.default_subspec = 'Core'
end
