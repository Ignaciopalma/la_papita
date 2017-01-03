// Allows to click add button to add more ingredients 
$(document).ready(function(){
  if($(".products.new").length > 0 || $(".products.edit").length > 0) {
    var addButton = document.getElementById('more');
    var ingredientsDiv = document.getElementById('new-ingredients-container');
    var selects = document.getElementsByClassName('ingredients-select');
    var firstIngredientsSelect = document.getElementById('product_consumptions_attributes_0_supply_id');
    
    function checkAmountOfIngredientsRows(select) {
        return selects.length;
    }

    function createConsumptionInput(index) {
      var newInput = document.createElement('input');
      newInput.type = "number";
      newInput.name = "product[consumptions_attributes][" + index + "][consumption]";
      newInput.id= "product_consumptions_attributes_" + index + "_consumption";
      return newInput;
    }

    function createSelect(index, innerSelect) {
        var newSelect = document.createElement('select'); 
        newSelect.setAttribute('name', "product[consumptions_attributes][" + index + "][supply_id]");
        newSelect.setAttribute('type', 'text');
        newSelect.setAttribute('id', "product_consumptions_attributes_" + index + "_supply_id");
        newSelect.setAttribute('class', 'ingredients-select');
        newSelect.innerHTML = innerSelect;
        return newSelect;
    }

    function createIngredientsRow() {
      var selects = document.getElementsByClassName('ingredients-select');
      var index = checkAmountOfIngredientsRows(selects)
      var innerSelect = firstIngredientsSelect.innerHTML;
      var ingredientsWrapper = document.createElement('div');
      ingredientsWrapper.setAttribute('class', 'ingredients-row');
      ingredientsWrapper.appendChild(createSelect(index, innerSelect)); 
      ingredientsWrapper.appendChild(createConsumptionInput(index));
      return ingredientsWrapper; 
    }
    console.log('productJS loaded');
    addButton.addEventListener('click', function() {
      ingredientsDiv.appendChild(createIngredientsRow());
    });  
  }
});