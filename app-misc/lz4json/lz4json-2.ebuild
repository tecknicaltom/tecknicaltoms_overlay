# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="A utility to unpack lz4json files as generated by Firefox"
HOMEPAGE="https://github.com/andikleen/lz4json"
SRC_URI="https://github.com/andikleen/lz4json/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Unknown"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="app-arch/lz4"
RDEPEND="${DEPEND}"
BDEPEND=""

src_install() {
	dobin lz4jsoncat
}