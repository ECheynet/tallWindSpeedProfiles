# Tall Wind Profile Validation of ERA5, NORA3, and NEWA Using Lidar Observations

## Overview

This repository contains MATLAB Live Scripts and datasets that reproduce key results from Cheynet et al. (2024). The study evaluates wind speed predictions at high altitudes, up to 500 m, which are critical for future large offshore wind turbines and airborne wind energy systems. We assess three wind models—ERA5, NORA3, and NEWA—against lidar observations from Norway and the North Sea. Our findings indicate that ERA5 performs best offshore, while NORA3 is more accurate onshore. However, model performance varies by location and evaluation criteria.

## Reference

Cheynet, E., Diezel, J. M., Haakenstad, H., Breivik, Ø., Peña, A., & Reuder, J. (2024). Tall Wind Profile Validation Using Lidar Observations and Hindcast Data. *Wind Energy Science Discussions*, 2024, 1-29.

## Repository Contents

### Code and Scripts
- `Documentation.mlx`: MATLAB Live Script providing an overview of the study and guiding users through data analysis.

### Data Files
- `.mat` files containing preprocessed wind speed model databases and lidar observations:
  - `FINO1_fileExchange.mat`
  - `FINO3_fileExchange.mat`
  - `Sola_fileExchange.mat`
  - `Lista_fileExchange.mat`
  - `Bjerkreim_fileExchange.mat`

- Extended wind speed datasets, including:
  - Non-overlapping periods
  - Non-linear regression with the Deaves and Harris model
  - Wind direction data
  - Additional variables (e.g., temperature profiles for NORA3)
  - Stored in respective directories:
    - `data_ERA5`
    - `data_NEWA`
    - `data_NORA3`

## Data Organization

Each `[Location]_fileExchange.mat` file contains four structured variables:
- **ERA5**, **NEWA**, **NORA3**: Model wind data resampled in space and time to align with lidar observations.
- **LIDAR**: Lidar-measured wind data.

### Model Data Structure
Each model dataset (`ERA5`, `NEWA`, `NORA3`) contains:
- `z` - Height (m)
- `U` - Wind speed (m/s)
- `D` - Wind direction (degrees)
- `datetime` - Time in MATLAB datetime format
- `datenum` - Time in MATLAB serial date number format (for compatibility with Python)

### Lidar Data Structure
Lidar datasets include:
- `z` - Height (m)
- `U` - Wind speed (m/s)
- `Wdir` - Wind direction (degrees)
- `datetime` - Time in MATLAB datetime format
- `datenum` - Time in MATLAB serial date number format
- `CNR` - Carrier-to-noise ratio

## Data Availability

The datasets are available:
- On GitHub (under Releases)
- On Zenodo: [https://doi.org/10.5281/zenodo.14848924](https://doi.org/10.5281/zenodo.14848924)

## Usage

1. Clone or download the repository.
2. Load the `.mat` files in MATLAB.
3. Use `Documentation.mlx` to visualize some results.

## License

This repository is licensed under the BSD 3-Clause License. Please cite Cheynet et al. (2024) if using the data or code in publications.
