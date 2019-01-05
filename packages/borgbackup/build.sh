TERMUX_PKG_HOMEPAGE=https://www.borgbackup.org/
TERMUX_PKG_DESCRIPTION="Deduplicating and compressing backup program"
TERMUX_PKG_VERSION=1.1.8
TERMUX_PKG_SRCURL=https://github.com/borgbackup/borg/releases/download/${TERMUX_PKG_VERSION}/borgbackup-${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=0b4370480ca0114cb0bb534286241af8a35c6ffb71404dfa409ed06099661b63
TERMUX_PKG_DEPENDS="libacl,liblz4,zstd,openssl,python"
TERMUX_PKG_BUILD_IN_SRC=yes
TERMUX_PKG_PLATFORM_INDEPENDENT=yes

termux_step_make_install () {
        export PYTHONPATH=$TERMUX_PREFIX/lib/python3.7/site-packages
        export CPPFLAGS+=" -I$TERMUX_PREFIX/include/python3.7m"
        export LDFLAGS+=" -lpython3.7m"
        export LDSHARED="$CC -shared"
        export BORG_OPENSSL_PREFIX="/data/data/com.termux/files/usr"
        export BORG_LIBLZ4_PREFIX="/data/data/com.termux/files/usr"
        export BORG_LIBZSTD_PREFIX="/data/data/com.termux/files/usr"
        python3.7 setup.py install --prefix=$TERMUX_PREFIX --force
}

termux_step_post_massage () {
    find . -path '*/__pycache__*' -delete
}
