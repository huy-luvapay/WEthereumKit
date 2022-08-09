#
# Be sure to run `pod lib lint WEthereumKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'WEthereumKit'
  s.version          = '0.1.62'
  s.summary          = 'A short description of WEthereumKit.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/huy-luvapay'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'phuhuy2016' => 'huy.van@epapersmart.com' }
  s.source           = { :git => 'https://github.com/huy-luvapay/WEthereumKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '11.0'
  
  s.swift_version = '5.0'
  
  s.source_files = 'WEthereumKit/Classes/**/*.{h,m,mm,swift}'
  
  s.resources = [
  ]

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  
    s.dependency 'Alamofire', '~> 5.6.1'
    s.dependency 'SnapKit'
    s.dependency 'RxSwift', '~> 5.0'
    s.dependency 'RxCocoa'
    s.dependency 'BigInt'
    s.dependency 'GRDB.swift'
    s.dependency 'BlueSocket'
        
    s.dependency 'OpenSslKit.swift', '~> 1.0'
    s.dependency 'Secp256k1Kit.swift', '~> 1.0'
    s.dependency 'HdWalletKit.swift', '~> 1.5'
    s.dependency 'ObjectMapper', '~> 4.2.0'
    s.dependency 'SwiftNIO', '~> 2.40.0'
    s.dependency 'SwiftNIOHTTP1', '~> 2.40.0'
    s.dependency 'SwiftNIOWebSocket', '~> 2.40.0'
    s.dependency 'SwiftNIOSSL', '~> 2.19.0'
    s.dependency 'SwiftNIOFoundationCompat', '~> 2.40.0'
    
    
    s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end
