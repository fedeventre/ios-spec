
Pod::Spec.new do |s|
  s.name             = "MLAuthentication"
  s.version          = "1.0.4"
  s.summary          = "MercadoLibre mobile Authentication components"
  s.homepage         = "https://www.mercadolibre.com"
  s.license          = 'MIT'
  s.author           = { "Christian Biancucci" => "christian.biancucci@mercadolibre.com" }
  s.source           = { :http => 'https://mercadolibre.bintray.com/ios-releases/MLAuthenticationPod-1.0.4.zip'}
  s.module_name    = 'MLAuthenticationPod'

  s.platform     = :ios, '10.0'
  s.requires_arc = true

  s.subspec "Vendored" do |framework|
    framework.vendored_framework = 'MLAuthenticationPod/MLAuthentication.framework'

    framework.subspec "Dependecies" do |depend|
      depend.dependency 'MLCommons', '~> 1.8'
      depend.dependency 'MLSecurity', '~> 1.0'

    end
    
  end

  s.subspec "Debug" do |debug|
    debug.source_files = 'MLAuthenticationPod/**/*.{h,m}'

    debug.dependency 'MLCommons/Core', '~> 1.8'
    debug.dependency 'MLSecurity', '~> 1.0'

  end
end


