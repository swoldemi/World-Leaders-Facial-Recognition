^m:: Send python tensorflow/tensorflow/examples/image_retraining/retrain.py --bottleneck_dir=/bottlenecks --model_dir=/inception --output_labels=/retrained_labels.txt --output_graph=/retrained_graph.pb --image_dir=/images/
^.:: Send python tensorflow/tensorflow/examples/image_retraining/label_image.py --graph=/retrained_graph.pb  --labels=/retrained_labels.txt  --image=/images/testing/pvp_201.jpg
^,:: Send Send python tensorflow/tensorflow/examples/image_retraining/label_image.py --graph=/retrained_graph.pb  --labels=/retrained_labels.txt  --image=/images/testing/pdt_0.jpg
