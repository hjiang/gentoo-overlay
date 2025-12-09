# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit cmake

DESCRIPTION="Utility to record environment variables in a form readable by Emacs"
HOMEPAGE="https://github.com/hjiang/envel"
SRC_URI="https://github.com/hjiang/${PN}/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"

BDEPEND=">=dev-build/cmake-3.25"

src_install() {
	dobin "${BUILD_DIR}"/src/gen-envel
}
