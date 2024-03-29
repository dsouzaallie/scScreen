library(shiny)
library("shinythemes")

shinyUI(fluidPage(theme=shinytheme("darkly"),
                  tabsetPanel(type="tabs",
                              tabPanel("Algorithmic Imputation.",
                                       textInput('psmfilename', 'PSM Filename'),
                                       textInput('replicatenum1', 'Replicate Number of Sample 1'),
                                       textInput('replicatenum2', 'Replicate Number of Sample 2'),
                                       textInput('abundancecolumn', 'Abundance Column'),
                                       actionButton('runimputation', 'Impute my Missing Values with missForest!')),
                              tabPanel("PCA.",
                                       textInput('ImputedFile', 'Single Cell Filename'),
                                       textInput('tmtchannels', 'Number of TMT Channels Used'),
                                       textInput('controls', 'Control Channels (i.e. 128|129)'),
                                       textInput('treatments', 'Treatment Channels (i.e. 130|131)'),
                                       textInput('pcatitle', 'PCA Title : ', value='PCA.'),
                                       textInput('grp1label', 'Label for PCA Group 1 : ', value='Group1'),
                                       textInput('grp2label', 'Label for PCA Group 2: ', value='Group2'),
                                       textInput('grp3label', 'Label for PCA Group 3: ', value='Group3'),
                                       #plotOutput('PCAplot', click="plot_click"),
                                       actionButton('downloadPCA', 'Generate PCA.')),
                              tabPanel("Heatmap.",
                                       textInput('ImputedFileHM', 'Single Cell Filename'),
                                       textInput('tmtchannelsHM', 'Number of TMT Channels Used'),
                                       textInput('controlsHM', 'Control Channels (i.e. 128|129)'),
                                       textInput('treatmentsHM', 'Treatment Channels (i.e. 130|131)'),
                                       textInput('heatmaptitle', 'Heatmap Title : ', value='Heatmap.'),
                                       textInput('grp1labelHM', 'Label for Heatmap Group 1 : ', value='Group1'),
                                       textInput('grp2labelHM', 'Label for Heatmap Group 2: ', value='Group2'),
                                       textInput('grp3labelHM', 'Label for Heatmap Group 3: ', value='Group3'),
                                       #plotOutput('heatmapPlot'),
                                       actionButton('downloadHeatmap', 'Generate Heatmap.')),
                              tabPanel("SIMLR (Optional).",
                                       textInput('SIMLRFile', 'Single Cell Filename'),
                                       textInput('seed', 'Seed Computation: ', value='Identify Seed Computation'),
                                       textInput('c', 'c: ', value='Identify c Component'),
                                       #plotOutput('simlrComponents'),
                                       actionButton('downloadSIMLR', 'Generate SIMLR.')),
                         
                  )
)

)