# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

DESCRIPTION="Ncurses based hex editor with vi/vim-like interface."
HOMEPAGE="http://bviplus.sourceforge.net/"
SRC_URI="mirror://sourceforge/${PN}/${P}.tgz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="sys-libs/ncurses
		sys-libs/glibc"
RDEPEND="${DEPEND}"

src_install()
{
	emake PREFIX="${D}" install
}
