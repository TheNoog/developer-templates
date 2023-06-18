# Go Install


GO_VERSION=go1.20.2.linux-amd64.tar.gz

curl -OL https://go.dev/dl/${GO_VERSION}
sha256sum ${GO_VERSION}
sudo tar -C /usr/local -xvf ${GO_VERSION}

echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.profile
source ~/.profile
go version

rm ${GO_VERSION}