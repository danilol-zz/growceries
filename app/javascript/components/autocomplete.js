import 'js-autocomplete/auto-complete.css';
import autocomplete from 'js-autocomplete';

const renderItem = function (item) {
  console.log("aeeee porra");
  console.log(item);
    var icon = '<i class="fas fa-code"></i>';
    return `<div class="autocomplete-suggestion">${icon}<span>${item.name}</span></div>`
};

const autocompleteSearch = function() {
  const products = JSON.parse(document.getElementById('search-data').dataset.products)
  const searchInput = document.getElementById('q');

  if (products && searchInput) {
    new autocomplete({
      selector: searchInput,
      minChars: 1,
      source: function(term, suggest){
        $.getJSON('/autocomplete',
          { q: term },
          function(data) {
            return data;
        }).then((data) => {
          const matches = []
          data.forEach((product) => {
            matches.push(product);
          });
          suggest(matches)
        });
      },
      renderItem: renderItem
    });
  }
};

export { autocompleteSearch };
