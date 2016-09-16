# Support additional firmware for WiLink8 modules
# TIInit_11.8.32.bts is required for bluetooth support but this particular
# version is not available in the linux-firmware repository.
#
SRC_URI_append_hikey = "\
     https://git.ti.com/ti-bt/service-packs/blobs/raw/ccb94e6adf7f13f774c42f731c27a8aec8e1d388/initscripts/TIInit_11.8.32.bts;name=TIInit_11.8.32 \
"
SRC_URI[TIInit_11.8.32.md5sum] = "a76788680905c30979038f9e6aa407f3"
SRC_URI[TIInit_11.8.32.sha256sum] = "26ab0608e39fab95a6a55070c2f8364c92aad34442e8349abda71cee4da3277a"

do_install_append_hikey() {
     cp ${WORKDIR}/TIInit_11.8.32.bts ${D}/lib/firmware/ti-connectivity/
}
