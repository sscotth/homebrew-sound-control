cask 'sound-control' do
  version '2.1.0'
  sha256 '15f5887bb4038bade462e14fc34bde423f99b63e96110f9384007ed89915fcc2'

  # staticz.net was verified as official when first introduced to the cask
  url "http://staticz.net/downloads/SoundControlInstaller_#{version}.dmg"
  name 'Sound Control'
  homepage 'https://staticz.com/soundcontrol/'

  pkg 'Sound Control Installer.pkg'

  uninstall launchctl: 'com.staticz.soundcontrol.*',
            quit:      'com.staticz.SoundControl',
            pkgutil:   'com.staticz.installer.soundcontrol.*'
end
