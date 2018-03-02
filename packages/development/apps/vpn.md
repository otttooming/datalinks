# GlobalProtect

## No connectivity

Network traffic is not passing through. Seems to be with an issue to the kext loading.

### Pan.GPS.log

```
P2732-T775   Feb 19 14:52:04:551308 Info ( 574): User Switch Monitor init finished
P2732-T775   Feb 19 14:52:04:551352 Info ( 213): Couldn't obtain debug level from settings
P2732-T775   Feb 19 14:52:04:551827 Info ( 221): PrelogonEnabled is 0
P2732-T775   Feb 19 14:52:04:551907 Info ( 496): cannot open /var/run/PanGPS.pid, assume no old instance running
P2732-T21519 Feb 19 14:52:04:551975 Info ( 656): debug thread starts
/Applications/GlobalProtect.app/Contents/Resources/pangpd_10.9.kext failed to load - (libkern/kext) system policy prevents loading; check the system/kernel logs for errors or try kextutil(8).
P2732-T775   Feb 19 14:52:04:552590 Info (  34): Mac OS X 10.13.3
P2732-T775   Feb 19 14:52:04:558599 Info ( 131): DRBG selftest: PASSED
P2732-T775   Feb 19 14:52:04:767481 Debug(  60): driver installed
P2732-T775   Feb 19 14:52:04:767919 Error(  67): Cannot initialize driver: 1
P2732-T775   Feb 19 14:52:04:767960 Info ( 491): Start main thread run loop.
```

### Possible solutions

* [Live Community - GlobalProtect Requests System Keychain Access on M... - Live Community](https://live.paloaltonetworks.com/t5/Management-Articles/GlobalProtect-Requests-System-Keychain-Access-on-Mac-OS-X/ta-p/53332)
* [macOS High Sierra and GlobalProtect HIP for encrypted FS failing : paloaltonetworks](https://www.reddit.com/r/paloaltonetworks/comments/72jlnf/macos_high_sierra_and_globalprotect_hip_for/)
* [Removing Global Protect from my mac | MacRumors Forums](https://forums.macrumors.com/threads/removing-global-protect-from-my-mac.1433833/)
* [acwebsecagent error - Google Search](https://www.google.ee/search?q=acwebsecagent+error&oq=acwebsecagent+error&aqs=chrome..69i57.2065j0j9&sourceid=chrome&ie=UTF-8)
* [Live Community - GlobalProtect Requests System Keychain Access on M... - Live Community](https://live.paloaltonetworks.com/t5/Management-Articles/GlobalProtect-Requests-System-Keychain-Access-on-Mac-OS-X/ta-p/53332)
* [Yosemite VPN (PPTP) issue | Official Apple Support Communities](https://discussions.apple.com/thread/6606981?start=45&tstart=0)
* [Yosemite VPN (PPTP) issue | Official Apple Support Communities](https://discussions.apple.com/thread/6606981?start=45&tstart=0)
* [Remove the GlobalProtect Enforcer Kernel Extension](https://www.paloaltonetworks.com/documentation/40/globalprotect/gp-agent-user-guide/globalprotect-agent-for-mac/remove-the-globalprotect-enforcer-kernel-extension)
* [globalprotect pangpd failed to load - Google Search](https://www.google.ee/search?biw=1680&bih=931&ei=1tuKWpWeEtCRsAfbgLCQDA&q=globalprotect+pangpd+failed+to+load&oq=globalprotect+pangpd+failed+to+load&gs_l=psy-ab.3...23001.35735.0.35952.26.26.0.0.0.0.175.2457.13j11.24.0....0...1.1j2.64.psy-ab..2.19.1964...0i13k1j0i13i30k1j33i160k1j33i21k1.0.F8bZSOL4WfU)
* [Technical Note TN2459: User-Approved Kernel Extension Loading](https://developer.apple.com/library/content/technotes/tn2459/_index.html)
* [Kext Issue/Unable to Unload Kext | ExpressVPN](https://www.expressvpn.com/support/troubleshooting/log-items/unable-to-connect-kext-issue-unable-to-unload-kext/)
