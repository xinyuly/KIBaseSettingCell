

Pod::Spec.new do |s|

s.name         = "KIBaseSettingCell"
s.version      = "1.0.0"
s.summary      = "设置页面常见cell类型封装"

s.homepage     = "https://github.com/xinyuly/KIBaseSettingCell"
s.license      = "MIT"
s.author       = {"lixinyu" => 'li_xinyuly@163.com'}

s.platform     = :ios, "8.0"

s.source       = { :git => 'https://github.com/xinyuly/KIBaseSettingCell.git', :tag => s.version }

s.source_files  = "Source/*.{h,m}"


s.requires_arc = true



end

