#!/bin/zsh


echo 'creating page: '$1

mkdir -p pages/$1
touch  pages/$1/$1.html

#get pagename upercase
ucs=`echo $1 | sed 's/\b[a-z]/\U&/g'`

echo "import { Component } from '@angular/core';

import { NavController } from 'ionic-angular';

@Component({
  selector: 'page-$1',
  templateUrl: '$1.html'
})
export class ${ucs}Page {

  constructor(public navCtrl: NavController) {

  }

}

" > pages/$1/$1.ts


echo "page-$1{



}
" > pages/$1/$1.scss




echo `date` "page: $1 finished"

sed -i "/autoadd import/ a import { ${ucs}Page } from '../pages/$1/$1';" app/app.module.ts
sed -i "/autoadd array/ a ${ucs}Page," app/app.module.ts
#how to add \t in sed???
