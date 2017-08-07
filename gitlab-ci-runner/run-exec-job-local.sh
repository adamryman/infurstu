#!/bin/bash
# gdirt, find broken and dirty git repos

set -e
[[ -z $DEBUG ]] || set -x

cur_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

job="$1"

docker run -it \
	--privileged \
	--v /var/run/docker.sock:/var/run/docker.sock \
	-v $cur_dir:$cur_dir \
	--workdir $cur_dir \
	gitlab/gitlab-runner:latest exec docker \
		--docker-volumes "/var/run/docker.sock:/var/run/docker.sock" \
		--docker-pull-policy if-not-present \
		--env "HOSTNAME=my-hostname" \
		--env "CI_PROJECT_NAMESPACE=my-namespace" \
		--env "CI_PROJECT_NAME=my-name" \
			$job

# PWD VERSION
#
# Just add your job to the end of it.
#
# docker run -it \
# 	--privileged \
# 	--v /var/run/docker.sock:/var/run/docker.sock \
# 	-v $PWD:$PWD \
# 	--workdir $PWD \
# 	gitlab/gitlab-runner:latest exec docker \
# 		--docker-volumes "/var/run/docker.sock:/var/run/docker.sock" \
# 		--docker-pull-policy if-not-present \
# 		--env "HOSTNAME=my-hostname" \
# 		--env "CI_PROJECT_NAMESPACE=my-namespace" \
# 		--env "CI_PROJECT_NAME=my-name" \
# 			$job
