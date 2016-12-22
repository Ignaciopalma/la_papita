// Allows to click add button to add more ingredients 
$(document).on('turbolinks:load', function(){
  var addButton = document.getElementById('more');
  var ingredientsDiv = document.getElementById('add-ingredients');
  var selects = document.getElementsByClassName('ingredients-select');
  var firstIngredientsSelect = document.getElementById('product_consumptions_attributes_0_supply_id');
  
  function checkAmountOfIngredientsRows(select) {
      return selects.length;
  }

  function createConsumptionInput(index) {
    var newInput = ingredientsDiv.appendChild(document.createElement('input'));
    newInput.type = "number";
    newInput.name = "product[consumptions_attributes][" + index + "][consumption]";
    newInput.id= "product_consumptions_attributes_" + index + "_consumption";
  }

  function createSelect(index, innerSelect) {
    var newSelect = ingredientsDiv.appendChild(document.createElement('select')); 
      newSelect.setAttribute('name', "product[consumptions_attributes][" + index + "][supply_id]");
      newSelect.setAttribute('type', 'text');
      newSelect.setAttribute('id', "product_consumptions_attributes_" + index + "_supply_id");
      newSelect.setAttribute('class', 'ingredients-select');
      newSelect.innerHTML = innerSelect;
  }

  function createIngredientsRow() {
    console.log('createIngredientsRow function')
    var selects = document.getElementsByClassName('ingredients-select');
    var index = checkAmountOfIngredientsRows(selects)
    var innerSelect = firstIngredientsSelect.innerHTML;
    createSelect(index, innerSelect);
    createConsumptionInput(index);
  }

  addButton.addEventListener('click', function() {
    createIngredientsRow();
    console.log('buttonPressed');
  });
});
