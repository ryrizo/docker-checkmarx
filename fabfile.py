
from fabric.api import local

def scan(path, options):
    local("docker run \
    -v {0}:/docker-checkmarx/code_to_scan \
    --label=checkmarx checkmarx /docker-checkmarx/launch_scan.sh \
    {1}".format(str(path), str(options)))
