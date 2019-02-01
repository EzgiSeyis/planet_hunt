import "bootstrap";

import { init_slider } from "../plugins/slider.js";

import { initStarRating, initStarRatingReadOnly } from "../plugins/init_star_rating.js";
initStarRating();
initStarRatingReadOnly();
init_slider("#review_rating");
init_slider("#planet_price");
