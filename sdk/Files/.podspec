

Pod::Spec.new do |s|
    s.name         = ""
    s.version      = "0.12.0"
    s.summary      = "SUMMARY"
    s.description  = "DESCRIPTION"
    s.homepage     = ""
    s.license      = "Apache License, Version 2.0"
    s.author             = { "joshgav" => "josh.gavant@microsoft.com" }
    s.social_media_url   = "http://twitter.com/OpenAtMicrosoft"

    s.platform     = :ios
    s.ios.deployment_target = "8.0"
    s.source       = { :git => ".git",
                     :tag => "v#{s.version}"
                   }
    s.exclude_files = "**/Build/**/*"
    s.requires_arc = true
    s.source_files = "Fetchers/*.{h,m}","Model/*.{h,m}","MSFiles.h"

    s.dependency "orc"
    s.dependency 'ADALiOS', '=1.2.4'
    s.dependency 'LiveSDK', '=5.6.1'

end
