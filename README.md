# Angular Cards

An AngularJS port of my (unreleased) **xcards** project, which is a Scrum-like way of keeping track of
features and tasks in a given project; originally implemented using XML & XSLT, but this time I'm doing it all
client-side with AngularJS. 

On-going project as I wade through [Sean Fioritto][SF]'s [Angular Course][NGC] ...

## Building the project

You may notice it's all [CoffeeScript][CS], [LESS][LESS] & [Kit][KIT] - which are all supported by the excellent [CodeKit 2][CK] app. If you're more of a *Grunt* type of guy/girl, you should be able to do that as well. Just have your pre-processor(s) build into the `public` folder like this:

```
public/
   css/
   scripts/
```

* * *

## Status / Todo

- [x] Implement the Card model
- [x] Change to support more than one Card :)
- [x] Add a **New Card** button
- [x] Make the *points* changeable on a Card
- [x] Implement the Feature model
- [x] Implement the Sprint model
- [x] Change Card to use an options hash
- [x] Change Task to use an options hash
- [x] Create a model for the Burndown chart
- [x] Show the totals (remaining points)
- [x] Implement "Create new task" on a Card
- [ ] Save data in localStorage
- [ ] Add "Log burn..." button to Burndown chart



[LESS]: http://lesscss.org
  [CS]: http://coffeescript.org
 [KIT]: http://incident57.com/codekit/help.html#kit
  [CK]: http://incident57.com/codekit/
  [SF]: https://twitter.com/sfioritto
 [NGC]: http://training.planningforaliens.com/angular/