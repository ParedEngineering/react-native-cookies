require 'json'

# expect package.json in current dir
package_json_filename = File.expand_path("./package.json", __dir__)

# load the spec from package.json
spec = JSON.load(File.read(package_json_filename))

Pod::Spec.new do |s|
  s.name             = spec['name']
  s.version          = spec['version']
  s.summary          = spec['description']
  s.requires_arc = true
  s.author        = 'n/a'
  s.license       = 'MIT'
  s.homepage      = 'n/a'
  s.platform     = :ios, "9.0"
  s.source       = { :git => 'https://github.com/joeferraro/react-native-cookies.git', :tag => 'v3.2.0' }
  s.source_files = "ios/**/*.{h,m}"
  s.dependency 	'React' 
end
