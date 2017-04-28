# State Crime Rates Explorer
<a href="" target="_blank">Project link</a>

------

## About
The <a href="http://www.fbi.gov/about-us/cjis/ucr/" target="_blank">Uniform Crime Reporting</a> is an online resource for crime statistics produced by the Federal Bureau Investigation (FBI).

The data is obtained through this <a href="http://www.ucrdatatool.gov/Search/Crime/State/StatebyState.cfm" target="_blank">link</a>.  Since the information is not readily scrapable and requires a form submission, I have saved a sample of the raw malformed csv file together with this project.  Part of this project is parsing a malformed csv file utilizing the awesome `dplyr` package.  For more information on this data collection and cleaning implementation, please refer to the `parser.R` file for more details.

Throughout the application, the user is empowered with selection widgets to zoom in on data exploration of the dataset.  This site is designed with analysts in mind, and provides a layer of visualization that is otherwise masked behind tabular display of datasets in the original website.  Some examples of data insights with this application:
    
- *Compare the crime rates over the years of each states.*
- *Compare the various kinds of crime rates of a given state over the years.*
- *Identify if certain kinds of crime rates are tied to big economic events e.g. the Great Recession of 2007-2009.*
- *Quantify the correlation values of various kinds of crime rates within a given period of time.*

------

## Visualizations:
- **Heatmaps:** heatmaps visualizing crime rates in states. Major recession periods are highlighted in blue.
- **Correlations:** Correlation matrix of various types of crimes. Use the widgets to filter a data subset.


------

## Other notes:
- Use the selection widgets to help highlight specific data subsets of interest, and to view a different visualization based on the selected metric report.

- Download the "cleaned" and filtered dataset from the `Data` section.

- This project/application is not affiliated with the FBI.  The work is intended as a showcase of R Shiny data visualization capabilities.  All information courtesy of FBI/UCR. Used with permission.

------

## Resources
- <a href="http://ahmedtadde.github.io/DataQuest" target="_blank">Homepage</a>
- <a href="https://github.com/ahmedtadde/Crime-Rate-Viz" target="_blank">Github Project</a>
- <a href="http://www.ucrdatatool.gov/Search/Crime/State/StatebyState.cfm" target="_blank">Uniform Crime Reporting (UCR)</a>