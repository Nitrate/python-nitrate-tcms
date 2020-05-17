.PHONY: srpm
srpm:
	@python3 -m pip download --no-deps -d . nitrate-tcms
	@git clone https://github.com/Nitrate/Nitrate.git
	@rpmbuild -bs \
		--define '_srcrpmdir $(PWD)' \
		--define '_specdir $(PWD)/Nitrate' \
		--define '_srcdir $(PWD)'
