# @copyright@
# Copyright (c) 2006 - 2019 Teradata
# All rights reserved. Stacki(r) v5.x stacki.com
# https://github.com/Teradata/stacki/blob/master/LICENSE.txt
# @copyright@

bootstrap:
ifeq ($(RELEASE),redhat8)
	../common/src/stack/build/build/bin/package-install -m "Development Tools" "RPM Development Tools"
	../common/src/stack/build/build/bin/package-install createrepo genisoimage git \
		emacs vim httpd-devel libvirt-devel rpm-devel python2 python36 yum-downloader
else
	../common/src/stack/build/build/bin/package-install -m "Development Tools" "Infrastructure Server"
	../common/src/stack/build/build/bin/package-install createrepo genisoimage git emacs vim httpd-devel libvirt-devel
endif
