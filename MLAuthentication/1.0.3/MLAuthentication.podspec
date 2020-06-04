
Pod::Spec.new do |s|
  s.name             = "MLAuthentication"
  s.version          = "1.0.3"
  s.summary          = "MercadoLibre mobile Authentication components"
  s.homepage         = "https://www.mercadolibre.com"
  s.license          = 'MIT'
  s.author           = { "Christian Biancucci" => "christian.biancucci@mercadolibre.com" }
  s.source           = { :http => 'https://mercadolibre.bintray.com/ios-releases/MLAuthenticationPod/' + s.version.to_s + '/MLAuthenticationPod-' + s.version.to_s + '.zip' }
  s.module_name  		 = 'MLAuthenticationPod'

  s.platform     = :ios, '10.0'
  s.requires_arc = true

  s.subspec "Vendored" do |framework|
    framework.vendored_framework = 'MLAuthentication/MLAuthentication.framework'
    framework.dependency 'MLCommons', '~> 1.8'
    framework.dependency 'MLSecurity', '~> 1.0'
  end
end


