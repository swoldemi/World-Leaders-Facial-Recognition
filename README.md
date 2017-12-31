# World Leaders - Image Classification w/ TensorFlow
This repository contains the resources needed to successfully classify the faces of the our planets leading national powers. 

## Steps to Reach Classification
1) Image collection
 - Currently, the classifier can recognize leaders from the following countries (as of Dec 2017):
   - The United States of America: President Donald Trump
   - Canada: Prime Minister Justin Trudeau
   - China: President Xi Jinping
   - United Kingdom: Prime Minister Theresa May
   - Germany: Chancellor Angela Merkel
   - Belgium: Prime Minister Charles Michel
   - Austrailia: Prime Minister Malcolm Turnbull
   - Hong Kong: Chief Executive Carrie Lam
   - Japan: Prime Minister Shinzo Abe
   - South Korea: President Moon Jae-in
   - North Korea: "Supreme Leader" Kim Jong-un
   - Russia: President Vladimir Putin
   
1a) Make sure to skim the data sets for images that are not of the class being classified

1b) Quick image classification can be done using the script in `/utils`. Simply add all of the keywords/classes to the first python list in the script. [Base source](https://github.com/speedious/google-images-download/blob/720b464cc2dbe8a6cb0b9004362addf3d93ce65a/google-images-download.py)

1c) The script is limited to downloading 100 images per search query (*since scripting image requests is already against Google's TOS*) and it is recommended to have more images. To quickly download more images, use [this Chrome browser extension](https://chrome.google.com/webstore/detail/fatkun-batch-download-ima/nnjjahlikiabnchcpehcpkdeckfgnohf) and make sure to enable the `rename based on` field under `More Options` and to disable `Ask where to save each file before downloading` in your Chrome settings.

2) [Download Docker](https://www.docker.com/get-docker)
3) Download the TensorFlow Docker container. This takes a few minutes:
 ```
 docker pull gcr.io/tensorflow/tensorflow:latest-devel
 ```
4) Run the container:
  ```
  docker run -it -d gcr.io/tensorflow/tensorflow:latest-devel
  ```
5) List running containers to get the ID of the container:
  ```
  docker ps -a
  ```
6) Copy the ID of the container and use the following command to copy the images (the images folder - unzip if you want to use my dataset) you collected into the container. The dataset contains a fair amount of images so this will take some time depending on how fast your machine is. If you see multiple running containers select the one with the youngest age (time under "CREATED"). Omit percent signs:
 ```
 docker cp tf-files/images %CONTAINERIDHERE%:/
 ```
   -  Example: `docker cp tf-files/images 5698605cec9b:/`

7) Log into the container:
 ```
 docker exec -it %CONTAINERIDHERE% bash
 ```
8) Change your current working directory to the root of the virtual machine. This is where TensorFlow and the image set are saved. If you exit the container, remember to change your current working directory again:
 ```
 cd /
 ```
9) Train the classification model! (This takes some time if you have many images). 

9a) If you don't want to type this into the Docker container, i.e. you you are unable to paste the command below from your local clipboard to the virtualized bash, use the [AHK](https://autohotkey.com/download/) script in `/utils` (autopaste.ahk):
   - control+m will auto-type the command to train the neural network
```
 python tensorflow/tensorflow/examples/image_retraining/retrain.py \
    --bottleneck_dir=/bottlenecks \ 
    --model_dir=/inception \
    --output_labels=/retrained_labels.txt \
    --output_graph=/retrained_graph.pb \ 
    --image_dir=/images/training
```
  - You should see Google's Inception CNN begin to download and then training begin.

10) Use the model to predict the name of a world leader using an image in the `/tf-files/images/testing` directory (possible overfitting :grimace:):
10a) Again, you can use `autopaste.ahk` to test images for you:
   - control+. will auto-type the command to test the bot against an image of Vladimir Putin
   - control+, will auto-type the command to test the bot against an image of Donald Trump

```
python tensorflow/tensorflow/examples/image_retraining/label_image.py \
 --graph=/retrained_graph.pb \
 --labels=/retrained_labels.txt \
 --image=/images/testing/%TEST_IMAGE_HERE%
```
IMPORTANT NOTE: `/retrained_graph.pb` is the VALUABLE model that can classify the categories/keywords/classes that it was trained for. You can export this along with the label_image.py script for on-the-go classification