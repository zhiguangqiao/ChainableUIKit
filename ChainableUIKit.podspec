#
# Be sure to run `pod lib lint ChainableUIKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ChainableUIKit'
  s.version          = '1.0.0'
  s.summary          = 'swift lib， ChainableUIKit.'

  s.description      = <<-DESC
  链式调用设置 UIKit 组件
                       DESC
  s.homepage         = 'https://github.com/zhiguangqiao/ChainableUIKit'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'qiaozhiguang' => '860638830@qq.com' }
  s.source           = { :git => 'https://github.com/zhiguangqiao/ChainableUIKit.git', :tag => s.version.to_s }
  s.ios.deployment_target = '10.0'
  s.source_files = 'ChainableUIKit/Classes/**/*'
  s.dependency 'SnapKit'
  s.frameworks = 'UIKit'
end
