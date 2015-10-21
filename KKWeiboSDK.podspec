#ure to run `pod lib lint KKWeiboSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
s.name             = "KKWeiboSDK"
s.version          = "3.1.3"
s.summary          = "Weibo iOS SDK."
s.homepage         = "http://open.weibo.com/wiki/SDK#iOS_SDK"
s.license          = { :type => 'LGPL', :text => <<-LICENSE
                        ® 1996-2015 SINA All Rights Reserved.
                        LICENSE
                     }
s.author           = { "sdk4wb" => "sdk4wb@sina.cn" }
s.source           = { :git => "https://github.com/appwgh/KKWeiboSDK.git", :tag => "#{s.version}" }

s.platform     = :ios, '7.0'
s.requires_arc = true

s.source_files = 'libWeiboSDK/*.{h,m}'
s.resource     = 'libWeiboSDK/WeiboSDK.bundle'
s.vendored_libraries  = 'libWeiboSDK/libWeiboSDK.a'

s.frameworks = 'ImageIO', 'SystemConfiguration', 'CoreText', 'QuartzCore', 'Security', 'CoreGraphics','CoreTelephony'
s.library = 'z', 'sqlite3'

end
