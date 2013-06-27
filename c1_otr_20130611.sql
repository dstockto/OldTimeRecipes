-- phpMyAdmin SQL Dump
-- version 3.5.0
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1:3307
-- Generation Time: Jun 21, 2013 at 09:07 AM
-- Server version: 5.5.31-0ubuntu0.12.04.1
-- PHP Version: 5.3.10-1ubuntu3.6

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT=0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `c1_otr`
--

-- --------------------------------------------------------

--
-- Table structure for table `recipes`
--

CREATE TABLE IF NOT EXISTS `recipes` (
  `id` int(9) NOT NULL AUTO_INCREMENT COMMENT 'Recipe ID',
  `name` varchar(75) NOT NULL COMMENT 'Recipe Name',
  `type` int(3) NOT NULL,
  `ingredients` text NOT NULL COMMENT 'Ingredient Section',
  `directions` longtext NOT NULL COMMENT 'Recipe Directions',
  `notes` text COMMENT 'Recipe Notes',
  `nutrition_info` text COMMENT 'Nutrition Information',
  `recipe_source` int(5) NOT NULL COMMENT 'Recipe source ID (FK to source table)',
  `date` datetime NOT NULL COMMENT 'Recipe Add date',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `recipe_source` (`recipe_source`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Recipe table' AUTO_INCREMENT=33 ;

--
-- Dumping data for table `recipes`
--

INSERT INTO `recipes` (`id`, `name`, `type`, `ingredients`, `directions`, `notes`, `nutrition_info`, `recipe_source`, `date`) VALUES
(1, 'Easy Southern Banana Pudding', 4, '3 cups cold milk\r\n2 pkg. (4-serving size each) JELL-O Vanilla Flavor Instant Pudding & Pie Filling\r\n30 NILLA Wafers\r\n3 medium bananas, sliced\r\n1 tub (8 oz.) COOL WHIP Whipped Topping, thawed', 'POUR milk into large bowl. Add dry pudding mixes. Beat with wire wisk 2 minutes or until well blended. Let stand 5 minutes.\r\n\r\nARRANGE half of the wafers on bottom and up side of 2-qt serving bowl; top with layers of half *each* of the banana slices and pudding. Repeat all layers. Cover with whipped topping.\r\n\r\nREFRIGERATE 3 hours or until ready to serve. Store leftover dessert in refrigerator.', 'Makes 14 servigs, about 2/3 cup each.\r\n\r\nPreparation time: 20 minutes plus refrigerating.', NULL, 1, '2009-03-10 23:15:58'),
(2, 'KFC Original Fried Chicken', 8, '1 frying chicken, cut into frying pieces\r\n1 1/2 cups flour\r\n1 Pkt. (dry) Good Seasons Italian Dressing (THE 11 herbs and spices!)\r\n1 Envelope Lipton (or other brand) Tomato Cup of Soup\r\n2 eggs, well beaten\r\n2/3 cup milk', 'Vegetable oil to cover bottom of your skillet; about 1/2 inch deep.\r\n1. Combine eggs and milk. Set aside.\r\n2. Combine flour with the Italian dressing and soup mix.\r\n3. Dip chicken pieces in milk-egg mixture and roll them in the\r\nflour-seasoning mixture. Repeat procedure.\r\n4. Fry pieces over medium heat for 25 to 30 minutes, turning often.\r\n5. Remove from fire. Drain and serve', 'URL: <a href="http://www.recipetrove.com/component/option,com_mtree/task,viewlink/link_id,119/Itemid,26/" target="_blank">Recipe Trove</a>', NULL, 2, '2009-03-12 20:36:56'),
(3, 'Roasted Red Potatoes', 13, '1 lb small red potatoes\r\n1 tablespoon olive or vegetable oil\r\n1/2 teaspoon salt\r\n1/8 teaspoon pepper\r\n2 tablespoons grated Parmesan cheese', 'Cut the potatoes into 1/4 in thick slices; toss with oil. Place in a single layer in a greased 13in x 9in x 2in baking pan. Sprinkle with salt, pepper and Parmesan cheese. Cover tightly with foil. Bake at 350 degrees for 40 minutes or until tender.', 'URL: <a href="http://www.recipetrove.com/component/option,com_mtree/task,viewlink/link_id,427/Itemid,26/" target="_blank">Recipe Trove</a>\r\n\r\nYield: 4 servings.', NULL, 2, '2009-03-12 21:09:59'),
(4, 'Chili Casserole with Cornmeal Topping', 3, '1 pound ground beef\r\n1 small onion -- chopped\r\n1 clove garlic -- chopped\r\n1 tablespoon chili powder -- (up to 2)\r\n1 tablespoon bisquick baking mix\r\n3 tablespoons water\r\n1 can tomatoes\r\n1 can whole kernel corn -- drained\r\n1 can chopped pitted ripe olives -- drained\r\n1 1/2 teaspoons salt\r\n3/4 cup bisquick baking mix\r\n3/4 cup cornmeal\r\n2/3 cup milk\r\n1 egg', 'Heat oven to 350 degrees. Cook and stir beef, onion and garlic until \r\nbrown, drain. Mix chili powder, 1 Tbsp. baking mix and 3 Tbsp. water; add \r\nto beef. Stir in tomatoes, corn, olives and salt. Heat to boiling. Pour \r\ninto ungreased square baking dish, 8x8x2 inches, or 2 quart round \r\ncasserole. Mix 3/4 cup baking mix, the cornmeal, milk and egg; pour over \r\nbeef mixture. Bake until golden brown, 50 to 60 minutes.', 'URL: <a href="http://www.recipetrove.com/component/option,com_mtree/task,viewlink/link_id,195/Itemid,26/" target="_blank">Recipe Trove</a>', NULL, 2, '2009-03-12 21:25:17'),
(5, 'Ginger Sauce', 5, '1 tb Garlic, finely chopped\r\n2 tb Brown bean paste\r\n1/4 c Ginger, finely chopped\r\n1 ea Serrano chili, stemmed &\r\n-- finely chopped\r\n2 tb White vinegar\r\n1 tb Sugar\r\n1 tb Soy sauce\r\n3 ea Cilantro sprigs, chopped\r\n', 'Mix all ingredients thoroughly. Use immediately or at least within 6\r\nhours of preparation as the flavors will get stronger the longer the\r\nsauce sits.', 'URL: <a href="http://www.recipetrove.com/component/option,com_mtree/task,viewlink/link_id,18/Itemid,26/" target="_blank">Recipe Trove</a>', NULL, 2, '2009-03-12 21:30:16'),
(6, 'Amish Apple Dumplings Recipe', 4, '6 apples, peeled and cored\r\n1 lemon juice\r\n1/2 cup white sugar, approx\r\n1 tsp cinnamon\r\n1 brown sugar\r\n1 butter\r\n2 pie pastry for 2 pies\r\n1 sugar sauce:\r\n2 cup water\r\n3/4 cup sugar\r\n2 tsp vanilla\r\n2 tbsp butter\r\n1/4 tsp nutmeg\r\n1/4 tsp mace', 'Roll out pastry and cut into squares enough to cover apples completely. Peel and core apples. Roll in lemon juice. Then roll in white sugar and cinnamon combined. Place on pastry square. Stuff core cavity with brown sugar, butter, brown sugar in equal parts. (The amount depends on size of core cavity, just stuff full.) Fold pastry up around apple to completely enclose it. Place in pan. Prepare sugar sauce by mixing water, sugar, vanilla, butter, nutmeg, and mace and boiling for 1 minute. Let cool slightly. Pour over Apples. Bake in 375 F oven for 1 hour. Serve warm.', 'URL: <a href="http://www.ecuisine.org/recipe/recipe-AMISH-APPLE-DUMPLINGS-22144.aspx" target="_blank">eCuisine.org</a>\r\n\r\nApples may be frozen in pastry (before sugar sauce is added) if desired. Good dessert to make ahead if you have lots of apples around. Just let thaw when ready to use, and cover with sugar sauce and bake as usual.\r\n\r\nSource: Amish Cooking in Quilt Country show Typed by: Melissa Mierau, Martensville, SK\r\n\r\nServings: 6', '<em>per serving</em>\r\n&nbsp;&nbsp;Calories 357.66 \r\n&nbsp;&nbsp;Protein 2.50g \r\n&nbsp;&nbsp;Fat 12.25g \r\n&nbsp;&nbsp;Water 246.84g \r\n&nbsp;&nbsp;Sodium 287.28mg \r\n&nbsp;&nbsp;Cholesterol 9.25mg \r\n&nbsp;&nbsp;Carbohydrates 63.87g \r\n&nbsp;&nbsp;Fiber 7.43g \r\n&nbsp;&nbsp;Vitamin A 284.99IU \r\n&nbsp;&nbsp;Vitamin C 13.98mg \r\n&nbsp;&nbsp;Calcium 51.39mg', 2, '2009-03-12 21:51:29'),
(7, 'Breakfast Casserole', 3, '16 slices dried bread, cubed\r\n1 lb Cheese (Cheddar recommended)\r\n1 lb Sausage, Bacon, Ham (crumbled)\r\n6 cups Milk\r\n13 - 14 lightly beaten eggs\r\n1 tsp Dry Mustard\r\n1 tsp Salt\r\n1/2 tsp Black Pepper', 'Butter the casserole dish. Mix eggs & spices with fork, pour in milk.\r\nSplit bread, meat and cheese in 2 parts.\r\nPut 1/2 of the bread, then 1/2 of the cheese, then 1/2 of the meat, repeat.\r\n\r\nPour milk, egg, and spice mixture over the top.\r\n\r\n*** It is important to mix it up the night before and let it soak into the bread overnight for the next morning''s breakfast. ***\r\n\r\nBake @ 350 degrees for 1 hour.', 'This is a favorite recipe of our family from my Mom.  There is, in my humble opinion, no better egg casserole in the world than this one and it is soooo easy!\r\n\r\nYou can also add 2 small cans of mushrooms.\r\nYou can also use 1 can of Cream of Mushroom soup as part of the milk.', ':) You really don''t want to know!', 4, '2009-03-12 22:50:32'),
(8, 'Fruit Cake', 4, '1 cup  flour\r\n1 tsp  Baking Powder\r\n1/8    tsp salt\r\n4      eggs, beaten\r\n1 cup  white sugar\r\n1/4 cup  fruit juice, wine or brandy\r\n1 cup  (3 slices) Candied Pineapple (chopped)\r\n3 cups pitted Dates (1 lb)\r\n1 cup  whole candied cherries (1/2 lb)\r\n2 cups English walnut halves or Brazil nuts (1/2 lb)\r\n2 cups pecans (1/2 lb)\r\n1 1/2 cup hickory nuts', 'Mix first 6 ingredients (flour, Baking Powder, salt, eggs, sugar, and fruit/wine/brandy).\r\nBeat well. Add fruit and nuts to batter. Blend thoroughly. Pack into angel food cake pan (well-greased). Bake at 325 for 1 1/4 hour.\r\n\r\nCool slightly about 1/2 hour before unmolding.\r\n\r\nWrap in wine or juice soaked cheesecloth and keep in closed container. \r\nKeeps well. It doesn''t need to be cured; ready to eat as soon as completely cooled.', NULL, NULL, 4, '2009-03-12 22:55:38'),
(9, 'Slow Cooker Mac & Cheese ', 10, '1 Reynolds&reg; Slow Cooker Liner\r\n2 1/2 cups milk\r\n1 can (10 3/4 oz.) condensed cheddar cheese soup\r\n2 eggs, beaten\r\n2 tablespoons finely chopped onion (optional)\r\n4 cups shredded sharp cheddar cheese\r\n1 package (16 oz.) elbow macaroni, uncooked\r\n2 tablespoons flour \r\n1/4 teaspoon black pepper\r\nPaprika', 'OPEN slow cooker liner and place it inside a 5- to 6 1/2 -quart slow cooker bowl.  Fit liner snugly against the bottom and sides of bowl; pull top of liner over rim of bowl.\r\n\r\nCOMBINE milk, soup, eggs, onion, cheese and macaroni in a large bowl until well blended.  Sprinkle flour and pepper into cheese mixture; stir to combine.  Pour into slow cooker liner.  Place lid on slow cooker.\r\n\r\nCOOK on LOW for 3 1/2 to 4 hours.\r\n\r\nCAREFULLY remove lid to allow steam to escape.  Sprinkle with paprika.  Serve food directly from slow cooker.  Do not lift or transport liner with food inside.  Cool slow cooker completely; remove liner and toss.\r\n\r\nREYNOLDS KITCHENS TIP:  To reduce fat and calories you may substitute reduced fat milk and reduced fat cheddar cheese.\r\n\r\nNumber of Servings: 12', 'URL: <a href="http://www.reynoldspkg.com/reynoldskitchens/en/recipes/recipe_search.asp?Step=ShowRecipe&RecipeID=1377" target="_blank">Reynolds Kitchens</a>', 'calories     535 \r\ngrams fat     31 \r\n% calories from fat     52 \r\nmilligrams cholesterol     128 \r\nmilligrams sodium     722 \r\ngrams carbohydrates     35 \r\ngrams fiber     1 \r\ngrams protein     29', 2, '2009-03-12 23:24:29'),
(10, 'Barbecued Chicken Pizza on the Grill', 11, 'TOPPINGS:\r\n2 cups cubed cooked chicken\r\n1/2 to 3/4 cup barbecue sauce\r\n1/2 cup julienned green pepper\r\n2 cups (8 ounces) shredded Monterey Jack cheese\r\n\r\nCRUST:\r\n1 package (1/4 ounce) active dry yeast\r\n1 cup warm water (110 to 115 degrees)\r\n2 tablespoons vegetable oil\r\n2 teaspoons sugar\r\n1 teaspoon baking soda\r\n1 teaspoon salt\r\n2 3/4 to 3 cups all-purpose flour', 'In a mixing bowl, dissolve yeast in water. Add the oil, sugar, baking soda, salt and 2 cups flour. Stir in enough remaining flour to form a soft dough. Turn onto a floured surface; knead until smooth and elastic, about 6-8 minutes. Cover and let rest for 10 minutes. On a floured surface, roll dough into a 13 inch circle. Transfer to a greased 12 inch pizza pan. Build up edges slightly. Grill, covered, over a medium heat for 5 minutes. Remove from grill. Combine chicken and barbecue sauce; spread over the crust. Sprinkle with the green pepper and cheese. Grill, covered, 5-10 minutes longer or until crust is golden and cheese is melted.\r\n\r\nYield: 4 servings. ', 'Taken from a Sunsetter Awning advertisement! ', NULL, 1, '2009-03-14 18:21:39'),
(11, 'Tomato Butter or Jam', 7, '2 3/4 cups cooked tomatoes\r\n2 tablespoons lemon juice\r\n4 cups sugar\r\n1 box pectin', 'Measure sugar and set aside.\r\nPut the remaining items (lemon juice, tomatoes and pectin) in a 4 to 6 quart kettle.\r\nStir over high heat until mixture reaches a fast boil\r\nStir in sugar, bring to fast rolling boil.\r\nBoil one minute.\r\nRemove from heat and quickly skim off the foam.\r\nPour into jars and seal tight.', '', '', 4, '2009-03-15 18:52:46'),
(12, 'Scrapple', 2, '1 1/2 cup yellow corn meal\r\n1 lb pork sausage, seasoned\r\n1/2 tsp dry sage leaves, crumbled\r\n1/2 tsp salt\r\n1 tblsp chopped parsley\r\n1 10 3/4 oz can chicken broth, undiluted', 'In a small bowl, blend together corn meal and 1 cup water.\r\nIn large saucepan, combine pork sausage, sage, salt, parsley and chicken broth.\r\ngradually stir in 2 cups of water, being careful to separate sausage into fine pieces.\r\nBring to boil.\r\nSlowly add corn meal to the boiling mixture, stirring constantly with a wire whisk.\r\nReduce heat and simmer uncovered for 15 minutes.\r\nTurn into a 9x5x3" loaf pan.\r\nBring to room temperature.\r\nWhen cooled, refrigerate covered.', 'To serve, slice into 1/4" slices and brown on a griddle -- serve with syrup, if desired.', '', 4, '2009-03-15 19:23:04'),
(13, 'Marshmallow Treats', 12, '1/4 cup margarine\r\n4 1/2 cups mini marshmallows\r\n6 cups Rice Krispies, Popcorn or Puffed Rice', 'Melt margarine in large pan (at least 3 quart)\r\nAdd marshmallows and cook stirring constantly until all marshmallows are melted and mixture is syrupy.\r\nRemove from heat - add cereal, stir until well coated and spread while warm in a greased 13x9x2 pan.\r\nWet your hands and press down firmly.\r\nCut when cool.', 'You can use 2 cups of marshmallow creme in place of regular but be sure to heat until syrupy.', '', 4, '2009-03-15 19:35:08'),
(14, 'Farmers Casserole', 2, '3 cups frozen shredded Hash Browns\r\n3/4 cup shredded cheese\r\n1 cop diced cooked ham or bacon\r\n1/4 cup sliced green onion\r\n4 beaten eggs\r\n1 1/2 cup milk\r\n1/4 teaspoon pepper\r\n1/8 teaspoon salt', 'Arrange in a greased 2 quart square baking dish, potatoes, then cheese, ham and green onion.\r\nCombine eggs, milk, pepper and salt and pour over potato mixture.  (May be covered and refrigerated overnight)\r\n\r\nBake <em>uncovered</em> in 350 degree oven for 40 to 45 minutes (55 to 60 minutes, if chilled) or until center appears set.', 'Let stand for 5 minutes before serving.', '', 4, '2009-03-15 19:45:07'),
(15, 'Best Lemon Meringue Pie', 4, '5 tablespoons Argo Corn Starch\r\n3 egg yolks, beaten (save whites)\r\n2 cups water\r\n2 tablespoons butter\r\n1 cup sugar\r\n5 tablespoons lemon juice\r\n1/4 teaspoon salt\r\n2 teaspoons grated lemon rind', 'Mix Argo with 1/2 cup cold water in the top of a double boiler.\r\nBlend in the sugar and salt.\r\nAdd remainder of water and blend well, stirring constantly over low heat until it boils.\r\nCover and cook 10 minutes.\r\nGradually stir in the beaten egg yolks.\r\nCook 2 minutes more.\r\nAdd lemon juice, rind and butter.\r\nMix well.\r\nCool and pour into pie shell.\r\n\r\nMeringue: Beat 3 egg whites stiff, gradually beat in 6 tablespoons of sugar.\r\nPile on top of pie.\r\nBake in a slow oven (325 degrees) for 15 minutes.', '', '', 4, '2009-03-15 19:53:43'),
(16, 'Pineapple Pie', 4, '1 can Eagle Brand condensed milk\r\n3 egg yolks\r\n2/3 unsweetened pineapple juice\r\n1 cup drained, crushed pinapple', 'Blend milk and egg yolks.\r\nAdd juice and pineapple, mix.\r\nPour into baked shell.\r\n\r\nBake at 400 degrees for 5 or 10 minutes.', '', '', 4, '2009-03-15 19:57:19'),
(17, 'Puffy Fried Bread', 1, '4 cups flour\r\n1 teaspoon salt\r\n3 teaspoons baking powder\r\n3 tablespoons sugar\r\n2 tablespoons shortening\r\n1 1/4 cup milk', 'Sift the flour, salt, baking powder and sugar twice.\r\nCut in shortening.\r\nAdd milk to make soft dough just firm enough to roll.\r\nCover bowl and let dough stand for 30 to 60 minutes.\r\nRoll 1/4" thick on floured board.\r\nCut in diamonds (or whatever).\r\nHeat 1" oil to about 370 to 380 degrees.\r\nFry a few at a time - drain', '', '', 4, '2009-03-15 20:16:35'),
(18, 'Choice Cherry Cheesecake', 4, '3/4 cup graham cracker crumbs\r\n1/4 cup finely chopped walnuts\r\n1/4 cup sugar\r\n3 tablespoons margarine or butter, melted\r\n2 (8 ounce) packages cream cheese, softened\r\n1 can ready to serve frosting\r\n1/2 teaspoon rum extract\r\n21 ounce can cherry fruit pie filling, chilled', 'In small bowl, combine crumbs, nuts, sugar and margarine/butter.\r\nPress in bottom of 9" square pan.\r\n\r\nIn a large bowl, beat cream cheese until fluffy.\r\nAdd frosting and extract.\r\nMix well.\r\nSpread over crumbs in pan.\r\n\r\nFreeze for 2 hours.\r\nSpoon pie filling over top.\r\n\r\nStore in refrigerator.', '', '', 4, '2009-03-16 20:12:39'),
(19, 'Corn Fitters', 9, '1 cup enriched flour\r\n1 teaspoon salt\r\n2 eggs\r\n1 teaspoon baking powder\r\n1/4 cup milk\r\n1 tablespoon melted shortening\r\n1 1/2 cup canned whole kernel corn\r\n', 'Combine flour, salt, baking powder, beaten eggs, shortening and corn.\r\n\r\nDrop from teaspoon into deep fryer that has been heated to 365 degrees (or when a 1 inch cube of bread browns in 60 seconds)\r\n\r\nFry until golden brown and cooked in center, turning after 2 or 3 minutes.\r\n\r\nDrain on paper towel.', '', '', 4, '2009-03-16 20:28:02'),
(20, ' Baked Rice Dessert', 4, '4 cups cooked rice\r\n1 egg, beaten\r\n1 teaspoon cinnamon\r\n1/2 teaspoon nutmeg\r\n2 tablespoons butter\r\n3/4 cup sugar\r\n1 tablespoon lemon juice\r\n1 cup half and half', 'Combine egg, sugar, milk and flavorings, then add to hot rice in a greased casserole dish.\r\n\r\nBake at 300 degrees for 30 minutes', '', '', 4, '2009-03-16 20:37:24'),
(21, 'Whipped Gelatin', 4, '2 boxes red gelatin\r\n1/2 pint whipping cream\r\n2 teaspoons powdered sugar\r\n1/2 cup bananas\r\n1/2 cup pineapple\r\n1 cup quartered marshmallows\r\n1/2 cup nutmeats', 'Prepare gelatin and chill until shivery.\r\nWhip cream and add sugar.\r\nBeat gelatin until foamy.\r\nFold in cream, then nuts, fruit and marshmallows.', 'Store in refrigerator for several hours before serving.', '', 4, '2009-03-17 04:43:22'),
(22, 'Dandelion Jelly', 7, '1 quart dandelion blossoms\r\n1 quart water\r\n1 package (1 3/4 ounce) pectin\r\n2 tablespoons lemon juice\r\n4 1/2 cups sugar\r\nyellow food color (optional)', 'In the early morning, pick 1 quart of blossoms without any of the stem.\r\nBoil in 1 quart of water for 3 minutes.\r\nDrain off 3 cups of liquid.\r\nAdd the pectin and lemon juice to the 3 cups of liquid and return to a boil.\r\nWhen it begins to boil, add sugar and a few drops of color.\r\nBoil for 3 minutes and put in jelly glasses.', '', '', 4, '2009-03-17 17:46:42'),
(23, 'Butterscotch Bars', 12, '1/2 cup margarine\r\n2 cups brown sugar\r\n2 cups flour\r\n1/4 teaspoon salt\r\n2 teaspoons baking powder\r\n2 eggs\r\n1 teaspoon vanilla\r\n1 cup coconut', 'Melt butter in 3 quart pan.\r\nAdd brown sugar; heat until bubbly.\r\nCool.\r\nAdd eggs, coconut, vanilla and dry ingredients.\r\nSpread in 1x10x10 greased pan.\r\nBake about 25 to 30 minutes at 350 degrees.', 'Makes 60 bars.', '', 4, '2009-03-17 17:50:47'),
(24, 'Double Delicious Apple Cake', 4, 'Cake:\r\n1 package yellow cake mix\r\n1 cup finely chopped peeled apples\r\n1/2 cup dairy sour cream\r\n3/4 cup applesauce\r\n1/4 teaspoon cinnamon\r\n3 eggs\r\n\r\nFrosting:\r\n1 can Ready To Serve vanilla frosting\r\n1 teaspoon cinnamon', 'Heat oven to 350 degrees.\r\nGrease and flour 2 - 8 or 9 inch round pans.\r\nIn a large bowl, combine all cake ingredients at low speed until moistened.\r\nBeat for 2 minutes at mixers highest speed.\r\nSpoon batter evenly into prepared pans.\r\nBake for 30 to 40 minutes.\r\nCool for 15 minutes - remove and cool completely.\r\n\r\nIn a small bowl, stir frosting and cinnamon until well blended.\r\nSpread about 1/3 cup between layers and frost sides and top.', '', '', 4, '2009-03-17 17:57:36'),
(25, 'Homemade Baking Powder', 9, '2 tablespoons cream of tartar\r\n1 tablespoon cornstarch\r\n1 tablespoon baking soda', 'Sift all ingredients together.', 'Use as desired!', '', 4, '2009-03-17 18:04:00'),
(26, 'Smooth ''N Creamy Frosting', 4, '1 package (4 serving size) any flavor instant pudding\r\n1/4 cup powdered sugar\r\n1 cup <span style="text-decoration: underline; ">cold</span> milk\r\n3 1/2 cups (or 1 - 8 ounce container) Cool Whip, thawed', 'Combine pudding mix, sugar and milk in small bowl.\r\nBeat slowly with rotary beater or at lowest speed on mixer until well blended, about 1 minute.\r\nFold in the Cool Whip.\r\nSpread on cake at once.', 'Makes about 4 cups or enough for 2 9 inch layers.\r\n\r\nStore cake in refrigerator.', '', 4, '2009-03-17 18:20:11'),
(27, 'Spaghetti "Pie" Casserole', 3, 'about 8 ounces spaghetti, cooked\r\n3 tablespoons butter\r\n1/2 cup grated Parmesan Cheese\r\n3 well-beaten eggs\r\n1 1/2 cups cottage cheese\r\n1 1/2 pounds ground beef\r\n3/4 cup chopped onion\r\n1/3 cup green peppers, chopped\r\n15 1/2 ounces whole tomatoes\r\n6 ounces tomato paste\r\n8 ounces Mozzarella Cheese\r\nSalt and pepper\r\noregano\r\ngarlic powder', 'Stir butter, cheese and eggs into cooked, drained spaghetti.\r\nForm "crust" in oblong buttered dish.\r\nSpread 1 1/2 cups cottage cheese over bottom of "crust".\r\nCook ground beef - onion - green peppers until tender and brown.\r\nDrain off fat.\r\nStir in chopped tomatoes, tomato paste, oregano, garlic, salt -  turn into "crust" on top of cottage cheese.\r\nBake at 350 degrees for 20 minutes.\r\nSprinkle mozzarella cheese over top and bake another 5 minutes.', '', '', 4, '2009-03-17 18:29:12'),
(28, 'Upside Down Casserole', 3, '1 pound ground beef\r\n1/2 cup chopped onion\r\n1 teaspoon salt\r\n1/4 teaspoon pepper\r\n1/4 teaspoon garlic powder (or oregano)\r\n8 ounce can tomato sauce\r\nMushrooms (optional)\r\n2 1/2 cups macaroni (cooked and drained)\r\nAny amount of cheese\r\n3 eggs\r\n3/4 cups milk', 'Brown meat, onions and seasonings.\r\nDrain off excess grease.\r\nAdd tomato sauce and mushrooms.\r\nPut in a 9x13 inch pan.\r\nPour the macaroni over the meat mixture then add cheese.\r\n\r\nMix eggs and milk and pour it on top of the cheese.\r\n\r\nBake at 350 degrees for 45 minutes.', '', '', 4, '2009-03-17 18:42:14'),
(29, 'Philly 3-Step Cheesecake', 4, '2 - 8 ounce packages Cream Cheese, softened\r\n1/2 cup sugar\r\n1/2 teaspoon vanilla\r\n2 eggs\r\n1 ready to use Graham Cracker Crust (6 ounce or 9 inch)', '1. Mix cream cheese, sugar and vanilla with electric mixer on medium speed until well blended. Add eggs; mix until blended.\r\n2. Pour into crust.\r\n3. Bake at 350 degrees for 40 minutes (until center is almost set)\r\nCool in refrigerator for 3 hours (or overnight)', 'Yield: 8 servings\r\n\r\nTo double this recipe, use a 9 inch spring pan and cook for 55 minutes. Loosen and cool before removing, then refrigerate.', '', 4, '2009-03-17 18:50:41'),
(30, 'Caramel Apples', 6, '1 pound (56) vanilla caramels\r\n2 tablespoons water\r\nDash salt\r\n6 wooden skewers\r\n6 crisp, medium apples\r\nChopped California walnuts', 'Melt caramels with water in double boiler, stirring frequently until smooth.  Add salt.  Stick a skewer into blossom end of each apple. Dip apple in the caramel syrup. (If syrup is too stiff, add few drops water.)\r\n  At once roll bottom half of coated apple in chopped nuts.  Set on cookie sheet\r\ncovered with waxed paper.  Chill till firm. \r\n', 'Better Homes and Gardens - New Cook Book (Souvenir Edition) Page 132', '', 3, '2011-06-17 23:06:51'),
(31, 'Canned Pumpkin Bread', 1, '2/3 cup shortening\r\n1/2 tsp. baking powder\r\n2 2/3 cup sugar\r\n2 tsp. baking soda\r\n4 eggs\r\n1 1/2 tsp. salt\r\n2 cup canned pumpkin\r\n1 tsp. ground cinnamon\r\n2/3 cup water\r\n1 tsp. ground nutmeg\r\n3 1/3 cups flour\r\n2/3 cup chopped nuts (optional)\r\nsome melted shortening', 'You will need 8 wide mouth pint jars and seals.\r\n\r\n1. Preheat oven to 325 degrees\r\n2. Grease the inside of jars with melted shortening (make sure not to get it on the rim of jars)\r\n3. Cream shortening and sugar. \r\n4. Beat in eggs, pumpkin and water.\r\n5. Sift together the dry ingredients.\r\n6. Beat dry into pumpkin mixture.\r\n7. Mix in nuts.\r\n8. Fill jars 1/2 full with batter\r\n9. Bake open jars for 60 minutes.\r\n10. When done take one jar out at a time and clean rim of jar with moist cloth and place on seal and tighten down firmly. Set aside and repeat with next jar. Jars are sealed when you hear a pop noise or when you press seal and it does not make a clicking noise.', 'These jars will last up to 3-4 months on your shelf in a dry and dark area. To eat just open jar and it should just come right out.\r\n\r\nThis recipe was submitted by Kirsten from an "Old time cook book (I don&apos;t have anymore)".', '', 3, '2012-06-07 22:36:14'),
(32, 'Brownie Sandwiches', 4, '1 Brownie mix,\r\n1 tbsp water,\r\n1 lg egg,\r\n1/3 cup of oil,\r\ncream cheese frosting (as desired)', 'Take one brownie mix, add 1 tablespoon of water, l large egg, 1/3 cup of oil and mix well.  Form cookies with a teaspoon of dough at a time.  Bake at 350 for 15 minutes (maybe more) until set.  Let cookies cool.  Put cream cheese frosting in between.  Enjoy!', 'Submitted by Carroll Hudson of the Parmele House Bed & Breakfast (http://www.parmelehouse.com)', 'You probably don&apos;t want to know!', 2, '2012-08-15 22:51:43');

-- --------------------------------------------------------

--
-- Table structure for table `source`
--

CREATE TABLE IF NOT EXISTS `source` (
  `source_id` int(4) NOT NULL AUTO_INCREMENT COMMENT 'Recipe Source ID',
  `source_desc` varchar(75) NOT NULL COMMENT 'Recipe Source Description',
  PRIMARY KEY (`source_id`),
  UNIQUE KEY `source_desc` (`source_desc`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Recipe Source validation table' AUTO_INCREMENT=5 ;

--
-- Dumping data for table `source`
--

INSERT INTO `source` (`source_id`, `source_desc`) VALUES
(4, 'Mom''s Recipes'),
(2, 'Other Website (see Notes section of recipe for URL)'),
(1, 'Paper Clipping'),
(3, 'Recipe Book (see Notes section of recipe for Book Name)');

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE IF NOT EXISTS `type` (
  `type_id` int(3) NOT NULL COMMENT 'Internal ID number for the record',
  `type_desc` varchar(50) NOT NULL COMMENT 'Recipe Type Description',
  PRIMARY KEY (`type_id`),
  UNIQUE KEY `type_desc` (`type_desc`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Recipe Type Validation Table';

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`type_id`, `type_desc`) VALUES
(1, 'Bread'),
(2, 'Breakfast'),
(3, 'Casserole'),
(4, 'Dessert'),
(5, 'Dressing'),
(6, 'Fruit'),
(7, 'Jams/Jellies/Preserves'),
(8, 'Meat'),
(9, 'Miscellaneous'),
(10, 'Pasta'),
(11, 'Pizza'),
(12, 'Snacks'),
(13, 'Vegetable');
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
