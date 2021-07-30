# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit gkrellm-plugin

DESCRIPTION="GKrellm2 plugin to current time in several configurable timezones."
HOMEPAGE="https://mamuti.net/gkrellm/gkrellm-tz.en.html"
SRC_URI="https://mamuti.net/files/gkrellm-tz/${P}.tar.xz"

LICENSE="GPL-2"
SLOT="2"
KEYWORDS="alpha amd64 ppc sparc x86"
IUSE=""

DEPEND="app-admin/gkrellm:2[X]"
RDEPEND="${DEPEND}"

S=${WORKDIR}/${P/s/S}

PATCHES=(
    "${FILESDIR}/${P}-deprecated-warnings.patch"
)
