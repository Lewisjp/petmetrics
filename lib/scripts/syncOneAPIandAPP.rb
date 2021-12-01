# Connect to devcloud
system("ssh devcloud")
system("cd PetMetricsProd")

# Clean up folder and confirm
system("rm allrecords.csv")
system("rm GS-441524WeeklyLymphocytesAverage.png")
system("rm GS-441524WeeklyWhiteBloodCellsAverage.png")
system("rm GS-441524DailyTempAverage.png")
system("rm GS-441524PCVAverage.png")
system("ls")

# Reference https://devcloud.intel.com/oneapi/documentation/connect-with-ssh-linux-macos/
# Upload updated allrecords.csv for analysis
system("scp /Users/Flatiron/documents/baruch/cis9590/petmetrics/petmetrics/public/outgoing/allrecords.csv u93436@10.9.0.249:/home/u93436/PetMetricsProd")
# ISSUE: getting "lost connection"
system("scp /Users/Flatiron/documents/baruch/cis9590/petmetrics/petmetrics/public/outgoing/allrecords.csv devcloud:/home/u93436/PetMetricsProd")
# ISSUE: getting "lost connection"
# ROOT CAUSE: Research shows this may be due to a server side issue

# Run OneAPI Scripts
system("ipython")
system("run MedAnalysis.ipynb")
system("ls")

# Download results
system("scp devcloud:/home/u93436/PetMetricsProd/GS-441524WeeklyLymphocytesAverage.png /Users/Flatiron/documents/baruch/cis9590/petmetrics/petmetrics/app/assets/images")
system("scp devcloud:/home/u93436/PetMetricsProd/GS-441524WeeklyWhiteBloodCellsAverage.png /Users/Flatiron/documents/baruch/cis9590/petmetrics/petmetrics/app/assets/images")
system("scp devcloud:/home/u93436/PetMetricsProd/GS-441524DailyTempAverage.png /Users/Flatiron/documents/baruch/cis9590/petmetrics/petmetrics/app/assets/images")
system("scp devcloud:/home/u93436/PetMetricsProd/GS-441524PCVAverage.png /Users/Flatiron/documents/baruch/cis9590/petmetrics/petmetrics/app/assets/images")
# ISSUE: Failed without error
system("scp u93436@10.9.0.249:/home/u93436/PetMetricsProd/GS-441524WeeklyLymphocytesAverage.png /Users/Flatiron/documents/baruch/cis9590/petmetrics/petmetrics/app/assets/images")
system("scp u93436@10.9.0.249:/home/u93436/PetMetricsProd/GS-441524WeeklyWhiteBloodCellsAverage.png /Users/Flatiron/documents/baruch/cis9590/petmetrics/petmetrics/app/assets/images")
system("scp u93436@10.9.0.249:/home/u93436/PetMetricsProd/GS-441524DailyTempAverage.png /Users/Flatiron/documents/baruch/cis9590/petmetrics/petmetrics/app/assets/images")
system("scp u93436@10.9.0.249:/home/u93436/PetMetricsProd/GS-441524PCVAverage.png /Users/Flatiron/documents/baruch/cis9590/petmetrics/petmetrics/app/assets/images")
# ISSUE: Failed without error
# ROOT CAUSE: Research shows this may be due to a server side issue

# Next Steps: Keep reviewing Intel Community 
# https://community.intel.com/t5/Intel-DevCloud/how-to-know-the-ip-address-for-the-devcloud-remote-machine/m-p/1308648#M2747


