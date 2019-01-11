# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

class admin_packages::7zip {
	
	file { '7z_1514_x64_exe' :
		ensure => file,
		target => "C:\\ronin\\packages\\7z1514-x64.exe",
		source => "https://s3.amazonaws.com/windows-opencloudconfig-packages/RoninPackages/admin+packages/7z1514-x64.exe",
	}

	package { '7zip' :
		ensure          => installed,
		source          => "C:\\ronin\\packages\\7z1514-x64.exe",
		install_options => ['/s'],
	}
}
