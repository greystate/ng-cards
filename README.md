# Angular Cards

A port of my (unreleased) **xcards** project, which is a Scrum-like way of keeping track of
features and tasks in a given project.

On-going project as I wade through [Sean Fioritto][SF]'s [Angular Course][NGC] ...

## Building the project

You may notice it's all [CoffeeScript][CS], [LESS][LESS] & [Kit][KIT] - which are all supported by the excellent [CodeKit 2][CK] app. If you're more of a *Grunt* type of guy/girl, you should be able to do that as well. Just have your pre-processor(s) build into the `public` folder like this:

```python
public/
   css/
   scripts/
```

* * *

## Status / Todo

- [x] Implement the Card model
- [x] Change to support more than one Card :)
- [ ] Add a **New Card** button
- [ ] Make the *points* changeable on a Card
- [ ] Implement the Feature model
- [ ] Implement the Sprint model
- [ ] Change Card to use an options hash
- [ ] Change Task to use an options hash
- [ ] Create a model for the Burndown chart
- [ ] Show the totals (remaining points)


[LESS]: http://lesscss.org
  [CS]: http://coffeescript.org
 [KIT]: http://incident57.com/codekit/help.html#kit
  [CK]: http://incident57.com/codekit/
  [SF]: https://twitter.com/sfioritto
 [NGC]: http://training.planningforaliens.com/angular/