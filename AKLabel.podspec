Pod::Spec.new do |s|
  s.name             = 'AKLabel'
  s.version          = '0.1.0'
  s.summary          = 'AKLabel is a simple implementation that uses CADisplayLink to animate the text within the given time duration.'

  s.description      = 'AKLabel is a simple implementation that uses CADisplayLink to animate the text within the given time duration. It takes text to animate along with the duration which is in seconds and animated the text over the given duration.'

  s.homepage         = 'https://github.com/akshaysyaduvanshi/AKLabel'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'akshaysyaduvanshi' => '"akshaysyaduvanshi@gmail.com"' }
  s.source           = { :git => 'https://github.com/akshaysyaduvanshi/AKLabel.git', :tag => s.version.to_s }
 s.social_media_url = 'https://twitter.com/iamakshayyadu'

  s.ios.deployment_target = '8.0'

  s.source_files = 'AKLabel/Classes/**/*'
end
