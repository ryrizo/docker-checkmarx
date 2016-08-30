# docker-checkmarx
Docker setup for using the Checkmarx CLI

### Usage
I recommend using this with the fabric command.
Make sure you install fabric:
```pip install fabric```

Running Checkmarx CLI container:
```
git clone https://github.com/ryrizo/docker-checkmarx
cd docker-checkmarx
docker build . -t checkmarx
fab scan:path=<path to code for scanning>,options='<Checkmarx options see CLI site>'
```
For information on the Checkmarx CLI and what options are required to run the scan: [Checkmarx Documentation](https://checkmarx.atlassian.net/wiki/display/KC/CxConsole%3A+CxSAST+CLI)
