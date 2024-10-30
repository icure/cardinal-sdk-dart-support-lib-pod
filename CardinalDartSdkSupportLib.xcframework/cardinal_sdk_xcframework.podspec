#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint cardinal_sdk.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'cardinal_sdk_xcframework'
  s.version          = '1.0.0-RC.1'
  s.summary          = 'Cardinal SDK is a multiplatform SDK for the iCure platform.'
  s.description      = <<-DESC
Cardinal SDK is a multiplatform SDK for the iCure platform.
                       DESC
  s.homepage         = 'https://cardinalsdk.com'
  s.license          = { :file => '../../LICENSE' }
  s.author           = { 'iCure' => 'contact@icure.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '12.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'

  # If your plugin requires a privacy manifest, for example if it uses any
  # required reason APIs, update the PrivacyInfo.xcprivacy file to describe your
  # plugin's privacy impact, and then uncomment this line. For more information,
  # see https://developer.apple.com/documentation/bundleresources/privacy_manifest_files
  # s.resource_bundles = {'cardinal_sdk_privacy' => ['Resources/PrivacyInfo.xcprivacy']}
end
