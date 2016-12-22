// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .


$(document).on('ready turbolinks:load', function(){
	var categoryButtons = document.getElementsByClassName('category-buttons');
	var checkBoxes = document.getElementsByClassName('products-hidden');
	
	Array.prototype.forEach.call(categoryButtons, function(buttonPressed) {
		buttonPressed.addEventListener('click', function() {
			Array.prototype.forEach.call(checkBoxes, function(groupByCategory) {
				if(groupByCategory.classList.contains(buttonPressed.id)) {
					groupByCategory.style.display = 'block';
				} else {
					groupByCategory.style.display = "";
				}
			});	
		});
	});	
});

$(document).on('ready turbolinks:load', function(){
	var input = document.createElement('input');
  	var tableBody = document.getElementById('table-body');
  	var checkBoxes = document.getElementsByClassName('checkboxes');
  	var selectOpt = document.getElementsByClassName('selectOpt');
  	var subTotal = document.getElementsByClassName('subTotal');

  	function orderProductFunc(row, index, value) {
  		var inner = '<input value=' + value + ' type="text" name="order[order_details_attributes][' + index + '][product]" id="order_order_details_attributes_' + index + '_product">';
  		return row.appendChild(document.createElement('td')).innerHTML = inner; 
  	}
  	function getId(checkbox) {
		return parseInt(checkbox.nextSibling.nextSibling.innerText);
  	}

  	function orderProductIdFunc(row, index, id) {
  		var inner = '<input value=' + id + ' type="text" name="order[order_details_attributes][' + index + '][product_id]" id="order_order_details_attributes_' + index + '_product_id">';
  		return row.appendChild(document.createElement('td')).innerHTML = inner; 
  	}

  	function orderCommentFunc(row, index) {
  		var inner = '<input type="text" name="order[order_details_attributes][' + index + '][comments]" class="comments-input" id="order_order_details_attributes_' + index + '_comments">';
  		return row.appendChild(document.createElement('td')).innerHTML = inner; 
  	}

	  function orderQuantityFunc(row, index) {
  		var inner = '<select class="selectOpt" type="text" name="order[order_details_attributes][' + index + '][quantity]" id="order_order_details_attributes_' + index + '_quantity">' +
  						'<option>1</option>' +
  						'<option>2</option>' +
  						'<option>3</option>' +
  						'<option>4</option>' +
  						'<option>5</option>' +
  						'<option>6</option>' +
  						'<option>7</option>' +
  						'<option>8</option>' +
  						'<option>9</option>' +
  					'</select>';
  		row.appendChild(document.createElement('td')).innerHTML = inner; 
  	}

  	function orderSubTotalFunc(row, index, price) {
  		var inner = '<input class="subTotal" value=' + price + ' type="text" name="order[order_details_attributes][' + index + '][sub_total]" id="order_order_details_attributes_' + index + '_sub_total">';
  		return row.appendChild(document.createElement('td')).innerHTML = inner; 
  	}

  	function checkAmountOfRows() {
  		return tableBody.childNodes.length - 1;
  	}

  	function getSubTotalNumbers() {
  		return Array.prototype.map.call(subTotal, function(each) {
  			return parseInt(each.value);
  		})
  	}

    var vueltoAmount = document.getElementById('vuelto-amount').innerText;
    var calcularButton = document.getElementById('calcular-button');

    function calculateVuelto() {
      var total = parseInt(document.getElementById('order_total').value);
      var paymentMethod = parseInt(document.getElementById('order_payment_method').value);
      console.log('i am called');
      if(isNaN(paymentMethod)) {
        return 'No necesita Vuelto';
      } else {
        return paymentMethod - total;
      }
    }

    function setVueltoAmount() {
      document.getElementById('vuelto-amount').innerText = '$' + calculateVuelto();
    }

  	function calculateTotal() {
  		var totalAmount = document.getElementById('order_total');
  		return totalAmount.value = Array.prototype.reduce.call(getSubTotalNumbers(), function(prev, eachSubTotal) {
  			return prev + eachSubTotal;
  		})
  	}

  	function createAndDeleteRow(checkbox) {
  		var index = checkAmountOfRows();
  		var subPrice = document.getElementById(checkbox.id + '-price').innerText;
  		var newRow = tableBody.appendChild(document.createElement('tr'));

  		if(checkbox.checked === true) {
  			newRow.id = checkbox.id.split(' ').join('-') + '-row';
  			orderProductIdFunc(newRow, index, getId(checkbox));
  			orderProductFunc(newRow, index, checkbox.id);
  			orderCommentFunc(newRow, index); 
  			orderQuantityFunc(newRow, index);
  			orderSubTotalFunc(newRow, index, subPrice);
  		} else {
  			document.getElementById(checkbox.id.split(' ').join('-') + '-row').remove();
  		}

  		Array.prototype.forEach.call(selectOpt, function(select) {
  			var sub = select.parentNode.nextSibling.childNodes[0]
  			select.addEventListener('change', function() {
  				sub.value = parseInt(select.value) * parseInt(subPrice)
  				calculateTotal();
          setVueltoAmount();
  			});
  		})

  		calculateTotal();
      setVueltoAmount();
  	}

    document.getElementById('order_payment_method').addEventListener('input', function() {
      document.getElementById('vuelto-amount').innerText = calculateVuelto();
    })

  	Array.prototype.forEach.call(checkBoxes, function(checkbox) {
  		checkbox.addEventListener('change', function() {
  			createAndDeleteRow(checkbox);
  		});  		
  	})

    console.log('page loaded down');
});


$(document).on('ready turbolinks:load', function(){
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
  });
});






