# Codename: blackjack
# "I need to win the money I lost": Gambling Addiction and Our Bets on Its Risk Factors

## Authors
Ryan William Breuer (rbreuer@uw.edu)

Vincent Li (zli2003@uw.edu)

Ashley Mochizuki (azuki@uw.edu)

## Affiliation
INFO-201: Technical Foundation of Informatics - The Information School - University of Washington

## Date
Autumn 2022

## Abstract
In this project, our main question is to assess how a person's characteristics including personality, mental illnesses, and family history relate to their tendency to fall to gambling addiction. Gambling addiction is a problem that affects [more than 1% of the adult population in the U.S;](https://pubmed.ncbi.nlm.nih.gov/10474555/) in order to raise awareness for this issue, it's important to look closely at the history of people who are more likely to fall prey to gambling addiction. To address the question, we will look at [the data of a longitudinal study of people who have gambling problems](https://borealisdata.ca/dataset.xhtml?persistentId=doi:10.5683/SP3/JYUO8E) and analyze what environmental and temperamental factors cause a person to have a higher likelihood of becoming addicted to gambling.

## Keywords
gambling addiction, personality, family history and environment, gambling attitudes, social sciences

## Introduction
Gambling addiction, also dubbed compulsive gambling and compulsive gambling, is an impulsive-driven disorder that causes uncontrollable urges to gamble despite the tolls it takes on one's life. This disorder affects [1.60% of adults and 3.88% of adolescents at a severe, pathological level](https://pubmed.ncbi.nlm.nih.gov/10474555/). Gambling addiction can cause anxiety, financial ruin, drug and alcohol addiction, and damage to relationships.
The purpose of this project is to **examine what environmental and temperamental factors are correlated with a higher likelihood to suffer from gambling addiction.** By doing so, we can raise awareness for the factors that have a high correlation with gambling addiction, which can possibly help prevent high-risk people from falling to gambling addiction. In order to examine this topic, we plan to look at a 3-year-long longitudinal study from the [Alberta Gambling Research Institute (AGRI)](https://research.ucalgary.ca/alberta-gambling-research-institute) that examined 10,199 participants to complete surveys related to their demographics, gambling tendencies, and psychological and other comorbid factors related to gambling.

## Problem domain
### Project framing
We are mainly concerned with the topic of social sciences, particularly regarding gambling addiction in individuals. Our definition of the term "gambling addiction" refers to (1) continued engagement in gambling despite the negative consequences it brings, (2) reduced self-control over the urge to gamble, (3) active, compulsive engagement in gambling, and (4) an appetitive urge to gamble prior to engaging in the activity. This definition is coined from [the Harvard Review of Psychiatry](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4458066/#R1). In this project, we hope to connect an individual's environmental/psychological factors with their tendencies for gambling addiction.

### Human values
- Community: Community values are critical because they bring a sense of belonging to people along with social connection. This value is connected with the overarching topic of gambling addiction because gambling addiction can sometimes cause these community relationships to be severed, whether that be relationships with [family](https://core.ac.uk/display/30673225), friends, acquaintances, or even strangers. These community values can also be a tell in the likelihood of a person falling susceptible to gambling addiction.
- Universal access: This project serves to make data concerned with gambling addiction to be more accessible for people. Since gambling addiction is a problem that affects so many people, it's important to spread awareness for this issue and to make data about it more accessible for everyone.

### Direct and indirect stakeholders
#### Direct stakeholders
  - Non-gamblers or casual gamblers who directly read this project will be more informed on gambling addiction and the critical factors that are correlated with a higher likelihood of becoming addicted to gambling. This can help prevent gambling tendencies if they are at high risk.
  - Gamblers diagnosed with gambling disorder who directly read this project will be more informed about their disorder.

#### Indirect stakeholders
  - Family members and friends of a gambler or at-risk gamblers can possibly see addiction wane, which may be beneficial in repairing relationships or preventing those relationships from failing in the first place.
  - Community members of a community that houses gamblers or high-risk gamblers may be able to see less of a problem in the community caused by gamblers if there is a decline in the number of people who are facing gambling addiction. Gambling is correlated with [substance use disorders](https://pubmed.ncbi.nlm.nih.gov/25864600/), which can cause [violence within a community](https://pubmed.ncbi.nlm.nih.gov/7795023/).

### Possible harms and benefits
#### Harms
  - Gambling addiction is an _addiction_, meaning if someone is currently in rehabilitation for their gambling problems, there is a possibility of them relapsing. Consuming content about gambling, including reading this project, can be a relapse trigger for those currently trying to lose their gambling addiction.

#### Benefits
  - By raising awareness for gambling addiction and outlining high risk factors for those susceptible to gambling addiction, it may be possible to prevent people who are at high risk from suffering from gambling addiction.

## Research questions


>  Is there a correlation between people who suffer from gambling addiction and people who suffer from other addictions such as drug or alcohol addiction?

From [preliminary research](https://pubmed.ncbi.nlm.nih.gov/25864600/), we can already see that there is a correlation between people who suffer from gambling addiction and people who suffer from other addictions, mainly alcohol and drug addiction. We are interested in knowing the extent of the correlation between these groups of people, and also seeing whether there are correlations with other, non-substance addictions.

>  What environmental factors (including upbringing and family history) are correlated with a heightened risk for gambling addiction in individuals?

The phrase "nature vs. nurture" is commonly used in developmental biology to describe how a person's traits are influenced by both __nature__ and __nurture__. In this definition, nature refers to how genetics influence the traits of a person, and nurture refers to how the environment in which a person grows up influences the traits of a person. Tying this into gambling addiction, we are interested in seeing whether environmental factors like upbringing and relationships affect their likelihood of becoming a victim to gambling addiction.

>  How telling is a person's personality in their risk for falling to gambling addiction?

We are curious about whether it is possible to calculate the likelihood of a person falling to gambling addiction using only data about their personality. Similar to the nature vs. nurture debate, we're interested in if there is a more significant, less significant, or similar correlation between environmental factors and gambling addiction compared to personality traits and gambling addiction.

>  Is there a correlation between mental illness such as depression and people who suffer from gambling addiction?

We want to try to see the fullest picture we can of people who are likely to suffer from gambling addiction. This includes health factors including mental illnesses such as depression and anxiety. While looking at the data would only give us a correlation instead of causation, it would be helpful to spread awareness about the common mental disorders that are correlated with gambling addiction.


## The Dataset
We are using [The AGRI National Project: Online Panel Study](https://borealisdata.ca/dataset.xhtml?persistentId=doi:10.5683/SP3/JYUO8E) as our dataset.
#### How is the data related to the problem domain and research questions?
Some primary research objectives of the AGRI project include:
  - Profiling Canadian online gamblers and examining the prevalence rates of gambling and gambling addiction
  - Examining current attitudes towards gambling and knowledge about gambling based on demographic characteristics
  - Examining the etiology of gambling addiction and gambling remission

These observations are crucial in finding possible correlations between problem gamblers and risk factors that exacerbate the likelihood for becoming a problem gambler. Looking through the dataset, there are comprehensive profiling questions about each problem gambler who took the research survey including family history, other addictions, mental health, and other relevant factors.

#### Information about the dataset
| Data file name         | ANP_Online_Panel_Manual.pdf                                                                                                             | BaselineSurveyCodeBook_Final.pdf                             | FollowUpSurveyCodeBook_Final.pdf                             | 2018_2019_ANP_online.tab                                                           |
|------------------------|-----------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------|--------------------------------------------------------------|------------------------------------------------------------------------------------|
| Purpose                | Explain the purpose of the ANP research, sample information, data collection methods, data handling methods, references, and appendices | Data from the baseline survey taken in 2018                  | Data from the follow-up survey taken in 2019                 | Data from the baseline survey and the follow-up survey combined into one .tab file |
| Number of observations | n/a                                                                                                                                     | 10199                                                        | 4707                                                         | 10199                                                                              |
| Number of variables    | n/a                                                                                                                                     | 626                                                          | 1251                                                         | 1287                                                                               |
| Citation (URL)         | https://borealisdata.ca/file.xhtml?fileId=340407&version=1.1                                                                            | https://borealisdata.ca/file.xhtml?fileId=340408&version=1.1 | https://borealisdata.ca/file.xhtml?fileId=340405&version=1.1 | https://borealisdata.ca/file.xhtml?fileId=340406&version=1.1                       |



#### Full citations to each file

Williams, Robert J.; Shaw, Carrie A.; Belanger, Yale D.; Christensen, Darren R.; el-Guebaly, Nady; Hodgins, David C.; McGrath, Daniel S.; Nicoll, Fiona; Smith, Garry J.; Stevens, Rhys M. G., 2022, "The AGRI National Project: Online Panel Study [Canada]", https://doi.org/10.5683/SP3/JYUO8E, Borealis, V1; BaselineSurveyCodeBook_Final.pdf

Williams, Robert J.; Shaw, Carrie A.; Belanger, Yale D.; Christensen, Darren R.; el-Guebaly, Nady; Hodgins, David C.; McGrath, Daniel S.; Nicoll, Fiona; Smith, Garry J.; Stevens, Rhys M. G., 2022, "The AGRI National Project: Online Panel Study [Canada]", https://doi.org/10.5683/SP3/JYUO8E, Borealis, V1; FollowUpSurveyCodeBook_Final.pdf

Williams, Robert J.; Shaw, Carrie A.; Belanger, Yale D.; Christensen, Darren R.; el-Guebaly, Nady; Hodgins, David C.; McGrath, Daniel S.; Nicoll, Fiona; Smith, Garry J.; Stevens, Rhys M. G., 2022, "The AGRI National Project: Online Panel Study [Canada]", https://doi.org/10.5683/SP3/JYUO8E, Borealis, V1; 2018_2019_ANP_online.tab [fileName], UNF:6:zYa/HZXHxReCWJgFualSCg

Williams, Robert J.; Shaw, Carrie A.; Belanger, Yale D.; Christensen, Darren R.; el-Guebaly, Nady; Hodgins, David C.; McGrath, Daniel S.; Nicoll, Fiona; Smith, Garry J.; Stevens, Rhys M. G., 2022, "The AGRI National Project: Online Panel Study [Canada]", https://doi.org/10.5683/SP3/JYUO8E, Borealis, V1; ANP_Online_Panel_Manual.pdf


#### Provenance of the dataset


    1. Who collected the data? When, and for what purpose?

The data was collected by the [Alberta Gambling Research Institute (AGRI)](https://research.ucalgary.ca/alberta-gambling-research-institute). The AGRI is a consortium affiliated with the University of Alberta, University of Calgary, and University of Lethbridge in Canada. Their mission is to support and promote research on gambling in the Province of Alberta. Baseline data collection happened in 2018, and follow-up data was collected in 2019. The research was ultimately published in 2022. This study was the first comprehensive nationwide research study of Canadian-wide gambling and problem gambling.

    2. How was the data collection effort funded? Who can benefit from the data or make money?

The AGRI funded the data collection, and the AGRI got its money from the Government of Alberta. According to the [2020-2021 Annual Report](https://prism.ucalgary.ca/bitstream/handle/1880/114163/AGRI_Annual2020-21_SingleSheets_Final.pdf), the Ministry of Treasury Board and Finance provided the AGRI $1,500,000 annually until March 31, 2021. After a decline in funding for 2021, starting April 1, 2022, the Ministry of Treasury Board and Finance resumed funding the AGRI with $1,500,000 annually.
The money was used to fund research relating to gambling and gambling addiction in Canada. The data can benefit researchers studying gambling. It's possibly to make money with the data by creating studies and publishing them in academic journals or through online publishers. However, the AGRI seems to be a group mostly focused on academics.

    3. How was the data validated and held secure? Is it credible?

The study was funded for research purposes rather than for profit. The research study indicates the conditions that could've skewed the data. For example, it indicates that the data collection was opt-in, meaning only people who wanted to participate in the study participated. The study also indicates that this means that online panels can contain 3-4 times more people facing gambling addiction compared to randomly selecting people to participate. The study was also limited to individuals who were 18+ who gambled once a month or more.
Because the study lists out the factors that could have influenced the validity of the results, it should be credible for the purposes of this project.

    4. How did we obtain the data?
We found the data through the website [Borealis](https://borealisdata.ca/), which is the Canadian Dataverse Repository. The site is primarily designed to store, share, publish, and discover data. Borealis is funded through academic libraries, library consortia, universities, research organizations, and the Digital Research Alliance of Canada. The site is based on Dataverse software with development led by the [Institute for Quantitative Social Sciences at Harvard University](https://www.iq.harvard.edu/).

## Expected Implications
This project will make the factors most correlated with gambling addiction clearer. Some groups that this information can help includes related government workers and therapists specialized in helping people with addictions.

The project will be helpful to government workers working in a sector of the government related to addiction laws and treatments. One example of this is people who work for the [National Problem Gambling Helpline Network](https://www.ncpgambling.org/help-treatment/national-helpline-1-800-522-4700/). The findings of this project will allow people who work there to get a better idea about the kinds of people who are likely to fall to gambling addiction. It can also work as a resource that workers can point back to. Other than the National Problem Gambling Helpline Network, it can act as a resource for people who work for state governments as well.

The project will also be helpful for therapists and other health professionals who help people with addictions. Information from the project can act as a resource that they can refer to. If the data in the project is organized well, it can also act as a helpful infographic for patients and their families.

## Limitations
The dataset we are working with is from Canada. There may be culture differences in the Canadian gambling population and the American gambling population that could make a difference in found correlations. There could also be legislation differences in Canadian gambling laws and American gambling laws that make it so not all of the findings of this project can be applied towards Americans. For example, there may be laws in Canada that stop gambling for certain populations, but that don't exist in the U.S. If such laws exist, it could heavily skew the data and our findings.

The data we are looking at is based on opt-in surveys. This means that there is self-selection bias; instead of the participants being randomly chosen, only people who choose to participate are participating. Research found that online panels for gambling can contain [3-4 times more heavy gamblers and problem gamblers than in the general population](https://doi.org/10.1080/14459795.2015.1068353). It's important to keep this in mind before applying our conclusions to a population.

## Findings
From our findings, we were able to answer some of our original research questions.

>  Is there a correlation between people who suffer from gambling addiction and people who suffer from other addictions such as drug or alcohol addiction?

Yes, there is a correlation for people who suffer from gambling addiction and both people who suffer from drug and alcohol addictions. From the data, we found that people who suffer from gambling addiction are often also suffering from drug addiction or alcohol addiction. The correlation between alcohol addiction and gambling addiction is larger than the correlation between drug addiction and gambling addiction, but both patterns were possible to see in the data. After analyzing the data, we saw that the more debt a person has, the higher chance there is of them having an alcohol or drug addiction. So, people who suffer from alcohol or drug addictions are at a heightened risk of also suffering from gambling addiction.

>  What environmental factors (including upbringing and family history) are correlated with a heightened risk for gambling addiction in individuals?

The data did not look much at upbringing, but it did look at family history. Family history of gambling addiction is common in those with gambling addiction. The data defined "family history" as immediate family including parents, siblings, children, spouse, or "other" which was defined as grandparent, cousin, nephew, or niece. When processing the data, we found that out of the total number of observations, over 10% of the observed people had immediate family who had gambling problems. This showed that having family members with gambling addictions made it more likely for one to also suffer from the disorder.

>  How telling is a person's personality in their risk for falling to gambling addiction?

It is possible to measure a person's gambling addiction potential by looking at certain parts of their personality, mainly their impulsiveness. However, this correlation is not as strong as the correlations seen between other factors such as drug or alcohol addiction. When we examined how impulsiveness affects a person's likelihood to fall for gambling addiction, we noticed that most people gravitated towards an average amount of impulsiveness on a rating scale of the NEO personality test. We saw that even when comparing people with no debt vs. people with over $300,000 in debt, their impulsiveness stayed relatively average.

>  Is there a correlation between mental illness such as depression and people who suffer from gambling addiction?

There is a correlation between mental illnesses and those with gambling addiction. Out of the total number of observations of those who suffered from gambling addiction, we found that over 10% of people faced either physical or mental illnesses. Mental illnesses measured in this study include PTSD, depression, generalized anxiety, panic disorder, bipolar disorder, schizophrenia, bulimia, and OCD. There is no way to tell if there is causation, but there was correlation; this means that those who suffer from mental illnesses may have a higher risk of also suffering from gambling addiction.

## Discussion
Gambling addiction is a major issue that affects [more than 1% of the adult population in the U.S.](https://pubmed.ncbi.nlm.nih.gov/10474555/). It's important to examine how gambling addiction can affect people in order to study why it's such a big problem. People who suffer from gambling addiction suffer from multiple problems that can largely be grouped into the following categories: individual, family and relationships, and societal.

- **Individual**: Gambling addiction leads to individual problems because there are correlations between those who are addicted to gambling and those who have drugs/alcohol addictions. Drug and alcohol addiction is dangerous because it leads to poor health in individuals. Complications including [organ damage, mental health disorders, and other behavioral issues can occur](https://pubmed.ncbi.nlm.nih.gov/16096129/). Additionally, some gamblers suffer from other mental illnesses that they try to hide from others. This can lead to immense stress and exponential financial desolation. All of these factors can severely affect the health of an individual.

- **Family and Other Relationships**: Gambling addiction can cause individuals to withdraw from their support network and become too engrossed in gambling. This can affect their relationships with loved ones. For example, they may cut people off who try to convince them to stop gambling. Or, they can continuously ask for money that they can't pay back, which severely damages their relationships. Humans are social creatures. Social interaction is important in order to stay healthy. People report to overall [feel happier and have a more fulfilled sense of self](https://pubmed.ncbi.nlm.nih.gov/24769739/) when they have social interactions with others. Since gambling addiction disrupts this, it is harmful at this level.

- **Societal**: On the societal level, gambling addiction is a problem because like mentioned earlier, there are correlations between those addicted to gambling and those who suffer from alcohol and drug addiction. People who suffer from drug or alcohol addiction can be harmful in public depending on the severity of their addiction. This can disrupt public spaces. There is also research that drug abuse [can contribute](https://pubmed.ncbi.nlm.nih.gov/1886469/) to violence, crime, financial problems, housing problems, and homelessness.

Due to all of the problems that gambling addiction can cause, it is important to try to spread awareness for it and to prevent it from occurring in individuals as much as possible. The findings of this project can help spread awareness for those who are more at risk for suffering from gambling addiction. This can reduce the number of people who suffer from the disorder.

## Conclusion
The term "gambling addiction" is defined as an impulsive-driven disorder that causes uncontrollable urges to gamble despite the tolls it takes on one's life. People who suffer from gambling addiction can fall prey to financial ruin, relationship problems, other addictions, and other problems that have the potential to cause severe, irreversible damage to one's life and career. This project examined data from a 3-year-long longitudinal study led by the [Alberta Gambling Research Institute (AGRI)](https://research.ucalgary.ca/alberta-gambling-research-institute) that examined 10,199 participants who completed surveys related to their demographics, gambling tendencies, and psychological and other comorbid factors related to gambling. We used this data to find out what kinds of people suffer from gambling addiction. We then used the data to search for patterns and correlations in order to determine the groups of people who are more likely to suffer from the disorder.

We found that there are a few telltale signs and characteristics that are associated with those who suffer from gambling addiction. Looking at these factors in a person can make it easier to detect gambling addiction in them before it's too late. First, people who suffer from gambling addiction are likely to also have a drug or alcohol addiction, and vice versa. Next, people with family members who suffer from gambling addiction are more likely to also suffer from gambling addiction. Lastly, there is a correlation between people who suffer from gambling addiction and people who suffer from physical and mental illnesses. If any one or more of those conditions apply to a person, they are at a higher risk of falling for gambling addiction than the rest of the population. It's important to stay aware and cautious about this before it's too late.

In summary, if you or a loved one has drug/alcohol problems, has a family history of gambling, or has a physical/mental illness, there may be a higher chance of falling into gambling addiction.

We encourage those who read this project to take a look at themselves and their lives, and see if any of the conditions we found apply to them. We also encourage people to reach out to people who are at a heightened risk for gambling addiction due to having any of the characteristics we found. We want to spread awareness about gambling addiction and hopefully reduce the number of people who fall prey to the disorder.

## Acknowledgements
Thank you to our INFO 201 class TA Raina for being amazing and always extremely helpful!

## References

Choong-Ki Lee, Ki-Joon Back, Robert J. Williams & Sung-Sik Ahn (2015) Comparison of telephone RDD and online panel survey modes on CPGI scores and co-morbidities, International Gambling Studies, 15:3, 435-449, DOI: 10.1080/14459795.2015.1068353

Dowling, Nicki A.. “The impact of gambling problems on families.” (2014).

Grant JE, Chamberlain SR. Gambling disorder and its relationship with substance use disorders: implications for nosological revisions and treatment. Am J Addict. 2015 Mar;24(2):126-131. doi: 10.1111/ajad.12112. PMID: 25864600.

Johnson EM, Belfer ML. Substance abuse and violence: cause and consequence. J Health Care Poor Underserved. 1995;6(2):113-21; discussion 121-3. doi: 10.1353/hpu.2010.0578. PMID: 7795023.

Shaffer HJ, Hall MN, Vander Bilt J. Estimating the prevalence of disordered gambling behavior in the United States and Canada: a research synthesis. Am J Public Health. 1999 Sep;89(9):1369-76. doi: 10.2105/ajph.89.9.1369. PMID: 10474555; PMCID: PMC1508762.

Williams, Robert J.; Shaw, Carrie A.; Belanger, Yale D.; Christensen, Darren R.; el-Guebaly, Nady; Hodgins, David C.; McGrath, Daniel S.; Nicoll, Fiona; Smith, Garry J.; Stevens, Rhys M. G., 2022, "The AGRI National Project: Online Panel Study [Canada]", https://doi.org/10.5683/SP3/JYUO8E, Borealis, V1, UNF:6:zYa/HZXHxReCWJgFualSCg== [fileUNF]

Yau YH, Potenza MN. Gambling disorder and other behavioral addictions: recognition and treatment. Harv Rev Psychiatry. 2015 Mar-Apr;23(2):134-46. doi: 10.1097/HRP.0000000000000051. PMID: 25747926; PMCID: PMC4458066.
