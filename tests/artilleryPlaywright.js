// A Layton 
// simple example for artillery running playwright
// but artillery doesn't understand "test()" 
//
const {  expect, Page } = require( '@playwright/test');

async function firstTest (page) 
{ 
  await page.goto('https://playwright.dev/');

  // Expect a title "to contain" a substring.
  await expect(page).toHaveTitle(/Playwright/);

  // Click the get started link.
  await page.getByRole('link', { name: 'Get started' }).click();

  // Expects page to have a heading with the name of Installation.
  await expect(page.getByRole('heading', { name: 'Installation' })).toBeVisible();
} 

module.exports = {
   firstTest

}; 
