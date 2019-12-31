# Freescale i.MX SOC extra configuration udev rules

LICENSE = "CLOSED"
FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += "file://sd8887_uapsta.bin"

do_install_prepend () {
	install -d ${D}/work
        install -d ${D}${base_libdir}/firmware/mrvl
	install -m 0644 ${WORKDIR}/sd8887_uapsta.bin ${D}${base_libdir}/firmware/mrvl
}

FILES_${PN}_append = " ${base_libdir}/firmware/mrvl"
FILES_${PN}_append = " /work"
