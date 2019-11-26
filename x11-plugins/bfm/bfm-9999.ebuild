# Copyright 1999-2018 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit toolchain-funcs

DESCRIPTION="a dockapp and gkrellm plug-in combining timecop's bubblemon and wmfishtime"
HOMEPAGE="https://github.com/JNRowe-retired/bfm"

LICENSE="GPL-2"
SLOT="0"
IUSE="gkrellm"


if [ "${PV#9999}" != "${PV}" ] ; then
	inherit git-r3
	SRC_URI=""
	EGIT_REPO_URI="https://github.com/JNRowe-retired/${PN}"
    KEYWORDS="amd64 ppc ~sparc x86 ~amd64-linux ~x86-linux"
else
    SRC_URI="https://github.com/JNRowe-retired/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"
    KEYWORDS="~amd64 ~ppc ~sparc ~x86 ~amd64-linux ~x86-linux"
fi

RDEPEND="x11-libs/gtk+:2
	x11-libs/libX11
	x11-libs/libXext"
DEPEND="${RDEPEND}
	virtual/pkgconfig
	gkrellm? ( >=app-admin/gkrellm-2 )"

PATCHES=( "${FILESDIR}"/${P}-makefile.patch )

src_compile() {
	emake CC="$(tc-getCC)" GENTOO_LDFLAGS="${LDFLAGS}"
	use gkrellm && emake gkrellm CC="$(tc-getCC)"
}

src_install() {
	dobin bubblefishymon

	doman doc/*.1
	dodoc ChangeLog* README* doc/*.sample

	if use gkrellm; then
		insinto /usr/$(get_libdir)/gkrellm2/plugins
		doins gkrellm-bfm.so
	fi
}
