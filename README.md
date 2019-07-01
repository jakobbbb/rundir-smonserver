# SMonServerPub

Single-User Smartr-Efficiency Rundir based on SMonServer that can be run entirely from publically available software.

Will be moved into smartrplace/smartr-efficiency in the future.

# Build and Start Instructions

## Running the single user rundir

You can find the latest releases of the Rundir
[here](https://github.com/jakobbbb/smonserverpub/releases). Download
`ogema.zip` (under "Assets") and run it like any other OGEMA Rundir.
For more Information regarding Rundirs, see
[Project and Rundir Management](https://community.ogema-source.net/xwiki/bin/view/Tutorial%20Collection/SDK%20Tutorial%20Overview%20Experimental/Project%20and%20Rundir%20Management/)
in the OGEMA Wiki.

## Building the single user rundir

For development, you'll likely want to set up an OGEMA development
environment and build the relevant projects from source.

Requirements:
* Git. For an introduction into Git, check [Basic development collaboration with Git and Eclipse](https://community.ogema-source.net/xwiki/bin/view/Tutorial%20Collection/SDK%20Tutorial%20Overview%20Experimental/Basic%20development%20collaboration%20with%20Git%20and%20Eclipse/) on the OGEMA Wiki.
* JDK >= 7
* Maven

It is recommended to use the [OGEMA SDK](https://community.ogema-source.net/xwiki/bin/view/Main/Download) but you can choose any IDE, if you so desire.

### Building `smartr-efficiency`

You need to build and install the following projects from source in
order to build [`smartr-efficiency`](https://github.com/smartrplace/smartr-efficiency):

* [`api-draft`](https://github.com/smartrplace/api-draft)
* [`ogema-widgets-extended`](https://github.com/ogema/ogema-widgets-extended)

Now, you should be able to build `smartr-efficiency` itself.


### Other dependencies of the Rundir

If you want to build this entire Rundir from source, you need to build the following projects:

* [`fendodb`](https://github.com/smartrplace/fendodb)
    * Note that, as described the README, `fendodb` should be
      built with the `-DskipTests` option.
* [`ogema-backup-parser`](https://github.com/smartrplace/ogema-backup-parser)
* `timeseries-multieval-garo-jaxb-fendodb`
    * Contained in the [`ogema-widgets`](https://github.com/ogema/ogema-widgets) repository under
    `src/timeseries-tools/timeseries-multieval-garo-jaxb-fendodb` but needs to be built separately.
    * Change the following dependencies:
        * `fendodb-source`: `0.0.4-SNAPSHOT` → `0.1.1-SNAPSHOT`
        * `backup-gateways-analysis`: `0.0.2-SNAPSHOT` → `0.0.3-SNAPSHOT`

At this point, you should be able to build the SMonServerPub Rundir.

### Other repositories you may wish to build

* [`ogema`](https://github.com/ogema/ogema)
    * Before building, make sure to check out the `9dbac682` commit.
        * Bash: run `git checkout 9dbac682` while in the
          `ogema-widgets-extended` directory.
        * Eclipse
            * Open the "History" view ("Window" > "Show View" >
              "Other..." > "Team" > "History").
            * Select the imported OGEMA project in "Package Explorer".
            * Hit "Link Editor with Selection" atop the "History" view.
            * You'll see a list of commits.
            * Right click `9dbac68` *OGEMA 2.2.0 public release*
    * Note that, as described in OGEMA's README, OGEMA must be
      built with the `-DskipTests` option.
* [`ogema-widgets`](https://github.com/ogema/ogema-widgets)
    * Note that, as described the README, `ogema-widgets` must be
      built with the `-DskipTests` option.
