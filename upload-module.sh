#!/bin/sh

set -e

host=${1:-'localhost:8083'}
org=${2:-'nullstone'}
module=${3:-'aws-fargate'}

tar -czvf "${module}.tar.gz" *.tf
curl -X POST -F "file=@${module}.tar.gz" "http://${host}/orgs/${org}/modules/${module}/versions?version=$(cat VERSION)"
rm "${module}.tar.gz"
