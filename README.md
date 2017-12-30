# World Leaders Image Classifier w/ TensorFlow
This repository contains the resources needed to successfully classify the faces of the our planets leading national powers. 

## Steps to Reach Classification
1) Image collection
 - Currently, the classifier can recognize leaders from the following countries
   - The United States of America: President Donald Trump
   - Canada: Prime Minister Justin Trudeau
   - China: President Xi Jinping
   - United Kingdom: Prime Minister Theresa May
   - Germany: Chancellor Angela Merkel
   - Belgium: Prime Minister Charles Michel
   - Austrailia: Malcolm Turnbull
   - Hong Kong: Chief Executive Carrie Lam
   - Japan: Prime Minister Shinzo Abe
   - South Korea: President Moon Jae-in
   - North Korea: "Supreme Leader" Kim Jong-un
1a) Make sure to skim the data sets for images that are not of the class being classified
1b) Quick image classification can be done using the script in `/utils`. Simply add all of the keywords/classes to the first python list in the script. [Base source](https://github.com/speedious/google-images-download/blob/720b464cc2dbe8a6cb0b9004362addf3d93ce65a/google-images-download.py)
1c) The script is limited to downloading 100 images per search query (*since scripting image requests is already against Google's TOS*) and it is reocmmended to have more images. To quickly download more images, use [this Chrome browser extension](https://chrome.google.com/webstore/detail/fatkun-batch-download-ima/nnjjahlikiabnchcpehcpkdeckfgnohf) and make sure to enable the `rename based on` field under `More Options` and to disable `Ask where to save each file before downloading` in your Chrome settings.

2) [Download Docker](https://www.docker.com/get-docker)
3) S
