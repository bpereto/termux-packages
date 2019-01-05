TERMUX_PKG_HOMEPAGE=http://ranger.nongnu.org/
TERMUX_PKG_DESCRIPTION="Deduplicating and compressing backup program"
TERMUX_PKG_VERSION=1.0.11
TERMUX_PKG_SRCURL=https://github.com/borgbackup/borg/releases/download/${TERMUX_PKG_VERSION}/borgbackup-${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=fc6efd2d19454625532e0defac90cd8e8737665e10ae59edb15356ee5a99d291
TERMUX_PKG_DEPENDS="libacl,lz4,openssl,python"
#TERMUX_PKG_FOLDERNAME=borgbackubackupp-${TERMUX_PKG_VERSION}
TERMUX_PKG_BUILD_IN_SRC=yes
TERMUX_PKG_PLATFORM_INDEPENDENT=yes

termux_step_make_install () {
		export PYTHONPATH=$TERMUX_PREFIX/lib/python3.6/site-packages
		export CPPFLAGS+=" -I$TERMUX_PREFIX/include/python3.6m"
		export LDFLAGS+=" -lpython3.6m"
		export LDSHARED="$CC"
        python3.6 setup.py install --prefix=$TERMUX_PREFIX --force
}

termux_step_post_massage () {
	find . -path '*/__pycache__*' -delete
}
