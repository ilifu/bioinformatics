# Getting the apps for sra tools

I first set up the container with no `%apprun`s defined in the `.def` file. Then I start a shell in the container and run `find /software/bin -type f -executable > /tmp/sra_tools.txt`. Then I run `./make_app_list.sh /tmp/sra_tools.txt > /tmp/sra_tools.txt.for_def` and I copy and paste the contents of that into the def file. Then rebuild.