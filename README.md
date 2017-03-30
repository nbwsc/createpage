# createpage
this shell script can create a page in a ionic2 project.

## USAGE

### ready
1. get the scripts
```bash
git clone git@github.com:nbwsc/createpage.git
cd createpage
cp cretepage.sh $PATH_TO_YOUR_SRC
cd $PATH_TO_YOUR_SRC
```
2. edit src/app.modules.ts as follow

    add `//autoadd import` after row of import 'xxPage'

    add `//autoadd array` after row of page array

```typescript
import { HomePage } from '../pages/home/home';
import { MePage } from '../pages/me/me';
import { TabsPage } from '../pages/tabs/tabs';
//autoadd import

//...

    MePage,
    TabsPage,
//autoadd array

```
### go
```bash
# suggest the $PAGENAME to be lowcase
./createpage $PAGENAME

# now you can check your pages
```