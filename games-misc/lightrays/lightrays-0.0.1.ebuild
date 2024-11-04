# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit cmake

DESCRIPTION="This is a simple demonstrative reverse raytracer program"
HOMEPAGE="https://tomaszu.com/posts/ray-tracing/ray-tracing/"
SRC_URI="https://github.com/Tomaszu97/lightrays/archive/refs/tags/${P}.tar.gz"

S="${WORKDIR}/${PN}-${P}"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

# runtime
RDEPEND="media-libs/libsdl2 dev-libs/cglm"
# compile time
DEPEND="${RDEPEND}"
# build time executable dependencies
#BDEPEND=""

CMAKE_MIN_VERSION=3.10
CMAKE_BUILD_TYPE="Release"

src_configure() {
	cmake_src_configure
}

src_compile() {
	cmake_src_compile
}

src_install() {
	cmake_src_install
}
