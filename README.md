# Xenium_plotting_functions
The following repo contains functions used to generate spatial distribution plots of features in xenium data. 
The documentation below can be followed to generate the config which will be used to make spatial plots:
The config can be generated as a .csv file through excel. Each line will output a separate .pdf visualizing the spatial distributions of desired features. It must contain the following fields:

- sample_name: Name of the core to be visualized (in the form of sample+core number+TMA name)
- tma_name: Name of the TMA that the core originated from (in the form of TMA + panel)
- feature: List of genes or meta data columns separated by semicolons 
- full_core/crops: For each row only one can be specified as “Y” (yes)
- full_core: if this is selected the spatial distribution of the feature will be visualized across the full core, where each cell will be represented by a dot colored 
- crops: if this is selected, the spatial distribution of the feature will be visualized across a small subset of the data, where each cell will be represented by its segmented polygon. IF images of the crop for all available stains will be provided by default
- xmin/xmax/ymin/ymax: If crops was specified as Y, the user must define a region to visualize. Crop coordinates can be sourced from the xenium ranger and must be in microns (not pixels). Crops must be square and shouldn’t exceed 400 x 400 microns for best visualizations
<img width="1972" height="384" alt="image" src="https://github.com/user-attachments/assets/02bdf313-1893-487c-8956-7a1cbbb20ae5" />
