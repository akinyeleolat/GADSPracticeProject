#Creating bcket and copying files gs://bucketname which must be globally unique
gsutil mb gs://qwiklabs-gcp-01-ffb0e1054c93_bucket2

gsutil cp project.txt gs://qwiklabs-gcp-01-ffb0e1054c93_bucket

#CREATE PERSISTENT DISK
#check regions
gcloud compute regions list

# choose a region
INFRACLASS_REGION=us_west2
mkdir infraclass
touch infraclass/config
echo INFRACLASS_REGION=$INFRACLASS_REGION >> ~/infraclass/config
INFRACLASS_PROJECT_ID=[YOUR_PROJECT_ID]
echo INFRACLASS_PROJECT_ID=$INFRACLASS_PROJECT_ID >> ~/infraclass/config

nano .profile

#- APPEND source infraclass/config to the end of the file
#- ctrl o + ctrl x