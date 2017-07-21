

Pod::Spec.new do |s|
  s.name             = "rongPaySDK"
  s.version          = "0.1.4"
  s.summary          = "融数钱包"
  s.homepage         = "https://github.com/wll19890224/iOS_SDK.git"
  s.license          = { :type => "MIT", :file => "LICENSE" }
  s.author           = { "YangJunjie" => "327762208@qq.com" }
  s.source           = { :git => "https://github.com/wll19890224/iOS_SDK.git", :tag =>  s.version }
  # s.social_media_url = "http://www.rongwallet.com"

  s.ios.deployment_target = "9.0"

  s.source_files = "rongPaySDK/RongPayBundle.bundle"

  s.vendored_frameworks = "rongPaySDK/rongPaySDK.framework"

  s.frameworks = "UIKit","AVFoundation","Foundation"

  s.dependency "AFNetworking", "~> 3.1.0"

  s.dependency "FrameAccessor"

  s.dependency "ReactiveCocoa"

  s.dependency "IQKeyboardManager"

  s.dependency "YYModel"

  s.dependency "FCUUID"

  s.dependency "SVProgressHUD"

  s.dependency "Masonry"

  s.requires_arc = true

end
