# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="This is a simple demonstrative reverse raytracer program"
HOMEPAGE="https://tomaszu.com/posts/ray-tracing/ray-tracing/"
SRC_URI="https://github.com/Tomaszu97/lightrays/archive/refs/tags/${P}.tar.gz"

S="${WORKDIR}/${PN}-${P}"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

# runtime
RDEPEND="media-libs/libsdl2"
# compile time
DEPEND="${RDEPEND}"
# build time executable dependencies
#BDEPEND=""

src_compile() {
	emake
}

src_install() {
	emake install
}
