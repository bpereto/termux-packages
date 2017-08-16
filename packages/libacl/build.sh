TERMUX_PKG_HOMEPAGE=http://savannah.nongnu.org/projects/acl
TERMUX_PKG_DESCRIPTION="Access control list shared library"
TERMUX_PKG_VERSION=2.2.52
TERMUX_PKG_MAINTAINER="Oliver Schmidhauser @Neo-Oli"
TERMUX_PKG_SRCURL=https://download.savannah.gnu.org/releases/acl/acl-${TERMUX_PKG_VERSION}.src.tar.gz
TERMUX_PKG_SHA256=179074bb0580c06c4b4137be4c5a92a701583277967acdb5546043c7874e0d23
TERMUX_PKG_FOLDERNAME=acl-$TERMUX_PKG_VERSION
TERMUX_PKG_DEPENDS="attr"
TERMUX_PKG_BUILD_IN_SRC=yes
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="--enable-gettext=no"
TERMUX_PKG_MAKE_INSTALL_TARGET="install install-lib install-dev"

#termux_step_pre_configure() {
    #export LDFLAGS+=-lintl
#}
