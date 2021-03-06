# Getting and Cleaning Data

## Course Project

### By David J. Weller-Fahy

Welcome to the course project for Getting and Cleaning Data.

This project contains the following files.

| File Name                        | Purpose                                                                    |
| ---------                        | -------                                                                    |
| [README.md](README.md)           | Describe the contents of this repository.                                  |
| [run_analysis.R](run_analysis.R) | Download raw data, create tidy dataset.                                    |
| [CodeBook.md](CodeBook.md)       | Describe contents of the tidy dataset and all transformations to the data. |
| [tidy.csv](tidy.csv)             | Tidy dataset based on the original dataset.                                |

Note that the `run_analysis.R` script will leave remove the `data` directory as configured by default.  If you want to retain the `data` directory, please set the `KEEP` variable at the top of the run_analysis.R script equal to `T`.  Setting `KEEP` to `T` will also retain all the interim variables in the R environment rather than cleaning up everything but the `tidy` variable.
