#!/bin/sh
#SBATCH --job-name=knit_markdown
#SBATCH --output=logs/%x_%j.out 
#SBATCH --error=logs/%x_%j.err 
#SBATCH --account=rrg-kleinman
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=2
#SBATCH --time=2:00:00
#SBATCH --mem=50GB

# Load r
module load r/4.4.0

# Change into directory containing renv
cd /lustre09/project/6004736/shoham12/from_rorqual/G34_spatial

# Set the requierd paths
RMD_PATH="/lustre09/project/6004736/shoham12/from_rorqual/G34_spatial/HELPER_FUNCTIONS/generate_spatial_plots.Rmd"
CONFIG_PATH="/lustre09/project/6004736/shoham12/from_rorqual/G34_spatial/HELPER_FUNCTIONS/config.csv"
DATA_PATH="/lustre09/project/6004736/shoham12/from_rorqual/G34_spatial/HELPER_FUNCTIONS/data"
OUT_PATH="/lustre09/project/6004736/shoham12/from_rorqual/G34_spatial/HELPER_FUNCTIONS/out"

# Knit the markdown and provide paths to variables
Rscript -e "rmarkdown::render('$RMD_PATH', \
    params = list(data_path = '$DATA_PATH', \
                  out_path = '$OUT_PATH', \
                  config_path = '$CONFIG_PATH'), \
    output_dir = '$OUT_PATH', \
    output_file = 'generate_spatial_plots.html')"
