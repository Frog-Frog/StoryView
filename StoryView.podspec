Pod::Spec.new do |s|

  s.name         = "StoryView"
  s.version      = "1.0"
  s.summary      = "StoryView is a UIView library that can show circle layout like Instagram's stories."
  s.homepage     = "https://github.com/PKPK-Carnage/StoryView"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Tomosuke Okada" => "pkpkcarnage@gmail.com" }
  s.social_media_url   = "https://github.com/PKPK-Carnage"
  s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/PKPK-Carnage/StoryView.git", :tag => "#{s.version}" }
  s.source_files  = "Classes", "Source/*"
  s.requires_arc = true

end
