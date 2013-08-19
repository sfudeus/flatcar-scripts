# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
CROS_WORKON_PROJECT="coreos/etcdctl"
CROS_WORKON_LOCALNAME="etcdctl"
CROS_WORKON_REPO="git://github.com"
CROS_WORKON_COMMIT="689b26571ddc21bae9d94bec4eea231852362349" # v0.1.0 tag

inherit cros-workon

DESCRIPTION="etcd command line client"
HOMEPAGE="https://github.com/coreos/etcdctl"
SRC_URI=""

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

DEPEND=">=dev-lang/go-1.1"
RDEPEND=""

src_compile() {
	./build
}

src_install() {
	dobin ${S}/${PN}
}
