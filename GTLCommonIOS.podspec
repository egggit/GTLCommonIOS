Pod::Spec.new do |s|
  s.name            = "GTLCommonIOS"
  s.version         = "0.0.1"
  s.summary      	= "Google Cloud Platform API for objective C client."
  s.homepage     	= "https://github.com/egggit/GTLCommonIOS"
  s.author       	= { "egggit" => "egg.github@gmail.com" }
  s.source       	= { :git  => "https://github.com/egggit/GTLCommonIOS.git", 
                      :tag  => s.version.to_s }
  s.license      	= { :type => 'MIT'}

  s.requires_arc            = false
  s.platform                = :ios
  s.frameworks	            = 'Foundation'
  s.ios.deployment_target   = '5.0'
  s.default_subspec         = 'Common'  

#//////////////////////////////////////////////////
#
# Common
#
#//////////////////////////////////////////////////

  s.subspec 'Common' do |sub|
    sub.dependency 'GTLCommonIOS/OAuth2'        
    sub.dependency 'GTLCommonIOS/Objects'        
  end

#//////////////////////////////////////////////////
#
# Common Define
#
#//////////////////////////////////////////////////

  s.subspec 'CommonDefine' do |sub|
    sub.source_files  = 'Classes/*.{h,m}'
  end

#//////////////////////////////////////////////////
#
# HTTPFetcher
#
#//////////////////////////////////////////////////

  s.subspec 'HTTPFetcher' do |sub|
    sub.source_files  = 'Classes/HTTPFetcher/*.{h,m}'
    sub.dependency 'GTLCommonIOS/CommonDefine'        
end

#//////////////////////////////////////////////////
#
# OAuth2
#
#//////////////////////////////////////////////////

  s.subspec 'OAuth2' do |sub|
    sub.source_files  = 'Classes/OAuth2/*.{h,m}',
                        'Classes/OAuth2/Touch/*.{h,m}'
    sub.dependency 'GTLCommonIOS/HTTPFetcher'        
  end

#//////////////////////////////////////////////////
#
# Objects
#
#//////////////////////////////////////////////////

  s.subspec 'Objects' do |sub|
    sub.source_files  = 'Classes/Objects/*.{h,m}'
    sub.dependency 'GTLCommonIOS/HTTPFetcher'  
    sub.dependency 'GTLCommonIOS/Utilities'        
  end

#//////////////////////////////////////////////////
#
# Utilities
#
#//////////////////////////////////////////////////

  s.subspec 'Utilities' do |sub|
    sub.source_files  = 'Classes/Utilities/*.{h,m}'
    sub.dependency 'GTLCommonIOS/CommonDefine'        
  end

end
