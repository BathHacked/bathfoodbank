# Bath Food Bank Shopping List

A quick prototype to explore a simple, low cost way to expose the Bath Food Bank shopping list 
as a web page and a simple API.

## Background

OK, how did this begin?

Today (2nd July 2017) Bath Foodbank Volunteers were handing out [printed shopping lists](https://twitter.com/ldodds/status/749196130383167488/photo/1) 
to people entering Sainsbury's. The shopping lists included 

* a simple list of items
* a brief description of the foodbank and how they work
* contact details
* locations of other collection/donation points

I asked the volunteers how often the lists change. Apparently it can vary based on donation patterns (e.g. previously they 
have had a sudden influx of pasta) or seasonal changes (e.g. easter eggs, or chocolate over christmas period).

Having the list was handy not just as a reference, but also as a reminder of the donation point. Often we only see it 
**as we leave** because the collection points are near the tills, not the entrance.

As an experiment I [photographed the list and shared it on twitter]((https://twitter.com/ldodds/status/749196130383167488/photo/1). 
It was retweeted by [@WeLoveBath](http://twitter.com/welovebath) which has a huge local following. The tweet reached 2,814 people 
with around 300 engagements in 4-5 hours. Small by scale of total population, but indicates level of local support and potential 
for a digital service to reach people.

## Minimal Viable Product

There are several free online tools for managing checklists. Rather than build another one, lets reuse something.

I've [copied the list into Forgett](https://www.forgett.com/checklist/5029266183) which allows lists to be made public. There are 
others but this is simple to use and works on mobile. Idea is to have quick, easy updating.

This app then just grabs that list and presents it on a simple web page and as a JSON object.


## Ideas & Next Steps

Next steps are to contact the foodbank and see if they're interested in exploring this further. Minimal time wasted if not!

* Twitter bot that allows you to ask for a reminder on your usual shopping day
* Twitter bot can also be used as means to broadcast special requests (e.g. foodbank currently looking for volunteers)
* SMS service to do the same? (Approx 5p per SMS)