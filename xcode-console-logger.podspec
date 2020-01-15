Pod::Spec.new do |s|


s.name         = "xcode-console-logger"
s.version      = "0.0.1"
s.summary      = "xcode console logger"

s.description  = <<-DESC
    xcode控制台调试日志实现
DESC

s.homepage     = "https://github.com/yunhaiwu"

# s.license      = { :type => "MIT", :file => "LICENSE" }

s.author       = { "吴云海" => "halayun@gamil.com" }


s.platform     = :ios, "7.0"

s.source       = { :git => "https://github.com/yunhaiwu/cslogging-xcode-console.git", :tag => "#{s.version}" }

s.source_files  = "Logger/*.{h,m}"

s.public_header_files = "Logger/*.h"

s.frameworks = "Foundation"

s.requires_arc = true

s.dependency "CocoaService"

end
