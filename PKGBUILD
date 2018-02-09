pkgname=forcefully-remove-bootfb-dkms
pkgver=1
pkgrel=1
pkgdesc="Deallocate BOOTFB"
url='https://lists.gnu.org/archive/html/qemu-devel/2016-07/msg02469.html'
arch=('i686' 'x86_64')

depends=('dkms')

source=(
	"forcefully_remove_bootfb.sh"
	"forcefully_remove_bootfb.c"
	"Makefile"
	"dkms.conf"
)

package() {
	installDir="${pkgdir}/usr/src/${pkgname}-${pkgver}"

	install -dm755 "${installDir}"
	install -dm755 "${pkgdir}/usr/bin"

	install -m644 "dkms.conf" "${installDir}/"
	sed -e "s/@PKGVER@/${pkgver}/" -i "${installDir}/dkms.conf"

	install -m644 "${srcdir}/forcefully_remove_bootfb.c" "${installDir}/"
	install -m644 "${srcdir}/Makefile" "${installDir}/"
	install -m755 "${srcdir}/forcefully_remove_bootfb.sh" "${pkgdir}/usr/bin/forcefully-remove-bootfb"
}

# makepkg -g >> PKGBUILD
sha512sums=('2c60af79634e7a6249c2f9a2ba9c2b20aa8ceed581be5b6976790b5696756bb9d786da26f642b07140861848b33def9a3459ce09be185a5186eaf236abad18ce'
            '226f5334a51e06799b3def6a6904a47d44132d37ae48cc361a34603169cf8e476a20b8350deee12f6f3022a6c88893419ca49290607f72e27ca2c7613ef41661'
            'f5c793f7bcd98b50aca5d94610bde21aa00d9104edfc8e7ea0ea40f6f2e846c60ae955623df2da2e921294f7c14c4603e6ba451e2f1ab3e34b879818d8fad0c9'
            'e062ae86da9aaa2ffeaf9db251de7ab3ca16040d142d9209d0c1b2ed3f58ff6891e889e389c631c84c96180ecb8ffa5fc2b9752099b3847f17e9432dcb9260da')
