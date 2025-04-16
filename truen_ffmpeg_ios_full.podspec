Pod::Spec.new do |s|
  s.name             = 'truen_ffmpeg_ios_full'
  s.version          = '6.0.LTS'
  s.summary          = 'FFMPEG 6.0.LTS iOS Full for EGLOO'

  s.description      = <<-DESC
공식 FFMPEG Kit의 지원이 중단되어 내부적으로 배포
공식적인 사용 용도가 아닌 내부에서 고정적인 라이브러리로 사용하기 위한 용도
                       DESC

  s.homepage         = 'https://github.com/SungMinCho-Kor/FFMPEG_iOS'
  s.license          = { :type => 'LGPL-3.0', :file => 'Frameworks/ffmpegkit.xcframework/ios-arm64/ffmpegkit.framework/LICENSE' }
  s.author           = { 'csm654' => 'csm654@truen.co.kr' }
  s.source           = { :git => 'https://github.com/SungMinCho-Kor/FFMPEG_iOS.git', :tag => s.version.to_s }

  s.ios.deployment_target = '12.0'
  s.swift_version = '5.0'
#  s.requires_arc = true

  s.libraries = ["z", "bz2", "c++", "iconv"]
  s.frameworks = 'AudioToolbox', 'AVFoundation', 'CoreMedia', 'VideoToolbox'
  s.ios.vendored_frameworks = [
    "Frameworks/ffmpegkit.xcframework",
    "Frameworks/libavcodec.xcframework",
    "Frameworks/libavdevice.xcframework",
    "Frameworks/libavfilter.xcframework",
    "Frameworks/libavformat.xcframework",
    "Frameworks/libavutil.xcframework",
    "Frameworks/libswresample.xcframework",
    "Frameworks/libswscale.xcframework"
  ]
end
