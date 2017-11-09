cask 'sound-control' do
  version '2.1.1'
  sha256 'e96448e7dd0161404660f1f46e3ba62cd8cfbde3e899b591f9cb64c0f81622e7'

  # staticz.net was verified as official when first introduced to the cask
  url "http://staticz.net/downloads/SoundControlInstaller_#{version}.dmg"
  name 'Sound Control'
  homepage 'https://staticz.com/soundcontrol/'

  pkg 'Sound Control Installer.pkg'

  uninstall launchctl: 'com.staticz.soundcontrol.*',
            quit:      'com.staticz.SoundControl',
            pkgutil:   'com.staticz.installer.soundcontrol.*'
end
