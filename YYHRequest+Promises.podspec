Pod::Spec.new do |s|
  s.name         = 'YYHRequest+Promises'
  s.version      = '0.0.1'
  s.license      = 'MIT'
  s.summary      = 'Defer YYHRequests using PromiseKit.'
  s.homepage     = 'https://github.com/angelodipaolo/YYHRequest-Promises'
  s.author       = { 'Angelo Di Paolo' => 'angelod101@gmail.com' }
  s.social_media_url = 'http://twitter.com/angelodipaolo'
  s.ios.deployment_target = '6.0'
  s.osx.deployment_target = '10.8'
  s.source       = { :git => 'https://github.com/angelodipaolo/YYHRequest-Promises.git', :tag => '0.0.1' }
  s.source_files =  'YYHRequest+PromiseKit/Classes/**/*.{h,m}'
  s.dependency 'YYHRequest', '=0.0.3'
  s.dependency 'PromiseKit', '=0.9.0'
end
