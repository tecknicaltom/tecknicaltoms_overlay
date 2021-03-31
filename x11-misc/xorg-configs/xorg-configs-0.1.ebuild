# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Personal configuration for xorg"
HOMEPAGE=""
SRC_URI=""

LICENSE=""
SLOT="0"
KEYWORDS="amd64 x86"

DEPEND="x11-base/xorg-server"
RDEPEND="${DEPEND}"
BDEPEND=""

S=${WORKDIR}

src_install() {
	default

	insinto /etc/X11/xorg.conf.d
	newins "${FILESDIR}"/00keyboard.conf 00keyboard.conf
}
