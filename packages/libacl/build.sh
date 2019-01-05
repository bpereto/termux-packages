TERMUX_PKG_HOMEPAGE=http://savannah.nongnu.org/projects/acl
TERMUX_PKG_DESCRIPTION="Access control list shared library"
TERMUX_PKG_VERSION=2.2.53
TERMUX_PKG_MAINTAINER="Oliver Schmidhauser @Neo-Oli"
TERMUX_PKG_SRCURL=https://download.savannah.gnu.org/releases/acl/acl-${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=06be9865c6f418d851ff4494e12406568353b891ffe1f596b34693c387af26c7
TERMUX_PKG_FOLDERNAME=acl-$TERMUX_PKG_VERSION
TERMUX_PKG_DEPENDS="attr"
TERMUX_PKG_BUILD_IN_SRC=yes
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="--enable-gettext=no"

#termux_step_pre_configure() {
    #export LDFLAGS+=-lintl
#}
