import "bootstrap";

import { init_slider } from "../plugins/slider.js";

import { initStarRating, initStarRatingReadOnly } from "../plugins/init_star_rating.js";
initStarRating();
initStarRatingReadOnly();
init_slider("#planet_price");

import { init_select2 } from "../plugins/init_select2.js";
init_select2();
