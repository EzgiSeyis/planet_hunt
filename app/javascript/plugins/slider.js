import "bootstrap-slider"
import 'bootstrap-slider/dist/css/bootstrap-slider.css'

const init_slider = (id) => {
  // With JQuery
  $(id).slider({
    tooltip: 'always',
    formatter: function(value) {
      return value;
    }
  });
}
export { init_slider }
