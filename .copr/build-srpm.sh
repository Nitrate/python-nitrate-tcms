outdir=$1
python3 -m pip download --no-deps -d . nitrate-tcms
git clone https://github.com/Nitrate/Nitrate.git
cd Nitrate
git checkout develop
latest_tag=$(git describe --tags $(git rev-list --tags --max-count=1))
git checkout -b build-from $latest_tag
git describe
cd -
rpmbuild -bs \
    --define "_srcrpmdir ${outdir}" \
    --define '_specdir ./Nitrate' \
    --define '_sourcedir .' \
    Nitrate/python-nitrate-tcms.spec
