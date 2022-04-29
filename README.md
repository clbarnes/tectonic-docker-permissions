# Testing repo for tectonic-docker permissions issue

See https://github.com/WtfJoke/tectonic-docker/issues/8

This uses `just` as a command runner.

`out` runs tectonic outside of docker.
`in_*` runs it inside of docker.
`_user` passes the `--user` argument to docker, mapping the external user to the internal root.
`_nouser` does not.

`out-in_user`, therefore, cleans files, runs tectonic outside of docker, then inside with user mapping.
`in_user-out`, `out-in_nouser`, and `in_nouser-out` are self-explanatory.
