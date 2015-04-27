Pod::Spec.new do |spec|
  spec.name         = 'InnerShadowView'
  spec.version      = '1.0'
  spec.license      = { :type => 'MIT' }
  spec.homepage     = 'https://github.com/tanderus/InnerShadowView'
  spec.authors      = { 'Pavel Krasnobrovkin' => '6lackk@gmail.com' }
  spec.summary      = 'UIView category for adding the inset shadows.'
  spec.source       = { :git => 'https://github.com/tanderus/InnerShadowView.git' }
  spec.source_files = 'UIView+InnerShadow.{h,m}'
end