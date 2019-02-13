# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Centralized configuration of Firefox"
HOMEPAGE=""
SRC_URI=""

LICENSE=""
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

DEPEND=">www-client/firefox-60"
RDEPEND="${DEPEND}"
BDEPEND=""

S="${WORKDIR}"

src_install() {
	insinto "/usr/lib/firefox/defaults/pref"
	doins "${FILESDIR}/autoconfig.js"

	insinto "/usr/lib/firefox"
	doins "${FILESDIR}/firefox.cfg"
}
