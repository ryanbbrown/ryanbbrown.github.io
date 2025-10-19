---
title: "MLDS Datahack"
---


## 🏅 Competition Overview

MLDS Datahack was hosted by MLDS (Machine Learning & Data Science), an organization at UT Austin, and was sponsored by Oracle and Chevron. It was hosted in October 2021. Participation was open to all students, and 15 teams competed. My team received first place.

### **The Challenge**

In addition to being a team of skilled data scientists, your DataHack group is also
a band of hobbyist musicians that publish music. Your team has access to
streaming/music reviews data from Spotify and Pitchfork.com, respectively, and your
job is to leverage this data to help propel your amateur band to stardom! In other
words, you want to think about the following question: **What makes a song successful?**

*Challenge description is taken from the Datahack Dataset Packet. Further details can be found in the two files below.*

[Datahack Welcome Packet.pdf](MLDS%20Datahack%20f5333810af7b4945b560ef633f8998f8/Datahack_2021_Welcome_Packet.pdf)

[Datahack Dataset Packet.pdf](MLDS%20Datahack%20f5333810af7b4945b560ef633f8998f8/Datahack_2021_Dataset_Packet.pdf)

## 🎬 Presentation

[https://www.canva.com/design/DAEbRl8df-w/view#1](https://www.canva.com/design/DAEbRl8df-w/view#1)

[https://www.canva.com/design/DAEbRl8df-w/view#1](https://www.canva.com/design/DAEbRl8df-w/view#1)

## 📜 Script

*The time limit for the presentation was 5 minutes.*

### **Slide 1 - Title “The Making of a Star”**

Good afternoon, we’re Sitara, Ryan, Karen, and David.

### **Slide 2 - Meet The Drokes**

Actually, let me reintroduce ourselves. We are The Drokes and we’re just a scrappy group of musicians looking to make it big. In addition to being music geeks, we are data nerds→ so today we’re using Spotify data to craft our business strategy and become stars.

### **Slide 3 - Three Albums**

When you look at these three very popular albums, what do you see that they have in common?

### **Slide 4 - Three Albums (Cont.)**

They're not just top 100 billboard hits w millions of streams. They were each of these famous artists' 1ST BREAKOUT hit songs that made them the mega pop stars that they are now.

### **Slide 5 - Strategy**

To ensure our musical and commercial success, we’ve outlined four steps of data analysis and business planning. First, we’ll identify the genre with the highest potential success rate. Second, we’ll craft a breakout hit using the top genre’s characteristics. Third, we’ll predict the success of our song and revenue. And finally, we’ll discuss our long-term strategies as well as the limits of our data and models.

### **Slide 6 - Songs Across time**

After observing the nplays feature distribution, we decided to log transform the variable for better visualization. We also separated out the year from the dates given as we initially believed there would be different trends in the various features a few decades ago vs. recently. And if that was the case, we didn’t want our business plan to be impacted by outdated trends. But by graphing the distributions for the various features, you actually see that the trends for pre and post-2000 are actually very similar. This slide features histograms for danceability, hype, intrumentalness, and lyricism and they are all very similar. For this reason, we chose to not remove data from a few decades ago.

### **Slide 7 - Selecting the Genre**

Once we had the relevant subset of our data to look at, it was time to make an important decision: what genre of music would the Drokes be focusing in? Most music groups have 1-2 key genres; if we don’t specialize, we’ll be drowned out by the noise.

First, we analyzed how competitive each genre is. Looking at the middle 80% of artists, which is a reasonable estimate for where the Drokes will end up, we looked at the size and saturation of different genres. Rap and pop had by-far the largest average number of plays per artist, and rap had the highest median--meaning the data is less skewed and we don’t have to be HUGE to do well.

### **Slide 8 - Selecting the Genre (Cont.)**

We then fit linear regression models to the data to predict the log number of streams, representing how predictable success is in a given genre based on the features of the music. Jazz had by far the highest R-squared value but the market opportunity was small, so our choice of rap was confirmed as it was one of the most predictable genres.

### **Slide 9 - Model Analysis**

After we selected rap, the next task was finding the best model for the genre. Choosing a specific genre, allowed us to analyze and optimize features that would be especially beneficial particularly for rap. We realized a strategy that might be really good for country, might not work as well for rap. We tested the following 10 models and found that the Random Forest Regressor gave us the highest R2 value and the lowest error.

### **Slide 10 - Genre Specific Feature Analysis**

Next, to take apart the black box that many models create, we decided to analyze which features had the largest impact on our model. The top 8 features are listed to the left, and we can see that the top three are beats per minute, length and instrumentalness. Using this information, we were able to determine the values we would use for our debut, such as how long our song would be and the beats per minute.

### **Slide 11 - “The Kids Are Talking”**

Talk about how we came up with our test values

The result is our debut single “The Kids Are Talking”. The 4-minute 4-second long song will be groovy at 133BPM, have a 0.45 value for hype, and other customized traits. For the top 8 features, we used either the 25th or 75th percentile value based on whether the relationship between the feature and nplays was positive or negative. For other values, we simply used the median or mode.

### **Slide 12- Predicted Streams**

Through the nplays predictive model for rap, “The Kids Are Talking” would gain 1,528,230 streams. This ranks around the 75th percentile of total plays among all rap songs, which is the result we predicted since our song trait values were crafted around the 25th or 75th percentiles.

### **Slide 13 - Revenue**

Through the results of the stream prediction, we can estimate The Drokes’ revenue for the 1.5 million streams we would gain. Assuming a constant revenue per stream and other assumptions regarding concert and merchandise earnings, we would earn around $2 million dollars. The table also shows revenues 20% above and below the model’s prediction.

### **Slide 14 - Limits & Improvements**

One key assumption that our analysis relies on is that the dataset we’re working with is a representative sample of all music on Spotify. If it is, then our conclusion are valid for the real world; however, if it isn’t, then while our process would stay the same, the actual genre and key features to look at could change.

Additionally, our model is limited by the kind of data we got; data on marketing costs and promotions, as well as streams over time, could improve our predictions.

- Even with better data, the errors of our models were relatively high, and don’t account for a lot of what determines song success.

Finally, after our first few breakout songs, we would get popular and following our model’s guidelines wouldn’t particularly be necessary anymore.

### **Slide 15 - Strategy Timeline**

Our analysis today has shown rap to be the most successful genre AND our current external research from Statista confirms this, showing that rap makes up 22% of current album consumption. However, we will continue to do external market research.

By July, we will release our breakout song The Kids Are Talking which we hope to accumulate our projected cumulative number of streams of around 1,500,000

After a marketing campaign and full album release in early Jan, we aim to tour in March 2022, with a total rev estimate of around 2,000,000.

Thank you so much for listening, and keep an eye out for The Droke’s hit single, The Kids Are Talking!
