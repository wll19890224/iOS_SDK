

Pod::Spec.new do |s|
  s.name             = 'rongPaySDK'
  s.version          = '0.1.0'
  s.summary          = '融数钱包'
  s.homepage         = 'https://github.com/Junior-Young/rongPaySDK.git'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '杨俊杰' => 'yangjunjie@rongcapital.cn' }
  s.source           = { :git => 'https://github.com/Junior-Young/rongPaySDK.git', :tag => '0.1.0' }
  # s.social_media_url = 'http://www.rongwallet.com'

  s.ios.deployment_target = '9.0'

  s.source_files = 'rongPaySDK/**/*.{h,m}'

  s.frameworks = 'UIKit','AVFoundation','Foundation'

  s.dependency 'AFNetworking', '~> 3.1.0’
  s.dependency 'FrameAccessor'
  s.dependency 'ReactiveCocoa'
  s.dependency 'IQKeyboardManager'
  s.dependency 'YYModel'
  s.dependency 'FCUUID'
  s.dependency 'SVProgressHUD'
  s.dependency 'Masonry'

end
