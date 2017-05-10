#edicy_cms

## Accounts
clientbase admin@voog.com->ott@voog.com:secret
voog.voog.computer ->std: ott@voog.com:E17


brew tap homebrew/versions
brew update
brew uninstall mysql mysql2 # probs auto updated to 5.7
brew install mysql56 # 5.6 locked version
gem uninstall mysql mysql2 # uninstall legacy gems
bundle install # to install / rebuild new refs

https://gist.github.com/benlinton/d24471729ed6c2ace731


bundle exec rake -T

https://github.com/brianmario/mysql2/issues/603
https://gist.github.com/benlinton/d24471729ed6c2ace731
https://gorails.com/setup/osx/10.10-yosemite
https://robots.thoughtbot.com/starting-and-stopping-background-services-with-homebrew

## fileser
bundle show highline

	PassengerRuby /Users/otttooming/.rvm/wrappers/ruby-2.1.2@edicy3_fileservice2/ruby


## DNS
### Redirect VM dns requests to host

http://renier.morales-rodriguez.net/post/90674523562/sharing-host-vpn-with-virtualbox-guest

	$ VBoxManage list vms
	$ VBoxManage modifyvm "VM name" --natdnshostresolver1 on

/etc/hosts

	192.168.4.23 voog.voog.computer
	192.168.4.23 static.voog.computer

### Hosts

http://stackoverflow.com/questions/17995120/using-system-hosts-file-for-android-emulators

### Android emu networking hosts
http://developer.android.com/tools/devices/emulator.html#emulatornetworking
http://borkweb.com/story/setting-etchosts-on-an-android-emulator-using-a-mac

### DNSmasque
https://ajdg.solutions/2015/03/23/the-ultimate-development-environment-for-mac-os-x/

## SCSS lint

/Users/me/.rvm/gems/ruby-x.x.x/bin/scss-lint

replace bin with wrappers, so you get:

/Users/me/.rvm/gems/ruby-x.x.x/wrappers/scss-lint

https://github.com/AtomLinter/linter-scss-lint/issues/68
https://atom.io/packages/linter-scss-lint

## CSS comb

.csscomb.json

https://github.com/jfroffice/csscomb.js
https://github.com/jfroffice/csscomb.js/blob/master/config/recess.json

https://github.com/brigade/scss-lint/blob/master/data/property-sort-orders/recess.txt

