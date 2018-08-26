Pod::Spec.new do |s|

  s.name         = "iPlayer"
  s.version      = "1.0.4"
  s.summary      = "Fully customisable AVPlayer Library"

  s.description  = 'A fully customisable AVPlayer Library. Just load the player in your UI by passing a video url. Its that simple!'

  s.homepage     = "https://github.com/pushsoftdev/iPlayer"

  s.license      = "MIT"

  s.author             = { "Pushparaj Jayaseelan" => "pushparaj.jayaseelan" }
  s.social_media_url   = "http://twitter.com/devpushpa91"

  s.platform     = :ios, "9.3"

  #  When using multiple platforms
  # s.ios.deployment_target = "5.0"
  # s.osx.deployment_target = "10.7"
  # s.watchos.deployment_target = "2.0"
  # s.tvos.deployment_target = "9.0"


  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the location from where the source should be retrieved.
  #  Supports git, hg, bzr, svn and HTTP.
  #

  s.source       = { :git => 'https://github.com/pushsoftdev/iPlayer.git', :tag => s.version.to_s }

  s.source_files  = "iPlayer"
  # s.exclude_files = "Classes/Exclude"

  # s.public_header_files = "Classes/**/*.h"


  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  A list of resources included with the Pod. These are copied into the
  #  target bundle with a build phase script. Anything else will be cleaned.
  #  You can preserve files from being cleaned, please don't preserve
  #  non-essential files like tests, examples and documentation.
  #

  # s.resource  = "icon.png"
  # s.resources = "Images.xcassets/**/*"
  
  # s.resources = "iPlayer/**/*.{png,jpeg,jpg,storyboard,xib,xcassets}"
  
  s.resource_bundles = {
    'iPlayerView' => [
    'iPlayer/**/*.xcassets'
    ]
  }

  # s.preserve_paths = "FilesToSave", "MoreFilesToSave"


  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #

  # s.framework  = "SomeFramework"
  # s.frameworks = "SomeFramework", "AnotherFramework"

  # s.library   = "iconv"
  # s.libraries = "iconv", "xml2"


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

  # s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"

  s.swift_version = "4.1.2"
end
