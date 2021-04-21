# Proxy
function proxyon
{
	# Set proxy system variables
	http_proxy=http://internet-proxy.dc.vodafone.com.au:8080
    https_proxy=http://internet-proxy.dc.vodafone.com.au:8080
    no_proxy=localhost,127.0.0.1
    HTTP_PROXY=$http_proxy
    HTTPS_PROXY=$https_proxy
    export http_proxy https_proxy no_proxy HTTP_PROXY HTTPS_PROXY
    # Git configuration for internet proxy
    git config --global http.proxy $http_proxy
    git config --global https.proxy $http_proxy
    # Curlrc
    echo "proxy = ${http_proxy}" > ~/.curlrc
    # Npmrc
    npm config set proxy $http_proxy
    echo "Proxy is ON"
}
# No Proxy
function proxyoff
{
    git config --global --unset http.proxy
    git config --global --unset https.proxy
	http_proxy=""
	https_proxy=""
    HTTP_PROXY=$http_proxy
    HTTPS_PROXY=$https_proxy
    export http_proxy https_proxy HTTP_PROXY HTTPS_PROXY
    echo "" > ~/.curlrc
    npm config delete proxy
    echo "Proxy is OFF"
}
