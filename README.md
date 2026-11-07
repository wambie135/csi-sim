# CSI Simulation

How to run simulation:
edit macro for # of events
use rat command and then the file name

## Software versions

| Package     | Version |
|-------------|---------|
| RAT-PAC Two | 2.1.1   |
| Geant4      | 11.4.0  |
| ROOT        | 6.32.15 |

## Repository contents

```
ratpac-two/
  ratdb/
    MATERIALS.ratdb            # CsI_crystal material definition
    OPTICS.ratdb               # CsI_crystal optical properties
    ELEMENTS.ratdb             # element definitions
    PMT.ratdb                  # lappd photodetector model
    OPTICS_Photocathode.ratdb  # LAPPD photocathode optics
    PMTTRANSIT.ratdb           # LAPPD timing (LAPPD Default Values)
  changes_vs_v2.1.1.diff       # my edits compared to stock ratpac-two v2.1.1
bnl30t/
  ratdb/BNL30T/
    practice.geo               # Experiment geometry
    PMTINFO.ratdb              # photodetector positions (PMTINFO_Practice)
  macros/
    practice.mac               # run macro: LAPPD overrides
```

## Setup

1. Build RAT-PAC v2.1.1, Geant4 11.4.0, and ROOT 6.32.15 then source their setup scripts.

2. Back up the original files, then copy the files in `ratpac-two/ratdb/` into your ratpac-two ratdb folder, replacing the files of the same name.

3. Copy the BNL30T folder into the same ratdb folder.

4. Check: when you run `rat` that it works.

## Running the simulation

Output is written to the current directory.

To view the geometry and events (VISUALIZER):

```bash
rat --vis bnl30t/macros/practice.mac
```

For batch runs (no VISUALIZER (runs faster)):

1. Comment out the `/vis/` lines in `practice.mac`.

2. Run it:

   ```bash
   rat bnl30t/macros/practice.mac
   ```

Output File: `output.ntuple.root`

I forgot the number of events previously ran for data (assume 1k)

## Contact

David Garcia at garcid5@rpi.edu