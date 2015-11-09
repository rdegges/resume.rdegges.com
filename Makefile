# Type `make` on the command line to deploy this site to S3.
#
# - To initialize your AWS command line tool, run `aws configure`.
# - To create an S3 bucket, run `aws s3 mb s3://mybucket`
# - To initialize your S3 bucket as a website, run `aws s3 website $(S3_BUCKET) --index-document index.html`

S3_BUCKET=s3://resume.rdegges.com/

all:
	aws s3 sync . $(S3_BUCKET) --exclude '.git/*' --exclude 'Makefile' --acl public-read --delete
