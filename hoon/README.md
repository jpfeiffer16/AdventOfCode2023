## Running

* If you haven't, create a fake zod in this directory:
** `urbit -F zod -u https://bootstrap.urbit.org/dev-latest.pill`
* In the dojo run
** `|mount %base`
* Run the build script to set up the needed softlinks
** `./build` - you will need to run this again if you add more files.
* Now you can `|commit %base` and then run a generator eg: `+day1`
