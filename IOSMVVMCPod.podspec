Pod::Spec.new do |s|
#1.
s.name               = "IOSMVVMCPod"
#2.
s.version            = "1.0.0"
#3.
s.summary         = "Sort description of 'YLogging' framework"
#4.
s.homepage        = "https://github.com/nguyenkhiemit/IOSMVVMCPod"
#5.
s.license              = "MIT"
#6.
s.author               = "AKanjariya"
#7.
s.platform            = :ios, "10.0"
#8.
s.source              = { :git => "https://github.com/nguyenkhiemit/IOSMVVMCPod.git", :tag => "1.0.0" }
#9.
s.source_files     = "IOSMVVMCPod", "IOSMVVMCPod/**/*.{h,m,swift}"

# 10
s.framework = "UIKit"
s.dependency 'Alamofire'

end


