.PHONY: srpm
srpm:
	@dnf install -y python3-pip git rpm-build python3-setuptools
	@sh -ex build-srpm.sh "$(outdir)"
