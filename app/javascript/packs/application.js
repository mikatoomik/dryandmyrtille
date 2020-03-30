import "bootstrap";
import { initMapbox } from '../plugins/init_mapbox.js';


document.addEventListener('turbolinks:load', () => {
  initMapbox();
})
