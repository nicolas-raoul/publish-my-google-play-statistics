#!/bin/bash
# Download Google Play statistics

GCS=/Users/nicolasraoul/p/google-cloud-sdk
APP=01688209299889066540
OUTPUT=.
#OUTPUT=/Users/nico/src/google-play-statistics/AnkiDroid/

$GCS/bin/gcloud auth login # Launches OAuth authentication in your browser. Log in with the Google account associated with your Google Play account

# Remove previous data
# TODO Only delete incomplete months and only download new data
#mv $OUTPUT/* /tmp # Replace with rm -rf if you are confident that your $OUTPUT variable is correctly set.

# Download
$GCS/bin/gsutil -m cp -R gs://pubsite_prod_rev_$APP/stats/installs $OUTPUT
$GCS/bin/gsutil -m cp -R gs://pubsite_prod_rev_$APP/stats/ratings $OUTPUT
$GCS/bin/gsutil -m cp -R gs://pubsite_prod_rev_$APP/stats/crashes $OUTPUT
$GCS/bin/gsutil -m cp -R gs://pubsite_prod_rev_$APP/stats/gcm $OUTPUT
