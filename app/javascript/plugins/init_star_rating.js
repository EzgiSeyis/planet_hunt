import "jquery-bar-rating";
import 'jquery-bar-rating/dist/themes/css-stars.css';

const initStarRating = () => {
  $('#review_rating').barrating({
    theme: 'css-stars'
  });
};

const initStarRatingReadOnly = () => {
  $('.review-planet > select').barrating({
    theme: 'css-stars',
    readonly: true
  });
};

export { initStarRating, initStarRatingReadOnly };

