# krakend-plugin-repo
Krakend plugin for testing

### Build the plugin

```shell
cd custom-plugin
rm ../api-gateway/plugins/custom-plugin.so
docker run --rm -it -v "$PWD:/app" -v "$PWD/build.sh:/root/build.sh" -w /app krakend/builder:2.6.3 /root/build.sh 
sudo chown $USER:$USER custom-plugin.so
mv custom-plugin.so ../api-gateway/plugins
```