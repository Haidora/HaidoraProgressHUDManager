Pod::Spec.new do |s|
  s.name             = "HaidoraProgressHUDManager"
  s.version          = "0.1.2"
  s.summary          = "A wrapper for progress hud."
  s.description      = <<-DESC
                      A wrapper for progress hud,only one api for progress hud.
                       DESC
  s.homepage         = "https://github.com/Haidora/HaidoraProgressHUDManager"
  s.license          = 'MIT'
  s.author           = { "mrdaios" => "mrdaios@gmail.com" }
  s.source           = { :git => "https://github.com/Haidora/HaidoraProgressHUDManager.git", :tag => s.version.to_s }
  s.platform     = :ios, '7.0'
  s.requires_arc = true
  
  s.subspec 'Core' do |core|
      core.source_files = 'Pod/Classes/*'
  end
  
  s.subspec 'SVProgressHUD' do |svprogressHUD|
      svprogressHUD.source_files = 'Pod/Classes/SVProgressHUD/*'
      svprogressHUD.dependency 'HaidoraProgressHUDManager/Core'
      svprogressHUD.dependency 'SVProgressHUD'
  end
  s.subspec 'MBProgressHUD' do |mbProgressHUD|
      mbProgressHUD.source_files = 'Pod/Classes/MBProgressHUD/*'
      mbProgressHUD.resources = 'Pod/Assets/MBProgressHUD/*'
      mbProgressHUD.dependency 'HaidoraProgressHUDManager/Core'
      mbProgressHUD.dependency 'MBProgressHUD'
  end
end
