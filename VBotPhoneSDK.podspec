Pod::Spec.new do |s|
  s.name         = 'VBotPhoneSDK'
  s.version      = '1.0.3'
  s.authors      = "VBotDevTeam"
  s.summary      = "VBotPhoneSDK"
  s.description  = "VBot Phone SDK for iOS."
  s.homepage     = "https://vbot.vn"
  s.license      = 'LICENSE.txt'
  s.xcconfig = { "VBotSIP_SDK_VERSION" => s.version }
  s.source       = { :http => "https://github.com/VBotDevTeam/VBotPhone.git" }
  s.documentation_url = "https://vbot.vn"
  s.platform = :ios
  s.ios.deployment_target = '13.0'
  s.static_framework = true
  s.swift_versions = [5.0, 5.3, 5.4, 6.0]
	
    s.frameworks = [
	"Foundation",
      	"UIKit",
     	"AVFoundation",
      	"CallKit",
      	"PushKit"
    ]
    s.vendored_frameworks = [
      	"VBot/VBotPJSIP.xcframework",
      	"VBot/VBotSIP.xcframework",
	"VBot/VBotPhoneSDK.xcframework",
	"VBot/CocoaLumberjack.xcframework",
	"VBot/Reachability.xcframework",
    ]

  
end
