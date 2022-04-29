CONTAINER_TAG := "dxjoke/tectonic-docker:0.8.0-bullseye-biber"

in_user:
	docker run --rm --volume "$(pwd)":/data --user "$(id -u):$(id -g)" --workdir="/data" -t {{CONTAINER_TAG}} tectonic main.tex

in_nouser:
	docker run --rm --volume "$(pwd)":/data --workdir="/data" -t {{CONTAINER_TAG}} tectonic main.tex

out:
	tectonic main.tex

clean:
	rm -f *.pdf *.log *.aux *.fdb* *.fls

out-in_user: clean out out in_user

out-in_nouser: clean out out in_nouser

in_user-out: clean in_user out

in_nouser-out: clean in_nouser out
