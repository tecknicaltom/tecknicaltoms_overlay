# Copyright 2017 Yurij Mikhalevich <yurij@mikhalevi.ch>
# Distributed under the terms of the MIT License

EAPI=6

inherit unpacker

MY_PN=zoom

DESCRIPTION="Video conferencing and web conferencing service"
BASE_SERVER_URI="https://zoom.us"
HOMEPAGE="${BASE_SERVER_URI}"
SRC_URI="
	amd64? ( ${BASE_SERVER_URI}/client/${PV}/${MY_PN}_x86_64.tar.xz -> ${P}_x86_64.tar.xz )
	x86? ( ${BASE_SERVER_URI}/client/${PV}/${MY_PN}_i686.tar.xz -> ${P}_i686.tar.xz )
"

LICENSE="ZOOM"
SLOT="0"
KEYWORDS="x86 amd64"

RESTRICT="mirror"

IUSE="pulseaudio"

DEPEND=""
RDEPEND="${DEPEND}
	pulseaudio? ( media-sound/pulseaudio )
	dev-db/sqlite
	dev-libs/glib
	dev-libs/nss
	dev-libs/libxslt
	media-libs/fontconfig
	media-libs/mesa
	x11-libs/libxcb
	x11-libs/libXcomposite
	x11-libs/libXi
	x11-libs/libXrender"

S=${WORKDIR}

src_install() {
	dodir /opt/zoom
	cp -Rp "${S}/"* "${D}/opt/"
}
