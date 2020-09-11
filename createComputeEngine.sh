#  creating compute engine
#login to gcp and launch the cloud shell or install google sdk

# get the zones base on region
 gcloud compute zones list | grep us-central1

# set the zones
 gcloud config set compute/zone us-central1-b

# create a vvm instance and set the vm options
 gcloud compute instances create "my-vm-2" \
--machine-type "n1-standard-1" \
--image-project "debian-cloud" \
--image "debian-9-stretch-v20190213" \
--subnet "default"