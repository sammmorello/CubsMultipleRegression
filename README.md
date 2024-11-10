



Multiple Regression Modeling of Batting Statistics and Team Wins for Chicago Cubs

Samantha Morello

*Introduction *

The Chicago Cubs are an American professional baseball team established in 1876. Being one of the oldest franchises in Major League Baseball (MLB), the franchise has an abundance of historical data available, making it possible to conduct a detailed analysis of the team's batting performance over the last 25 years. In order to maximize the team’s efficiency, it is crucial to identify the key batting factors that contribute to wins for the Chicago Cubs through the development of predictive regression models. This study aims to identify and develop a robust multiple regression model that can accurately predict the number of wins based on various batting statistics for the Chicago Cubs.

*Abstract Executive Summary*

The goal of this analysis is to determine the best two-variable model and the best three-variable model for predicting team wins for the Chicago Cubs. To do this, it is crucial to first identify the key batting metrics that most significantly contribute to wins for the Chicago Cubs. For this analysis, several batting variables will be correlated alongside wins in order to determine the best two and three-variable model. The various batting factors to be analyzed include runs, hits, doubles, and more. In total, this analysis will consider eleven different batting statistics that may impact team wins. 

The full list of variables analyzed are below:


<table>
  <tr>
   <td>
<ul>

<li>R (Runs)</li>
</ul>
   </td>
   <td>
<ul>

<li>SB (Stolen Bases)</li>
</ul>
   </td>
  </tr>
  <tr>
   <td>
<ul>

<li>H (Hits)</li>
</ul>
   </td>
   <td>
<ul>

<li>BB (Walks)</li>
</ul>
   </td>
  </tr>
  <tr>
   <td>
<ul>

<li>DB (Doubles)</li>
</ul>
   </td>
   <td>
<ul>

<li>SO (Strikeouts)</li>
</ul>
   </td>
  </tr>
  <tr>
   <td>
<ul>

<li>TP (Triples)</li>
</ul>
   </td>
   <td>
<ul>

<li>BA (Batting Average)</li>
</ul>
   </td>
  </tr>
  <tr>
   <td>
<ul>

<li>HR (Home Runs)</li>
</ul>
   </td>
   <td>
<ul>

<li>BatAge (Age of Batters)</li>
</ul>
   </td>
  </tr>
  <tr>
   <td>
<ul>

<li>RBI (Runs Batted In)</li>
</ul>
   </td>
   <td>
   </td>
  </tr>
</table>


These batting statistics are used in order to identify the most significant association with wins. To conduct the analysis, Multiple Regression will be utilized with the goal of understanding influencing factors that contribute to wins for the Chicago Cubs. 

The data collected focuses on batting statistics for the Chicago Cubs from the years of 1999 to 2024, excluding the year 2020. This dataset includes 25 observations, one for each year, and 27 batting related variables. From the 27 batting related variables, the analysis will only utilize four, RBI (Runs Batted In) , R (Runs) , BB (Walks), DB (Doubles). These are the four variables that were found to be most strongly associated with team wins and will be further correlated for our multiple regression models. Determining the best two-variable and the best three-variable multiple regression model involves a multi-step process of testing all combinations of variables with wins, the dependent variable. This requires six two-variable models and two three-variable models. Following the creation of these models, their output is analyzed and compared based on several specific statistical criteria and the best model is revealed. To further enhance the analysis, additional models incorporating interaction terms and second-order terms are generated based on the best initial model.  The purpose of this is to assess whether these additional variables have an impact on the model’s overall efficiency and predictive accuracy, or if the original model is still the best. 

After diving into each of the multiple regression, interaction, and second order models, the findings indicate that the three-variable Model (Model 2: Runs Batted In & Doubles & Walks) is the most significant model in predicting wins for the Chicago Cubs. Additionally our analysis revealed that the interaction and second order model did not add improvements in the model for predicting wins for the Chicago Cubs. In order to better understand these results, further explanation regarding the process of this analysis will be displayed through the exploratory analysis, correlation analysis, methodology and Multiple Regression techniques used. 

*Research Question *

The analysis of this study focuses on the following research question: 

What is the best two-variable model and the best three-variable model for predicting team wins for the Chicago Cubs based on the four batting variables that are most associated with team wins? (RBI (Runs Batted In) , R (Runs) , BB (Walks) , DB (Doubles))

*Data*

The dataset used within this study was retrieved from Baseball Reference, an official website for current and historical baseball players, teams, scores and leader statistics. It contains only data gathered from the years of 1999 to 2024, excluding the year of 2020. Therefore, the dataset focuses on 25 years of batting statistics for the Chicago Cubs. As stated above, this dataset includes 25 observations, one observation for each year analyzed, and 27 batting related variables. For the purpose of this analysis, four specific batting variables are examined: 


    RBI (Runs Batted In): The number of runs a player contributes by hitting the ball, allowing teammates on base to score.


    R (Runs): The total number of times players successfully reach home plate.


    BB (Walks): The number of times a batter reaches first base due to pitches being called as balls.


    DB (Doubles): Hits where the batter safely reaches second base.

These variables were chosen because they were found to represent the four variables most strongly associated with team wins for the Chicago Cubs. The data gathered from these four batting variables in correlation to wins will help to identify which multiple regression model has the most significant impact on team wins for the Chicago Cubs. 

*Exploratory Data Analysis*

The very first step of the analysis involved conducting Exploratory Data Analysis (EDA), which is used to analyze and investigate datasets and summarize main characteristics. To better understand the distribution of the variables, each component is visualized and displayed with a histogram. The eleven important batting statistic variables are to be displayed in histogram form (R (Runs), H (Hits), DB (Doubles), TP (Triples), HR (Home Runs), RBI (Runs Batted In), SB (Stolen Bases), BB (Walks), SO (Strikeouts), BA (Batting Average), BatAge (Age of Batters)). Each histogram displays a unique distribution of data, although several appear to be slightly right skewed. To begin, the histogram for runs displays most observations falling between just under 700-800 runs. As for the histogram for hits, its distribution seems to be symmetrical and it is clear that the majority of hits lie around 1300-1450. Around 1500 hits, there appears to be a drop in observations. The histogram for doubles shows observations concentrated between 250-300 with a right skew in the data, like previously mentioned. Although the peak of observations is between 250-275, indicating a very small range of performance for doubles. The next histogram, for triples, also displays a right skew and most observations are seen to be between 25-35. The graph shows that there are more observations towards the lower end. The histogram for Home Runs displays most observations having between 150-200 home runs. Additionally, it displays a right skew toward lower home run totals. Although observations are very low just before the peak between 125-150. The histogram for runs batted in has a high concentration of observations lying between 650-750. The data seems to be fairly symmetrical and centered without a clear skew, this indicates a normal spread of data. The next histogram, stolen bases, is another example of a right skewed graph. Most of the observations display that                                                                            fewer than 75 bases were stolen and a very little number of observations above that.  The peak appears to be between 50-75, which is the reason for the long right tail. Next up is the histogram displaying walks, in this graph the highest number of observations lies between around 550-650. Although, observations also seem to be a bit high from 400-500, with a drop off between 500-550. The next histogram, displaying strike outs, is another example of a relatively symmetrical distribution. Again this indicates a normal spread of data. Although it could be said that there might be a very slight right skew, with the majority of observations lying just above 1000 to around 1500. As for the histogram for batting averages, there is a higher concentration of observations that sit just above 0.25 and a bit below 0.27. The graph also displays that there are relatively high batting averages on the lower end, around 0.24, indicating a right skew in the data. The last of our eleven batting statistic variables, displays the age of batters. This histogram appears to be relatively symmetrical, with a spread of ages around 26 up to around 32 years old. There does not appear to be a skew within this graph, just a tiny peak around the year 28. Another important histogram to visualize is the dependent variable of the analysis, wins. In this histogram it is clear to see a right skew, with a peak in observations around 70-80. This indicates that the Chicago Cubs typically have seasons with around 70-80 wins. This can also suggest that high winning seasons are less common for the Chicago Cubs during this time frame.

The visualization of each batting metric variable displayed that many of the variables are right skewed, including doubles, triples, home runs, etc. Additionally, it revealed several other variables displaying a more symmetrical distribution, including hits, strike outs, and age of batters. The exploration and visualization of these key components provide a foundational understanding of the dataset as a whole and aid in the prediction of wins for the Chicago Cubs. 

*Correlation Analysis*

In order to determine the four batting statistic variables that are most strongly associated with team wins, a correlation analysis was implemented. This is done by analyzing the output of a ‘proc corr’ procedure in SAS, which calculates the correlation coefficients between the specific batting variables (all 11 variables previously mentioned) and wins. The correlation coefficient measures the strength and direction of the linear relationship between two variables. This means that the four variables with the highest correlation coefficients represent the strongest associations. The four variables that were found to have the highest correlation coefficient and therefore have the strongest relationship to wins are:

RBI (Runs Batted In): 0.64058 		BB (Walks): 0.53792

R (Runs): 0.63919				DB (Doubles): 0.39551

By identifying the four variables with the strongest correlation to wins, we can now proceed to the analysis and implementation of our multiple regression models. But before that, visualizations for each of these variables are displayed to effectively assess these relationships between each of the four selected variables and wins. This step is done to spot any outliers or trends in the data. 

Since the correlation between runs batted in and wins is the strongest, let's start there. This scatterplot somewhat displays a positive direction, although it is not clear. This plot also somewhat displays a linear trend within the data. The distribution of points indicates a moderate relationship. Lastly, it is hard to tell but may include one questionable outlier. As for the scatterplot of runs and wins, a slight positive direction can also be seen. As well as a slight linear trend. With the inconsistent, but somewhat linear distribution of points, it can be considered to have a weak to moderate trend.  Lastly, it does not necessarily appear to have any outliers as all points are a bit wide spread.The remaining two plots have similar qualities and trends displayed. It appears that both plots seem to have no clear trend or pattern. For the scatter plot displaying walks and wins, there is no clear direction or form. The strength of the plot is very weak, with no evident pattern. There may be outliers, but again it is hard to tell how they impact the model. Overall, there does not appear to be a very strong correlation between the two variables. The same interpretation can be said for the scatter plot displaying doubles and wins. These scatterplots do not display a correlation between walks and doubles and team wins. Although these scatter plots do not display extremely clear trends, they help to provide visuals of the relationships before diving into the more in depth regression analysis.

*Multiple Regression *

*	*Jumping into the Multiple Regression analysis, using wins as the dependent variable and the four key batting metrics as the independent variables, the relationship between batting performance and team success was conducted. This multi-step process incorporates all combinations of the four variables within several multiple regression models with the goal of identifying which combinations of variables most effectively predict the number of wins for the Chicago Cubs. This requires six two-variable models, two three-variable models and two more complex models. 

	Each model was analyzed and evaluated based on key statistical criteria within the outputs of each model. These metrics included the Adjusted R-Square, F Test P-Value, Standard Deviation (Root MSE), and Coefficient Variation. It is crucial to consider these metrics when examining multiple regression models because they provide a comprehensive view of the model’s overall performance and accuracy. 

	Why are each of these statistical metrics important? The importance of the adjusted r square lies in its ability to display how well the independent variables explain the variability in the dependent variable. A higher adjusted r square indicates a better fit, therefore the model that displays the highest adjusted r square has potential to be the best. Next, it is important to look at the F Test P-Value because it reveals the overall significance of the model. Having p-values less than 0.05, or alpha, indicates that the variables are statistically significant. The standard deviation, or root mse, indicates the predictive accuracy of a model. Having a lower root mse means that the model's predictions are closer to the actual values, which indicates better predictive accuracy. Lastly it is important to look at the coefficient of variation because it provides insights to how much variability there is relative to the mean of the dependent variable. Through this analysis, all of these key metrics are considered and used in determining the best overall multiple regression model that effectively predicts the number of wins for the Chicago Cubs. 

*Results*

*	*Beginning with the six two-variable multiple regression models, they were generated, pairing each combination of the four variables, with the objective being to examine how each pair of batting metrics correlated with wins. Each model was analyzed based on the specific key metrics stated above.* *In order to better visualize each model and its key statistics, the following table was generated. 

*2-variable Model Key Statistic Table*

Key metrics from all six models considered when determining the best two-variable model.


<table>
  <tr>
   <td><em>First Order Two Variable Models</em>
   </td>
   <td><em>R Squared Adjusted</em>
   </td>
   <td><em>F Test P-Value</em>
   </td>
   <td><em>Standard Deviation</em>
   </td>
   <td><em>Coefficient Variation</em>
   </td>
  </tr>
  <tr>
   <td>Model 1:  <em>Runs Batted In & Runs</em>
<p>
Wins = 2.02743 + 0.08919(RBI) + 0.02215(R)	
   </td>
   <td><em>0.3569</em>
   </td>
   <td><em>0.0030</em>
   </td>
   <td><em>9.46317</em>
   </td>
   <td><em>11.81714</em>
   </td>
  </tr>
  <tr>
   <td>Model 2: <em>Runs Batted In & Walks</em>
<p>
Wins = 3.07676 + 0.09110(RBI) + 0.02600(BB)
   </td>
   <td><em>0.3717</em>
   </td>
   <td><em>0.0023</em>
   </td>
   <td><em>9.35360</em>
   </td>
   <td><em>11.68031</em>
   </td>
  </tr>
  <tr>
   <td><strong>Model 3: <em>Runs Batted In & Doubles</em></strong>
<p>
<strong>Wins = -28.61247 + 0.10274(RBI) + 0.13272(DB)</strong>
   </td>
   <td><strong><em>0.4460</em></strong>
   </td>
   <td><strong><em>0.0006</em></strong>
   </td>
   <td><strong><em>8.78262</em></strong>
   </td>
   <td><strong><em>10.96731</em></strong>
   </td>
  </tr>
  <tr>
   <td>Model 4: <em>Runs & Walks</em>
<p>
Wins = 1.56177 + 0.08865(R) + 0.02626(BB)
   </td>
   <td><em>0.3700</em>
   </td>
   <td><em>0.0024</em>
   </td>
   <td><em>9.36584</em>
   </td>
   <td><em>11.69561</em>
   </td>
  </tr>
  <tr>
   <td>Model 5: <em>Runs & Doubles</em>
<p>
Wins = -29.71086 + 0.10001(R) + 0.13102(DB)
   </td>
   <td><em>0.4416</em>
   </td>
   <td><em>0.0006</em>
   </td>
   <td><em>8.81774</em>
   </td>
   <td><em>11.01116</em>
   </td>
  </tr>
  <tr>
   <td>Model 6: <em>Walks & Doubles</em>
<p>
Wins = -25.22385 + 0.09022(BB) + 0.20412(DB)
   </td>
   <td><em>0.4412</em>
   </td>
   <td><em>0.0006</em>
   </td>
   <td><em>8.82128</em>
   </td>
   <td><em>11.01558</em>
   </td>
  </tr>
</table>


	This table displays the key statistics gathered from each two-variable model, these statistics help to determine the best model. Again each model is evaluated based on the following key statistical criteria: Adjusted R-Square, F Test P-Value, Standard Deviation (Root MSE), and Coefficient Variation. From the table, it can be seen that Model 3: Runs Batted In (RBI) & Doubles (DB) is the best performing two-variable model. Out of all six models, it has the highest r square adjusted of 0.4460. This suggests that runs batted in and doubles were the most effective pair of predictors. Additionally the model presented a p value of 0.0006, which is &lt;0.05, indicating that the model is statistically significant. This model also had the lowest standard deviation, or root mse, of 8.78262. This means that this model's predictions were more accurate on average compared to the other models. Lastly, model 3 appears to have the lowest Coefficient Variation coming in at 10.96731, while all other models appear to be over 11.0. This means the model has less variability relative to the mean than the other models, which suggests more consistency in its predictions. Overall, this model presented the highest adjusted r square, a p value &lt;0.05, the lowest standard deviation, and lowest coefficient of variation, making it the most reliable model. Given these factors, Model 3: Runs Batted In (RBI) & Doubles (DB) was revealed to be the best performing two-variable model for predicting team wins for the Chicago Cubs.  

Building upon the two-variable models, two three-variable models were created by adding a third variable. Similarly, each possible combination of the four variables is implemented into two multiple regression models with the objective being to examine how each of the three batting metrics is correlated with wins. Again, both models were analyzed based on the specific key metrics stated above. In order to better visualize each model and its key statistics, the following table was generated. 

*3-variable Model Key Statistic Table*

Key metrics from both models considered when determining the best three-variable model.


<table>
  <tr>
   <td><em>First Order Three Variable Models</em>
   </td>
   <td><em>R Squared Adjusted</em>
   </td>
   <td><em>F Test P-Value</em>
   </td>
   <td><em>Standard Deviation</em>
   </td>
   <td><em>Coefficient Variation</em>
   </td>
  </tr>
  <tr>
   <td>Model 1:  <em>Runs Batted In & Doubles & Runs </em>
<p>
Wins = -28.08574 + 0.13493(RBI) + 0.13340(DB) - 0.03165(R)
   </td>
   <td><em>0.4199</em>
   </td>
   <td><em>0.0022</em>
   </td>
   <td><em>8.98711</em>
   </td>
   <td><em>11.22267</em>
   </td>
  </tr>
  <tr>
   <td><strong>Model 2: <em>Runs Batted In & Doubles & Walks</em></strong>
<p>
<strong>Wins = -35.26724 + 0.06011(RBI) + 0.16583(DB) + 0.05079(BB)</strong>
   </td>
   <td><strong><em>0.4736</em></strong>
   </td>
   <td><strong><em>0.0008</em></strong>
   </td>
   <td><strong><em>8.56147</em></strong>
   </td>
   <td><strong><em>10.69114</em></strong>
   </td>
  </tr>
</table>


This table displays the key statistics gathered from both three-variable models, these statistics help to determine the best model. Again each model is evaluated based on the following key statistical criteria: Adjusted R-Square, F Test P-Value, Standard Deviation (Root MSE), and Coefficient Variation. From the table, it can be seen that Model 2: Runs Batted In & Doubles & Walks is the best performing three-variable model. Between the two models, it has the highest r square adjusted of 0.4736, even higher than the adjusted r square of the best two-variable model. This suggests that adding walks as a third variable with runs batted in and doubles increased the model's predictive ability. This also suggests that these three variables are the most effective predictors so far. Additionally, this three-variable model displays a p value of 0.0008, which is &lt;0.05, indicating that the model is statistically significant. This model also had the lowest standard deviation, or root mse, of 8.56147, again even lower than the best two-variable model. This means that this model's predictions were more accurate on average compared to the other models, including the two-variable models. Lastly, model 2 appears to have the lowest coefficient variation coming in at 10.69114, while again the other model is over 11.0. The coefficient variation of this three-variable model is also lower than the best two-variable model. This means the model has less variability relative to the mean than all of the other models, including the two-variable models. This suggests that this three-variable model is more consistent in its predictions. Overall, this model presented the highest adjusted r square, a p value &lt;0.05, the lowest standard deviation, and lowest coefficient of variation, across all previously evaluated models, making it the most reliable model. This model's results suggest that when combined, runs batted in, doubles, and walks are the most impactful predictors of team wins. Given these factors, Model 2: Runs Batted In & Doubles & Walks was revealed to be the best performing three-variable model for predicting team wins for the Chicago Cubs.  

To further enhance the analysis, an interaction term model was developed based on the best overall model, the three-variable model. This is done to ensure that all possible relationships were explored in the exploration of finding the best overall model for predicting wins for the Chicago Cubs. The first step of this process was the creation of an interaction plot to determine whether interaction and/or second order terms might be needed. The plot generated displayed the slopes between variables tested, if the slopes appear to be different, an interaction term could be useful in improving the model, if slopes are parallel, an interaction term is not necessary. Because the plot reveals different slopes for the relationship between variables, it suggests that an interaction term could enhance the model. Based on the output of the plot, interaction terms were added and tested in the regression analysis with the objective being to examine how each of the three batting metrics is correlated with wins.The model was analyzed based on the same specific key metrics stated above. In order to better visualize each model and its key statistics, the following table was generated. 

*Interaction Model Key Statistic Table*


<table>
  <tr>
   <td><em>Interaction Model</em>
   </td>
   <td><em>R Squared Adjusted</em>
   </td>
   <td><em>F Test P-Value</em>
   </td>
   <td><em>Standard Deviation</em>
   </td>
   <td><em>Coefficient Variation</em>
   </td>
  </tr>
  <tr>
   <td>Model:
<p>
<em>Wins = -101.91701 + 0.55681(RBI) </em>
<p>
<em>- 0.08823(DB) - 0.21558(BB) </em>
<p>
<em>- 0.00103(RBI_DB) </em>
<p>
<em>- 0.00039707(RBI_BB) </em>
<p>
<em>+ 0.00191(DB_BB)</em>
   </td>
   <td><em>0.4215</em>
   </td>
   <td><em>0.0112</em>
   </td>
   <td><em>8.97525</em>
   </td>
   <td><em>11.20786</em>
   </td>
  </tr>
</table>


This table displays the key statistics gathered from the interaction model, these statistics help to determine the best model. Again each model is evaluated based on the following key statistical criteria: Adjusted R-Square, F Test P-Value, Standard Deviation (Root MSE), and Coefficient Variation. From the table, it can be seen that the interaction model does not outperform the original three-variable model, Model 2: Runs Batted In & Doubles & Walks. The interaction model has an adjusted r square of 0.4215, which is lower than previous results (adjusted r square of previous model: 0.4736). The model has a p value of 0.0112, &lt;0.05, which indicates that model is statistically significant. The standard deviation lies at 8.97525, which does not compare to the results of the previous model (standard deviation of previous model: 8.56147). Lastly, this model appears to have a coefficient variation of 11.20786, which again does not compare (coefficient variation of previous model: 10.69114). This suggests that the three-variable model is more consistent in its predictions without interaction terms. Overall, this model did not perform as well as the three-variable model with a lower adjusted r square, a higher standard deviation, and higher coefficient of variation. This model's results suggest that adding more terms does not always result in a better model. Despite including interaction terms, the three-variable model, Model 2: Runs Batted In & Doubles & Walks, remains the best performing three-variable model for predicting team wins for the Chicago Cubs. 

In addition to the interaction terms, a second-order term model was also generated based on the best overall model, the three-variable model, to explore the possibility of non-linear relationships between batting metrics and wins. Second order terms were added and tested in the regression analysis with the objective being to examine how each of the three batting metrics is correlated with wins.The model was analyzed based on the same specific key metrics stated above. In order to better visualize each model and its key statistics, the following table was generated. 

*Second Order Model Key Statistic Table*


<table>
  <tr>
   <td><em>Second Order Model</em>
   </td>
   <td><em>R Squared Adjusted</em>
   </td>
   <td><em>F Test P-Value</em>
   </td>
   <td><em>Standard Deviation</em>
   </td>
   <td><em>Coefficient Variation</em>
   </td>
  </tr>
  <tr>
   <td>Model 2: <em>Runs Batted In & Doubles & Walks</em>
<p>
Wins = -264.86198 + 0.08995(RBI) 
<p>
+ 1.01794(DB) + 0.42211(BB) 
<p>
- 0.00001633(RBI_2) - (0.00147)DB_2  
<p>
- 0.00035868(BB_2)
   </td>
   <td><em>0.4225</em>
   </td>
   <td><em>0.0110</em>
   </td>
   <td><em>8.96708</em>
   </td>
   <td><em>11.19766</em>
   </td>
  </tr>
</table>


This table displays the key statistics gathered from the second order model, these statistics help to determine the best model. Again each model is evaluated based on the following key statistical criteria: Adjusted R-Square, F Test P-Value, Standard Deviation (Root MSE), and Coefficient Variation. From the table, it can be seen that similar to the interaction model, the second order model does not outperform the original three-variable model, Model 2: Runs Batted In & Doubles & Walks. The second order model has an adjusted r square of 0.4225, which again is lower than previous results (adjusted r square of previous model: 0.4736). The second order model has a p value of 0.0110, &lt;0.05, which still indicates that model is statistically significant. The standard deviation of this model is 8.96708, which again does not compare to the results of the previous model (standard deviation of previous model: 8.56147). Lastly, this model has a coefficient variation of 11.19766, which again does not compare (coefficient variation of previous model: 10.69114). Just like the interaction model, this suggests that the three-variable model is more consistent in its predictions without second order terms. Overall, this model did not perform as well as the three-variable model with a lower adjusted r square, a higher standard deviation, and higher coefficient of variation. The results from this model reiterate that adding more terms does not always result in a better model. Despite including second order terms, the three-variable model, Model 2: Runs Batted In & Doubles & Walks, remains the best performing three-variable model for predicting team wins for the Chicago Cubs. 

Through this multi-step analysis, the most effective model for predicting wins based on various combinations of batting metrics was successfully identified. The best overall model for predicting team wins for the Chicago Cubs is the three-variable model, Model 2: Runs Batted In & Doubles & Walks. While the best two-variable model was first revealed to be Model 3: Runs Batted In & Doubles, adding an additional term (BB walks) for the purpose of creating a three-variable model resulted in a better overall model. These results suggest that when combined, runs batted in, doubles, and walks are the most impactful predictors of team wins. Despite the exploration of an interaction model and second-order model, the three-variable model, Model 2: Runs Batted In & Doubles & Walks, remained on top. This model was chosen as the best overall model due to its strong statistical performance and interpretability. In the end, the analysis identified Model 2: Runs Batted In & Doubles & Walks as the most effective model for predicting wins based on key batting statistics for the Chicago Cubs. 

*Methodology*

For the methodology of this analysis, several statistical techniques were implemented within SAS. SAS, also known as the Statistical Analysis System, is a software suite that allows users to perform data management and analysis, advanced analytics, predictive analytics and much more. To begin, a ‘proc freq’ statement was used in SAS to gather important basic information regarding the dataset including the number of observations. For the purpose of the exploratory data analysis portion of this study, histograms were implemented within SAS. In SAS, histograms are generated with the ‘proc sgplot’ statement. Each variable was displayed with this technique in order to gather a better understanding before jumping into the bulk of the analysis. Histograms help to visualize distribution of variables in order to identify potential skewness, outliers, and variability. The purpose of using histograms in regards to this study is to better visualize each batting variable. Additionally, in SAS, a correlation analysis was done to find the four most relevant variables in regards to the dependent variable. This is done with a ‘proc corr’ statement and includes all eleven variables that were correlated with wins. After discovering the  four most relevant variables in regards to wins, the ‘sgplot’ was utilized once more for the creation of scatterplots. Scatter plots are an impactful tool that help provide visual insights of the relationships between variables. Each of the four variables was displayed with this technique alongside the dependent variable in order to gather a better understanding of the distributions of data before jumping into the bulk of the analysis. Following this, our multiple regression models were built with the ‘proc reg’ statement. This was utilized in the testing of all combinations of variables to find the best model. The ‘proc reg’ statement was also utilized in the creation of the interaction term model and the second order term model. Although before that step, a ‘proc glm’ and ‘proc plm’ statement was used to generate an interaction plot for the justification of adding an interaction term. These techniques create a plot or a graph in which the slopes of the variables can be seen. This is helpful in determining if an interaction term is needed. Additionally, for the creation of both the interaction and second order models, two new data sets were created in order to introduce the interaction terms and second order terms. Once generated, the new data sets including these new terms were utilized in each corresponding model. In summary, several statistical techniques were used within SAS for the purpose of this analysis in order to achieve the overall goal of identifying the best model for predicting team wins.

*Conclusion*

In conclusion, this analysis revealed that Model 2: Runs Batted In & Doubles & Walks (three-variable model) is the best overall model for predicting wins based on key batting statistics for the Chicago Cubs based on the years of 1999-2024. While one of the two-variable models, Model 3: Runs Batted In (RBI) & Doubles (DB) additionally revealed to perform very well in predicting wins for the Chicago Cubs, it was not enough to outshine the three-variable model. Model 2: Runs Batted In & Doubles & Walks, presented the highest overall adjusted r square, a p value &lt;0.05, the lowest overall standard deviation, and lowest overall coefficient of variation, across all evaluated models, making it the most reliable and effective model. Despite testing interaction and second order models the three-variable model presented the best results. This suggests that when combined, runs batted in, doubles, and walks are the most impactful predictors of team wins for the Chicago Cubs. Given these outcomes, Model 2: Runs Batted In & Doubles & Walks is the best performing model for predicting team wins for the Chicago Cubs for the years of 1999-2024. 

If I were to complete this analysis again, I would consider incorporating more batting variables. Likewise, I would be interested to expand the metrics to include things like pitching or defensive statistics. Investigating more potential key statistics could ultimately enhance the models overall efficiency and further improve the team's success on the field. Additionally, I would consider expanding the dataset to include additional years, or even conducting the same analysis of the team's early years. This would offer valuable insight into how the Chicago Cubs performance has evolved over time. Additionally I would consider exploring the use of different software applications for better visualizations and analysis. Software I would be interested in using is R or Python as they offer powerful libraries such as ggplot2 (R) and Matplotlib (Python). These libraries are extremely useful for creating detailed, interactive plots that could provide better visualizations of the relationships between variables. I would keep these ideas in mind if I were to conduct a similar analysis, with the goal of refining the model by integrating more variables and testing different combinations of batting factors and incorporating the use of different softwares. With this I could improve predictions and provide deeper insights into team winning patterns over time. 

I gained a substantial amount of knowledge through my analysis of building a multiple regression model that can accurately predict the number of wins based on various batting statistics for the Chicago Cubs. Through this, I was able to successfully determine the best performing model and therefore I am happy with the results. I am looking forward to implementing what I have learned from this analysis on future projects involving predictive modeling and more advanced statistical techniques. 

IMPORTANT TABLES 

*2-variable Model Key Statistic Table*


<table>
  <tr>
   <td><em>First Order Two Variable Models</em>
   </td>
   <td><em>R Squared Adjusted</em>
   </td>
   <td><em>F Test P-Value</em>
   </td>
   <td><em>Standard Deviation</em>
   </td>
   <td><em>Coefficient Variation</em>
   </td>
  </tr>
  <tr>
   <td>Model 1:  <em>Runs Batted In & Runs</em>
<p>
Wins = 2.02743 + 0.08919(RBI) + 0.02215(R)	
   </td>
   <td><em>0.3569</em>
   </td>
   <td><em>0.0030</em>
   </td>
   <td><em>9.46317</em>
   </td>
   <td><em>11.81714</em>
   </td>
  </tr>
  <tr>
   <td>Model 2: <em>Runs Batted In & Walks</em>
<p>
Wins = 3.07676 + 0.09110(RBI) + 0.02600(BB)
   </td>
   <td><em>0.3717</em>
   </td>
   <td><em>0.0023</em>
   </td>
   <td><em>9.35360</em>
   </td>
   <td><em>11.68031</em>
   </td>
  </tr>
  <tr>
   <td><strong>Model 3: <em>Runs Batted In & Doubles</em></strong>
<p>
<strong>Wins = -28.61247 + 0.10274(RBI) + 0.13272(DB)</strong>
   </td>
   <td><strong><em>0.4460</em></strong>
   </td>
   <td><strong><em>0.0006</em></strong>
   </td>
   <td><strong><em>8.78262</em></strong>
   </td>
   <td><strong><em>10.96731</em></strong>
   </td>
  </tr>
  <tr>
   <td>Model 4: <em>Runs & Walks</em>
<p>
Wins = 1.56177 + 0.08865(R) + 0.02626(BB)
   </td>
   <td><em>0.3700</em>
   </td>
   <td><em>0.0024</em>
   </td>
   <td><em>9.36584</em>
   </td>
   <td><em>11.69561</em>
   </td>
  </tr>
  <tr>
   <td>Model 5: <em>Runs & Doubles</em>
<p>
Wins = -29.71086 + 0.10001(R) + 0.13102(DB)
   </td>
   <td><em>0.4416</em>
   </td>
   <td><em>0.0006</em>
   </td>
   <td><em>8.81774</em>
   </td>
   <td><em>11.01116</em>
   </td>
  </tr>
  <tr>
   <td>Model 6: <em>Walks & Doubles</em>
<p>
Wins = -25.22385 + 0.09022(BB) + 0.20412(DB)
   </td>
   <td><em>0.4412</em>
   </td>
   <td><em>0.0006</em>
   </td>
   <td><em>8.82128</em>
   </td>
   <td><em>11.01558</em>
   </td>
  </tr>
</table>


*3-variable Model Key Statistic Table*


<table>
  <tr>
   <td><em>First Order Three Variable Models</em>
   </td>
   <td><em>R Squared Adjusted</em>
   </td>
   <td><em>F Test P-Value</em>
   </td>
   <td><em>Standard Deviation</em>
   </td>
   <td><em>Coefficient Variation</em>
   </td>
  </tr>
  <tr>
   <td>Model 1:  <em>Runs Batted In & Doubles & Runs </em>
<p>
Wins = -28.08574 + 0.13493(RBI) + 0.13340(DB) - 0.03165(R)
   </td>
   <td><em>0.4199</em>
   </td>
   <td><em>0.0022</em>
   </td>
   <td><em>8.98711</em>
   </td>
   <td><em>11.22267</em>
   </td>
  </tr>
  <tr>
   <td><strong>Model 2: <em>Runs Batted In & Doubles & Walks</em></strong>
<p>
<strong>Wins = -35.26724 + 0.06011(RBI) + 0.16583(DB) + 0.05079(BB)</strong>
   </td>
   <td><strong><em>0.4736</em></strong>
   </td>
   <td><strong><em>0.0008</em></strong>
   </td>
   <td><strong><em>8.56147</em></strong>
   </td>
   <td><strong><em>10.69114</em></strong>
   </td>
  </tr>
</table>


*Interaction Model Key Statistic Table*


<table>
  <tr>
   <td><em>Interaction Model</em>
   </td>
   <td><em>R Squared Adjusted</em>
   </td>
   <td><em>F Test P-Value</em>
   </td>
   <td><em>Standard Deviation</em>
   </td>
   <td><em>Coefficient Variation</em>
   </td>
  </tr>
  <tr>
   <td>Model:<em> Wins = -101.91701 + 0.55681(RBI) </em>
<p>
<em>- 0.08823(DB) - 0.21558(BB) </em>
<p>
<em>- 0.00103(RBI_DB) </em>
<p>
<em>- 0.00039707(RBI_BB) </em>
<p>
<em>+ 0.00191(DB_BB)</em>
   </td>
   <td><em>0.4215</em>
   </td>
   <td><em>0.0112</em>
   </td>
   <td><em>8.97525</em>
   </td>
   <td><em>11.20786</em>
   </td>
  </tr>
</table>


*Second Order Model Key Statistic Table*


<table>
  <tr>
   <td><em>Second Order Model</em>
   </td>
   <td><em>R Squared Adjusted</em>
   </td>
   <td><em>F Test P-Value</em>
   </td>
   <td><em>Standard Deviation</em>
   </td>
   <td><em>Coefficient Variation</em>
   </td>
  </tr>
  <tr>
   <td>Model 2: <em>Runs Batted In & Doubles & Walks</em>
<p>
Wins = -264.86198 + 0.08995(RBI) 
<p>
+ 1.01794(DB) + 0.42211(BB) 
<p>
- 0.00001633(RBI_2) - (0.00147)DB_2  
<p>
- 0.00035868(BB_2)
   </td>
   <td><em>0.4225</em>
   </td>
   <td><em>0.0110</em>
   </td>
   <td><em>8.96708</em>
   </td>
   <td><em>11.19766</em>
   </td>
  </tr>
</table>


SAS CODE + OUTPUT 



<p id="gdcalert1" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image1.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert2">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image1.png "image_tooltip")


<p id="gdcalert2" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image2.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert3">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image2.png "image_tooltip")




<p id="gdcalert3" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image3.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert4">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image3.png "image_tooltip")




<p id="gdcalert4" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image4.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert5">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image4.png "image_tooltip")




<p id="gdcalert5" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image5.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert6">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image5.png "image_tooltip")


<p id="gdcalert6" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image6.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert7">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image6.png "image_tooltip")




<p id="gdcalert7" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image7.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert8">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image7.png "image_tooltip")


<p id="gdcalert8" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image8.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert9">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image8.png "image_tooltip")




<p id="gdcalert9" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image9.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert10">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image9.png "image_tooltip")


<p id="gdcalert10" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image10.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert11">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image10.png "image_tooltip")




<p id="gdcalert11" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image11.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert12">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image11.png "image_tooltip")




<p id="gdcalert12" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image12.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert13">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image12.png "image_tooltip")




<p id="gdcalert13" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image13.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert14">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image13.png "image_tooltip")


<p id="gdcalert14" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image14.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert15">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image14.png "image_tooltip")




<p id="gdcalert15" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image15.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert16">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image15.png "image_tooltip")




<p id="gdcalert16" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image16.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert17">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image16.png "image_tooltip")


<p id="gdcalert17" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image17.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert18">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image17.png "image_tooltip")




<p id="gdcalert18" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image18.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert19">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image18.png "image_tooltip")




<p id="gdcalert19" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image19.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert20">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image19.png "image_tooltip")


<p id="gdcalert20" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image20.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert21">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image20.png "image_tooltip")




<p id="gdcalert21" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image21.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert22">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image21.png "image_tooltip")




<p id="gdcalert22" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image22.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert23">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image22.png "image_tooltip")


<p id="gdcalert23" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image23.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert24">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image23.png "image_tooltip")




<p id="gdcalert24" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image24.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert25">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image24.png "image_tooltip")




<p id="gdcalert25" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image25.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert26">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image25.png "image_tooltip")


<p id="gdcalert26" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image26.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert27">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image26.png "image_tooltip")




<p id="gdcalert27" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image27.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert28">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image27.png "image_tooltip")


<p id="gdcalert28" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image28.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert29">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image28.png "image_tooltip")


<p id="gdcalert29" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image29.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert30">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image29.png "image_tooltip")




<p id="gdcalert30" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image30.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert31">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image30.png "image_tooltip")




<p id="gdcalert31" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image31.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert32">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image31.png "image_tooltip")




<p id="gdcalert32" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image32.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert33">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image32.png "image_tooltip")




<p id="gdcalert33" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image33.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert34">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image33.png "image_tooltip")

