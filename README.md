# aegis-voat

"Aegis" for Windows 7/8.x - Blocks all known Microsoft spying and Windows 10 upgrade elements

Details:

Block 163 bad hosts, change windows update to check/notify (do not download/install), disable automatic delivery of internet explorer via windows update, disable ceip/gwx/skydrive(aka onedrive)/spynet/telemetry/wifisense, disable remote registry, disable 31 scheduled tasks, disable windows 10 download directory, remove diagtrack, hide/uninstall 47 kb updates (see below).

Instructions:

Download, unzip, right click on aegis.cmd, click "run as administrator", follow on-screen instructions.

Internet Explorer:

Certain updates which may contain critical security patches for ie have been blocked. We also block automated delivery of ie and related updates. Due to the obvious security risk posed by running an unpatched ie we strongly advise to uninstall ie. If you continue to use ie you should probably not use this script - or manually patch and do so at your own risk.

Liability:

Everything (with the exception of setacl) is provided as an open source/non-compiled format so you can look and see for yourself what it does. It has been thoroughly tested on my own systems and scanned on VirusTotal and to the best of my knowledge it does not contain any harmful or malicious elements. I assume no liability for any problems so use it at your own risk.

License:

You are welcome to modify or share any of the code or elements and you do not have to give me credit. I do appreciate any feedback and I will give you credit if I use your ideas.

Windows Update:

This script will not block Windows Update, however it will change your Windows Update settings to check/notify but do not download/install. If you have any problems getting Windows Update to work properly after running the script (this may happen in rare cases after uninstalling some updates) you may need to run the Windows Update Troubleshooter or the System Update Readiness Tool (this can take a while to run, be patient). If you have recently installed updates and have not yet rebooted you may need to run the script again after you reboot.

kb update	description

kb971033	update for windows activation technologies

kb2882822	update for adding itracerelogger interface support

kb2902907	description not available, update was pulled by microsoft

kb2922324	description not available, update was pulled by microsoft

kb2952664	update for upgrading windows 7

kb2976978	update for windows 8.1 and windows 8

kb2977759	update for windows 7 rtm

kb2990214	update that enables you to upgrade from windows 7 to a later version of windows

kb3012973	upgrade to windows 10

kb3014460	update for windows insider preview / upgrade to windows 10

kb3015249	update that adds telemetry points to consent.exe in Windows 8.1 and Windows 7

kb3021917	update for windows 7 sp1 for performance improvements

kb3022345	update for customer experience and diagnostic telemetry

kb3035583	update installs get windows 10 app in windows 8.1 and windows 7 sp1

kb3042058	update for cipher suite priority order (contains winlogon spying elements)

kb3044374	update that enables you to upgrade from windows 8.1 to windows 10

kb3046480	update for migrating .net when upgrading to later version of windows

kb3050265	update for windows update client for windows 7 june 2015

kb3050267	update for windows update client for windows 8.1 june 2015

kb3064683	update for windows 8.1 oobe modifications to reserve windows 10

kb3065987	update for windows update client for windows 7 and windows server 2008 r2 july 2015

kb3065988	update for windows update client for windows 8.1 and windows server 2012 r2 july 2015

kb3068708	update for customer experience and diagnostic telemetry

kb3072318	update for windows 8.1 oobe modifications to reserve windows 10

kb3074677	compatibility update for upgrading to windows 10

kb3075249	update that adds telemetry points to consent.exe in windows 8.1 and windows 7

kb3075851	update for windows update client for windows 7 and windows server 2008 r2 august 2015

kb3075853	update for windows update client for windows 8.1 and windows server 2012 r2 august 2015

kb3080149	update for customer experience and diagnostic telemetry

kb3081437	august 18, 2015, compatibility update for upgrading to windows 10

kb3081454	september 8, 2015, compatibility update for upgrading to windows 10

kb3081954	update for work folders improvements in windows 7 sp1 (contains telemetry elements)

kb3083324	update for windows update client for windows 7 and windows server 2008 r2 september 2015

kb3083325	update for windows update client for windows 8.1 and windows server 2012 r2 september 2015

kb3083710	update for windows update client for windows 7 and windows server 2008 r2 october 2015

kb3083711	update for windows update client for windows 8.1 and windows server 2012 r2 october 2015

kb3086255	september 8, 2015, security update for the graphics component in windows (breaks safedisc)

kb3088195	october 13, 2015, security update for windows kernel (reported to contain a keylogger)

kb3090045	windows update for reserved devices in windows 8.1 or windows 7 sp1 (windows 10 upgrade elements)

kb3093983	security update for internet explorer: october 13, 2015 (ie spying elements)

kb3102810	windows 10 upgrade elements

kb3102812	windows 10 upgrade elements

kb3112343	update for windows update client for windows 7 and windows server 2008 r2 december 2015

kb3112336	update for windows update client for windows 8.1 and windows server 2012 r2 december 2015

kb3123862	updated capabilities to upgrade windows 8.1 and windows 7

kb3135445	windows update client for windows 7 and windows server 2008 r2: february 2016

kb3135449	windows update client for windows 8.1 and windows server 2012 r2: february 2016

Thanks to @allockse, @AxiomBreak, @elixxx, @eSh, @GGLapkizzz, @ilikeskittles, @liquidinsects, @Mixplate, @PaulDG, @pstein, @RypeDub420, @spexdi, @tor11, @Umrtvovacz, @qzxq, @thequestion, @tor11, @Umrtvovacz, and @Voluptuous_Panda.

Visit https://tiny.cc/aegis-voat for additional details and latest information
