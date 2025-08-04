gcloud auth login

docker tag com.order.system/order.service:$1 europe-west4-docker.pkg.dev/acoustic-atom-468009-u9/order-system-repository/order.service:$1
docker tag com.order.system/payment.service:$1 europe-west4-docker.pkg.dev/acoustic-atom-468009-u9/order-system-repository/payment.service:$1
docker tag com.order.system/stock.service:$1 europe-west4-docker.pkg.dev/acoustic-atom-468009-u9/order-system-repository/stock.service:$1

docker push europe-west4-docker.pkg.dev/acoustic-atom-468009-u9/order-system-repository/order.service:$1
docker push europe-west4-docker.pkg.dev/acoustic-atom-468009-u9/order-system-repository/payment.service:$1
docker push europe-west4-docker.pkg.dev/acoustic-atom-468009-u9/order-system-repository/stock.service:$1

