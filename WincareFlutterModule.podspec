Pod::Spec.new do |s|
  s.name             = 'WincareFlutterModule'
  s.version          = '1.0.0'
  s.summary          = 'The pre-built iOS framework for my Flutter module.'
  s.description      = 'Contains App.xcframework and Flutter.xcframework built with flutter build ios-framework.'
  s.homepage         = 'https://github.com/uytaidev/wincare_module_release'
  s.license          = { :type => 'BSD' }
  s.author           = { 'uytaidev' => 'uytai.dev@gmail.com' }

  s.platform         = :ios, '12.0'
  s.swift_version    = '5.0'

  # IMPORTANT: keep this!
  s.source = {
    :http => 'https://github.com/uytaidev/wincare_module_release/releases/download/1.0.0/Release_1.0.0.zip'
  }

  # unzip contents are at root of zip → MUST BE EXACT
  s.vendored_frameworks = [
    '*.xcframework'
  ]

  s.user_target_xcconfig = {
    'OTHER_LDFLAGS' => '$(inherited) -framework Flutter -framework App',
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386 arm64'
  }
end
