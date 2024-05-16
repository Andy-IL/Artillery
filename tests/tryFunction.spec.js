// tryFunction 
// calls artillery first function
//  ought to be a test
const {test,expect} = require ('@playwright/test') ;
import {firstTest} from './artilleryPlaywright.js' ;

test("tryFunction", async({page}) =>{
    await firstTest(page) ;
}) ;
