.PHONY: srpm
srpm:
	@dnf install python3-pip
	@python3 -m pip download --no-deps -d . nitrate-tcms
	@git clone https://github.com/Nitrate/Nitrate.git
	@rpmbuild -bs \
		--define '_srcrpmdir $(outdir)' \
		--define '_specdir $(PWD)/Nitrate' \
		--define '_srcdir $(PWD)' \
		python-nitrate-tcms.spec
