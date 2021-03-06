#
# Be sure to run `pod lib lint sdlrkx.podspec' to ensure this is a
# valid spec before submitting.

Pod::Spec.new do |s|
  s.name             = "sdlrkx"
  s.version          = "0.16.2"
  s.summary          = "SDL visual self-report for ResearchKit"

  s.description      = "The Small Data Lab ResearchKit Extensions package is the easiest way to include SDL visual self-report (YADL, MEDL, PAM) and Behavioral extensions (Go / No Go, Delayed Discounting, BART)into a ResearchKit application."

  s.homepage         = "https://github.com/ResearchSuite/sdl-rkx"
  s.license          = { :type => "Apache 2", :file => "LICENSE" }
  s.author           = { "James Kizer, Cornell Tech Foundry" => "jdk288 at cornell dot edu" }
  s.source           = { :git => "https://github.com/ResearchSuite/sdl-rkx.git", :tag => s.version.to_s }
  s.swift_version    = '4.1'

  s.ios.deployment_target = '9.0'

  s.subspec 'Helpers' do |helpers|
    helpers.source_files = 'source/Helpers/Classes/**/*'
  end

  s.subspec 'VSR' do |vsr|
    vsr.source_files = 'source/VSR/Core/Classes/**/*'
    vsr.dependency 'sdlrkx/Helpers'
    vsr.dependency 'ResearchSuiteExtensions/Common', '~> 0.14'
    vsr.resources = 'source/VSR/Core/Assets/PAM.xcassets', 'source/VSR/Core/Assets/PAM.json'
    vsr.dependency 'ResearchKit', '~> 1.4'
    vsr.dependency 'Gloss', '~> 2'
  end

  s.subspec 'VSR-RSTBSupport' do |rstb|
    rstb.source_files = 'source/VSR/RSTBSupport/Classes/**/*'
    rstb.dependency 'sdlrkx/VSR'
    rstb.dependency 'ResearchSuiteExtensions/Common', '~> 0.14'
    rstb.dependency 'ResearchSuiteTaskBuilder', '~> 0.4'
    rstb.dependency 'Gloss', '~> 2'
  end

  s.subspec 'VSR-RSRPSupport' do |rsrp|
    rsrp.source_files = 'source/VSR/RSRPSupport/Classes/**/*'
    rsrp.dependency 'sdlrkx/VSR'
    rsrp.dependency 'ResearchSuiteResultsProcessor', '~> 0.2'
    rsrp.dependency 'ResearchKit', '~> 1.4'
  end

  # s.subspec 'VSR-RSRPOhmageBackend' do |obes|
  #   obes.source_files = 'source/VSR/RSRPOhmageBackendSupport/Classes/**/*'
  #   obes.dependency 'sdlrkx/VSR-RSRPSupport'
  #   obes.dependency 'OMHClient'
  # end

  s.subspec 'Behavioral' do |behavioral|
    behavioral.source_files = 'source/Behavioral/Core/Classes/**/*'
    behavioral.dependency 'sdlrkx/Helpers'
    behavioral.dependency 'ResearchSuiteExtensions/Common', '~> 0.14'
    behavioral.resources = 'source/Behavioral/Core/Assets/BART/BART.xcassets'
    behavioral.dependency 'ResearchKit', '~> 1.4'
  end

  s.subspec 'Behavioral-RSTBSupport' do |rstb|
    rstb.source_files = 'source/Behavioral/RSTBSupport/Classes/**/*'
    rstb.dependency 'sdlrkx/Behavioral'
    rstb.dependency 'ResearchSuiteTaskBuilder', '~> 0.4'
    rstb.dependency 'Gloss', '~> 2'
  end

  s.subspec 'Behavioral-RSRPSupport' do |rsrp|
    rsrp.source_files = 'source/Behavioral/RSRPSupport/Classes/**/*'
    rsrp.dependency 'sdlrkx/Behavioral'
    rsrp.dependency 'ResearchSuiteResultsProcessor', '~> 0.2'
    rsrp.dependency 'ResearchKit', '~> 1.4'
  end

  # s.subspec 'Behavioral-RSRPOhmageBackend' do |obes|
  #   obes.source_files = 'source/Behavioral/RSRPOhmageBackendSupport/Classes/**/*'
  #   obes.dependency 'sdlrkx/Behavioral-RSRPSupport'
  #   obes.dependency 'OMHClient'
  # end

  # s.subspec 'Survey' do |q|
  #   q.source_files = 'source/Survey/Core/Classes/**/*'
  #   q.dependency 'sdlrkx/Helpers'
  #   q.dependency 'ResearchKit', '~> 1.4'
  # end
  #
  # s.subspec 'Survey-RSTBSupport' do |rstb|
  #   rstb.source_files = 'source/Survey/RSTBSupport/Classes/**/*'
  #   rstb.dependency 'sdlrkx/Survey'
  #   rstb.dependency 'ResearchSuiteTaskBuilder', '~> 0.4'
  #   rstb.dependency 'Gloss', '~> 1'
  # end
  #
  # s.subspec 'Survey-RSRPSupport' do |rsrp|
  #   rsrp.source_files = 'source/Survey/RSRPSupport/Classes/**/*'
  #   rsrp.dependency 'sdlrkx/Survey'
  #   rsrp.dependency 'ResearchSuiteResultsProcessor', '~> 0.2'
  #   rsrp.dependency 'ResearchKit', '~> 1.4'
  # end
  #
  # s.subspec 'Survey-RSRPOhmageBackend' do |obes|
  #   obes.source_files = 'source/Survey/RSRPOhmageBackendSupport/Classes/**/*'
  #   obes.dependency 'sdlrkx/Survey-RSRPSupport'
  #   obes.dependency 'OMHClient'
  #   obes.dependency 'ResearchSuiteResultsProcessor/OMHHelper'
  # end

end
