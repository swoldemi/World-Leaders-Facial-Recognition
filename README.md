# Bill Gates vs Steve Jobs Image Classifier w/ TensorFlow

1) Install Docker for your local machine
1a) Install Python
2) Download the TensorFlow Docker image with the following command
```
docker run -it gcr.io/tensorflow/tensorflow:latest-devel
```
 - You should see something like this
   ```
   C:\Users\data_>docker run -it gcr.io/tensorflow/tensorflow:latest-devel
   Unable to find image 'gcr.io/tensorflow/tensorflow:latest-devel' locally
   latest-devel: Pulling from tensorflow/tensorflow
   054be6183d06: Pull complete
   779578d7ea6e: Pull complete
   82315138c8bd: Pull complete
   88dc0000f5c4: Pull complete
   79f59e52a355: Pull complete
   5d6f6371ba96: Pull complete
   eae4951fc987: Pull complete
   2ad8aba793cd: Pull complete
   930ff83d064b: Pull complete
   262f19208c05: Pull complete
   811a40ad0b38: Pull complete
   216c54157de9: Pull complete
   3e69995b60ca: Pull complete
   967302a1dad2: Pull complete
   ded06ca35b8b: Pull complete
   Digest: sha256:130446a74027fdc96b69dd09b14f2e40b57fb5ef9dff25afa580c887ef9fc4fe
   Status: Downloaded newer image for gcr.io/tensorflow/tensorflow:latest-devel
```
3) Exit the Docker image to go back into your local environment by using `exit` or `logout` and compile 2 (or more) image datasets to have your classifier classify (I picked Bill Gates/Steve Jobs). Put these images in seperate folders within the `/tf_files` directory
3a) To make the task less tedious, use the `googleImageURLDownloader.py` script in `/utils`. The directories will be automatically created for you. [Original Source](https://github.com/speedious/google-images-download/blob/720b464cc2dbe8a6cb0b9004362addf3d93ce65a/google-images-download.py)
3b) The script is limited to downloading 100 images per search query (*since scripting image requests is already against Google's TOS*) and it is reocmmended to have more images. To quickly download more images, use [this Chrome browser extension](https://chrome.google.com/webstore/detail/fatkun-batch-download-ima/nnjjahlikiabnchcpehcpkdeckfgnohf) and make sure to enable the `rename based on` field under `More Options` and to disable `Ask where to save each file before downloading`.
3c) Make sure you at least skim through the dataset and delete any images that are not related to your keyword.
4) 
