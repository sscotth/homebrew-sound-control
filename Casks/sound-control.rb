cask 'sound-control' do
  version '2.0.3'
  sha256 '342f42f5ebeb502ecf3b602670b5e51659c510d4c5cdb1a15e51afae4f1306a7'

  # staticz.net was verified as official when first introduced to the cask
  url "http://staticz.net/downloads/SoundControlInstaller_#{version}.dmg"
  name 'Sound Control'
  homepage 'https://staticz.com/soundcontrol/'

  pkg 'Sound Control Installer.pkg'

  uninstall launchctl: 'com.staticz.soundcontrol.*',
            quit:      'com.staticz.SoundControl',
            pkgutil:   'com.staticz.installer.soundcontrol.*'
end
