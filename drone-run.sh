DIR="$( cd "$( dirname "$0" )" && pwd )"

docker run \
  --volume=/var/run/docker.sock:/var/run/docker.sock \
  --volume=${DIR}/drone:/data \
  --env=DRONE_GITHUB_SERVER=https://github.com \
  --env=DRONE_GITHUB_CLIENT_ID=a22c793e24d79276bd79 \
  --env=DRONE_GITHUB_CLIENT_SECRET=c8735ca5a931b3ca6c4d82c31ed7fe4df8376651 \
  --env=DRONE_RUNNER_CAPACITY=2 \
  --env=DRONE_SERVER_HOST=drone.arielweinberger.eu \
  --env=DRONE_SERVER_PROTO=http \
  --env=DRONE_TLS_AUTOCERT=true \
  --publish=80:80 \
  --publish=443:443 \
  --restart=always \
  --detach=true \
  --name=drone \
  drone/drone:1.0.0-rc.5
