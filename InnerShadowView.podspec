#
#  Be sure to run `pod spec lint InnerShadowView.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name          = "InnerShadowView"
  s.version       = "1.0.0"
  s.license       = "MIT"
  s.summary       = "UIView category for adding inset shadows"
  s.homepage      = "https://github.com/tanderus/InnerShadowView"
  s.author        = { "Pavel Krasnobrovkin" => "6lackk@gmail.com" }
  s.source        = { :git => "https://github.com/tanderus/InnerShadowView.git", :tag => "1.0.0" }
  s.source_files  = "UIView+InnerShadow.{h,m}"
  s.platform      = "ios"
end
