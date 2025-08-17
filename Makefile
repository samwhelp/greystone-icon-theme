

default: build
.PHONY: default


help:
	@echo 'Usage:'
	@echo '	$$ make [action]'
	@echo
	@echo 'Ex:'
	@echo '	$$ make'
	@echo '	$$ make help'
	@echo
	@echo '	$$ make deb-build-essential'
	@echo
	@echo '	$$ make deb-build-dep'
	@echo
	@echo '	$$ make deb-build'
	@echo
.PHONY: help




##
## ## call-by debian/rules
##

build:
	@echo "I: build..."
.PHONY: build


install:
	@echo "I: install..."
.PHONY: install


clean:
	@echo "I: clean..."
.PHONY: clean




##
## ## deb-build
##

deb-build-essential:
	sudo apt-get --yes install git devscripts equivs
.PHONY: deb-build-essential


deb-build-dep:
	sudo mk-build-deps -i -t "apt-get -y" -r
.PHONY: deb-build-dep


deb-build:
	dpkg-buildpackage -b -uc -us -tc
.PHONY: deb-build




##
## ## icon
##

icon-archive:
	@./icon-archive.sh
.PHONY: icon-archive


icon-install:
	@./icon-install.sh
.PHONY: icon-install




##
## ## util
##

util-fix-file-permissions:
	@./util-fix-file-permissions.sh
.PHONY: util-fix-file-permissions


util-update-icon-cache:
	@./util-update-icon-cache.sh
.PHONY: util-update-icon-cache
