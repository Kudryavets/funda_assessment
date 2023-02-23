## Input
Known facts:
* Blockbuster.com is platform where
* studios can rent movies online directly to consumers
* web clients, as well as iOS and Android native clients

Assumptions:
* The product is used by > 100K monthly viewers, > 1M sessions per month.
* The product has hundreds of publishers registered.

## Question 1. Testing strategy for the new mobile app version
Mobile team has an ambition to build a new mobile app to fight competitors with the help of better UX.
The goal is to define the adequate testing strategy to prove that the new UX is better than the old.

Building a new mobile app is a big investment. The author strongly believes that such project should be planned
and executed with the special attention to the value delivered. The risk main risk is that the new app might not affect 
the churn or even increase it. 

Lean development principle can help to mitigate the risks. In line with these principles the author proposes 
the following approach to testing. Please note that after each stage we can decide to drop the new app project.

1. Conduct audience research of an old app (cohort analysis, churn analysis, users interview)
   The goal of this exercise is to look at the problem from broader perspective. 
      1. What are the factors that drive churn?
      2. What is the value that our customers buy from us?
      3. In what context do they use the old application?
      4. Whom or what do we compete against in this context?
   It will help rank the new app project among other possible measure to reduce churn.
2. Revisit tracking of product metrics in the old app
   The goal is to make the old app comparable with the new app. It can be a broad set of metrics or some driving 
      ones. E.g.
      1. Streaming Quality 
      2. User Engagement 
      3. User Retention 
      4. User Feedback
   From this exploration we can also get insights on how to prioritize the features for implementation in the new
      app.
3. Build prototype and test it with the user in context
   The goal is to make sure that we are going in the right directions. It can be whiteframe or Figma.
4. Build an MVP with tracking metrics and conduct closed testing
   The goal is to use very ugly and not scalable version of the app to test one/two functions that are 
   the most important in for the user in their context. Closed testing is supposed to reduce the pressure on 
   the team and make it easier to release an imperfect version of the app. 
   From this point we can start collecting data for both apps.
5. Release MMP and launch beta testing or/and A/B testing
   We can randomly select users for the test and compare the metrics for 2 groups. We can start with the small number 
   of people and then gradually increase the size of the group that receives the new experience.
6. Continuously monitor and improve new app for a defined period of time. 
   Most of the innovations do not perform better than the traditional way at first. We need to be patient, improve and 
   adapt, and estimate the potential. After a defined period of time we can make the decision which app to go with 
   based on the data.

Side note: the project can be used to re-define the responsibilities between different services in the setup of 
Blockbuster.com. It can allow for easier migration to the new app, and improve the performance metrics and speed of
development on the old app.

## Question 2. The "Western" genre exploration
There is an assumption that the "Western" genre is not doing very well. The question suggests that it might be demand or
supply issue. The author likes to phrase the question differently: How the "Western" genre is not doing on our platform
compared to the rest of the industry? This way of posting the question keeps the solution space open but also focuses us
on business part of it: can we make more money on this genre or probably not?

The author suggests to use scientific method and check several hypotheses:
1. There is a difference in the engagement of people watching westerns.
   * How many westerns do we have on our platform? How is it compared to other genres? 
   * How much engagement westerns drive compared to similar genres?
2. There is not enough westerns on the platform. 
   * What is the median watched/not watched rate for westerns? How is it compared to other genres? 
   * How did the number of westerns and the engagement with them changed over time? Is there a correlation? 
   * What happened when new westerns were released? Did they attract attention? How is it compared to other genres? 
   * What is the number of westerns on our platform and in the World? Compared to other genres? 
         (3rd party data is required: IMDB, MovieWeb, …)
3. Westerns are not popular on the platform.
   * How often do people search for western titles compared to other genres?
   * Is there a difference in ratings between genres and other genres on the platform?
4. Westerns are generally not very popular as a genre in the World?
   * How much attention westerns collect outside our platform? (IMDB, MovieWeb, …) 
      How is it compared to our genres? Compared to our platform?
   * Who are the people who usually watch westerns? Is it our target audience? Do we want it to be our target audience?
   * How many new westerns have appeared in the last 5 years? How is it compared with the 5 years ago? 
   with 10 years ago? Compared to other genres?
5. Westerns are less profitable, hence less advertised, hence less known.
   * What are the budgets of western movies? What part of it is marketing budget? What is it compared to other genres?
   * What is the expected ROI for western movies? What is it compared to other genres?
6. There are technical reasons, users do not watch westerns.
   * Is video streaming quality is the same for westerns as for other genres?
   * Is there something specific about westerns people complain about?
   * How many recommendations/ranking do we make with westerns? Can it be that we rank genres alphabetically and western
   goes all the way to the end, where it's hard for user to find?

With more data more hypotheses can be formulated and checked.

## Question 3. Marketplace metrics 
As a two-sided marketplace, platform should ensure that networking effects work. That mean that the platform aims
to maintain the optimal rate of content creators and content consumers, so that consumers would have enough
content they'd like to consume, content creators would have enough consumers to make profit out of partnership 
with the platform. No less the platform would like to make money out of interactions on the platform, so platform will
have its own set of metrics.

The author proposes to track the following types of metrics for content producers: 
1. Publisher acquisition
2. Content acquisition
3. Content engagement
4. Minimum order flow
5. Revenue per movie
6. Publisher engagement
7. Publisher retention

For content consumers:
1. Consumer acquisition
2. Payback Period
3. Lifetime Value (LTV)
4. Funnel and conversion
5. Consumer engagement metrics
6. Consumer retention

Platform itself can track:
1. Viewers/Publishers ratio
2. Frequency of transactions
3. Content diversity and concentration
4. Search-to-fill or Time-to-fill
5. Gross merchandise volume (GMV)
6. Net revenue (NR)

The metrics specified are mostly very generic. Most of the platforms have their own, highly specialized for each 
platform, set of "drivers" like "Mark Zuckerberg's Rule". According to the rule, if a user adds at least seven friends 
within their first ten days on the platform, they are more likely to remain an active user. Ths rule would fall under
`consumer engagement` set of metrics.

## Question 4. Two-step authentication
The goal of this exercise is to evaluate whether the company should implement two-step authentication or not.
Although, security is a top priority for any organization, we need to evaluate it from 2 points of view:
1. Is this project is economically practical
2. How it will affect user experience

Let's formulate the hypothesis:
1. Stolen accounts is a significant security issue for the company.
   * How many accounts were reported stolen? Is it a lot compared to the industry? What is the damage?
   * How people react to the fact that their account on the platform has been stolen?
   * How easy and fast is our process of dealing with consequences?
   * How much are we legally obliged to protect our clients from this risk? Can we move this responsibility somewhere?
   or insure it?
2. Our users will gladly use two-step authentication.
   * Will users sign up for the waiting list for the feature?
   * If users see a pop-up suggesting enabling two-step authentication on login, how many of them will positively 
   react to it?
   * What would be engagement and satisfaction with the movies for 2 random groups A/B testing the feature?

## Question 5. Improve ads conversion with better targeting
The question suggests to chose what would work better for targeting: user demographic or behavioural characteristics?
The author likes to phrase the question differently: how can we optimize the targeting with data?
First 2 approaches seems decent, and we can add several more assumptions.

Hypotheses:
1. User demographic data can improve our targeting.
   * Do demographic factors define users preferences?
   * How do different demographic segments react to ads?
2. User behavioral data can improve our targeting.
   * Do behavioral factors define users preferences?
   * How do different behavioral segments react to ads?
3. User contextual data (the time of the session, the used device, location of the device, etc.) 
   can improve our targeting.
   * Do contextual factors define users preferences?
   * How do different contextual segments react to ads?
4. User preference data can improve our targeting. Here we can use the data of the users themselves but also look for
   other similar users (lookalike, user-based collaborative filtering).
   * Does previous user preferences in content define their preferences?
   * How do different preference segments react to ads?

This one could become a full-fledged data science project. In this case, the author recommends using CRISP-DM or 
Agile iterative process of delivering improvements and validating them in production with A/B testing. 

## Question 6. iOS vs Android mobile apps
70% of our iOS users use the native client instead of the web client. However, only 40% of
Android users use the native client compared to the web client. The goal is to understand why.

We can test a couple of hypotheses.
1. iOS native app provides a better experience than Android one.
   * Can we try android and iOS apps ourselves? Just to get a feeling.
   * What is the amount of bug reports from users of different apps?
   * What are the streaming quality metrics from users of different apps?
   * What are the Search-to-fill or Time-to-fill metrics for users of different apps?
   * What are the satisfaction and engagement metrics of users of different apps?
   * What ratings do the users of different apps give to movies?
   * Do we have users who use both apps? If so, what's their experience?
2. Android users are somehow different from iOS users. 
   * What do we know about 4 groups:
     iOS mobile users, Android mobile users, iOS and web client users, Android and web client users? 
     Do they have different demographic, behavioral, contextual, or preferences factors?
     How is it for intersections between groups?
3. Operational system is irrelevant and there is another reason.
   * What do we know about people who don use our web client?
     What are there demographic, behavioral, contextual, or preferences factors?
     Why is it inconvenient for them to use mobile app?

## Question 7. Valuable insights about customers for movie studios
Please see [dataset analysis](DATASET_ANALYSIS_README.md) for the full answer.
