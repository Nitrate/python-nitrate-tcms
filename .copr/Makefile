.PHONY: srpm
srpm:
	@dnf install -y python3-pip git rpm-build python3-setuptools
	@sh -ex $(spec)/.copr/build-srpm.sh "$(outdir)"
