Pod::Spec.new do |s|
  s.name             = "WYWNet2"
  s.version          = "0.2.0"
  s.summary          = "A short description of WYWNet2."
  s.description      = <<-DESC
                       An optional longer description of WYWNet2

                       * Markdown format.
                       * Don't worry about the indent, we strip it!
                       DESC
  s.homepage         = "https://github.com/wyw1984/WYWNet2"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "qq2126724184" => "2126724184@qq.com" }
  s.source           = { :git => "https://github.com/wyw1984/WYWNet2.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'WYWNet2/Classes/**/*.{h,m}'
  s.resource_bundles = {
    'WYWNet2' => ['WYWNet2/Assets/*.png']
  }

  s.public_header_files = 'WYWNet2/Classes/**/*.h'
  s.dependency 'AFNetworking'
end