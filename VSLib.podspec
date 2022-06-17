#
#  Be sure to run `pod spec lint VSLib.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

    spec.name         = "VSLib"
    spec.version      = "0.0.1"
    spec.summary      = "A short description of VSLib."
    spec.description  = "VSLib is a swift framework that can call an agent"
    spec.homepage     = "https://github.com/KopievDev/VSLib"
    spec.license = "MIT"
    spec.author = { "Ivan Kopiev" => "kopiev@mustdev.ru" }
    spec.platform     = :ios, "14.3"
    spec.swift_version = "5.0"
    spec.ios.vendored_frameworks = 'VSLib.framework'
    spec.source = { :git => "https://github.com/KopievDev/VSLib.git", :tag => "#{spec.version}" }
    spec.exclude_files = "Classes/Exclude"
end
