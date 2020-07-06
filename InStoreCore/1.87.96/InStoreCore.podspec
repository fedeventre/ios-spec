load "module_version.rb"

Pod::Spec.new do |s|
  s.name             = 'InStoreCore'
  s.version          = '1.87.96'
  s.summary          = 'InStore library for ios app.'
  s.homepage         = 'https://github.com/mercadolibre/fury_instore-ios'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Mercado Libre' => 'mpmobile@mercadolibre.com' }
  s.source           = { :http => 'https://mercadolibre.bintray.com/ios-releases/InStoreCore-' + s.version.to_s + '.zip' }

  s.platform         = :ios, '10.0'
  s.ios.deployment_target = '10.0'
  s.requires_arc     = true
  s.swift_version    = '5.0'
  s.static_framework = true


  
  s.subspec 'Dependency' do |depend|
    depend.dependency 'MLCommons', '~> 1.22'
    depend.dependency 'MLUI', '~> 5.0'
    depend.dependency 'MLUIComponents', '~> 1.3'
    depend.dependency 'MLAuthentication', '~> 0.3'
    depend.dependency 'MLNetworking', '~> 0.13'
    depend.dependency 'MLMelidata', '~> 0.3'
    depend.dependency 'MLAnalytics', '~> 2.3'
    depend.dependency 'Firebase/Analytics', '~> 6.9.0'
    depend.dependency 'PureLayout', '3.1.2'
    depend.dependency 'MercadoPagoSDKV4/ESC', '~> 4.23'
    depend.dependency 'MLReachability', '~>2.0'
    depend.dependency 'WalletCongrats', '~>1.12'
    depend.dependency 'MLCollaborators', '~> 0.1'
    depend.dependency 'RxSwift', '4.4.1'
    depend.dependency 'MLScanner', '~> 1.2'
    depend.dependency 'MLESCManager', '~> 2.0'
    depend.dependency 'lottie-ios', '~> 2.0'
    depend.dependency 'MLBiometricSecurity', '~> 0.19'
  end 

  s.subspec 'Vendor' do |core|

    core.vendored_framework = s.module_name + '-framework/InStoreCore.framework'
    core.dependency 'InStoreCore/Dependency'
  end 



  s.subspec 'Debug' do |core|

  core.source_files = [ 'InStoreCore/**/*.{h,m,swift}' ]
  core.resources    = [ 'InStoreCore/Resources/**/*.{plist,json}', 'InStoreCore/**/*.xib', 'InStoreCore/Resources/Localization/*.lproj', 'InStoreCore/Assets/**/*.xcassets' ]
  core.ios.resource_bundle = { 'ISStrings' => ['InStoreCore/Assets/**/*.lproj'] }
  core.dependency 'InStoreCore/Dependency'
  end 

  
end