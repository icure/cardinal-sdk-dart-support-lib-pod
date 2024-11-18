Pod::Spec.new do |spec|
  spec.name                = "CardinalDartSdkSupportLib"
  spec.version             = "1.0.0-RC.5"
  spec.summary             = "Support library for the dart implementation of the Cardinal SDK."
  spec.description         = <<-DESC
  Support library for the dart implementation of the Cardinal SDK.
  This library is not meant to be used directly
                   DESC
  spec.homepage            = "https://cardinalsdk.com/en"
  spec.license             = "MIT"
  spec.author              = "iCure"
  spec.platform            = :ios, '12.0'
  spec.source              = { :git => "https://github.com/icure/cardinal-sdk-dart-support-lib-pod.git", :tag => "#{spec.version}" }
  spec.vendored_frameworks = 'CardinalDartSdkSupportLib.xcframework'
end
