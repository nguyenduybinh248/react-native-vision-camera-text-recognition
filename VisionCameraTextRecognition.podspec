require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))
folly_compiler_flags = '-DFOLLY_NO_CONFIG -DFOLLY_MOBILE=1 -DFOLLY_USE_LIBCPP=1 -Wno-comma -Wno-shorten-64-to-32'

Pod::Spec.new do |s|
  s.name         = "VisionCameraTextRecognition"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.homepage     = package["homepage"]
  s.license      = package["license"]
  s.authors      = package["author"]

  s.platforms    = { :ios => min_ios_version_supported }
  s.source       = { :git => "https://github.com/gev2002/react-native-vision-camera-text-recognition.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,m,mm,swift}"

  s.dependency "React-Core"
  s.dependency "VisionCamera"
  s.dependency "GoogleMLKit/TextRecognition", "7.0.0"
  s.dependency "GoogleMLKit/TextRecognitionChinese", "7.0.0"
  s.dependency "GoogleMLKit/TextRecognitionDevanagari", "7.0.0"
  s.dependency "GoogleMLKit/TextRecognitionJapanese", "7.0.0"
  s.dependency "GoogleMLKit/TextRecognitionKorean", "7.0.0"
  s.dependency "GoogleMLKit/Translate", "7.0.0"

end
