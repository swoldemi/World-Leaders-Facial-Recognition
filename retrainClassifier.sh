python -m tensorflow.retrain.py \
  --bottleneck_dir=tf-files/bottlenecks \
  --how_many_training_steps=5000 \
  --model_dir=tf-files/models/ \
  --summaries_dir=tf-files/training_summaries/"${ARCHITECTURE}" \
  --output_graph=tf-files/retrained_graph.pb \
  --output_labels=tf-files/retrained_labels.txt \
  --architecture="${ARCHITECTURE}" \
  --image_dir=tf-files/flower_photos