### *Backup and Restore Docker Images*

1. *Commit running container to an image*:
bash
   docker commit <CONTAINER ID> <new image name>  # Create a new image from a running container


2. *Save Docker image to a tar file*:
bash
   docker save <image name> > mybackup.tar  # Save a Docker image as a tar file for backup


3. *Upload backup to AWS S3*:
bash
   aws s3 cp mybackup.tar s3://<your-bucket-name>/  # Upload the backup file to AWS S3


4. *Download backup from S3*:
bash
   aws s3 cp s3://<your-bucket-name>/mybackup.tar ./  # Download the backup file from AWS S3


5. *Restore image from tar file*:
bash
   docker load < mybackup.tar  # Restore a Docker image from a tar file


---
