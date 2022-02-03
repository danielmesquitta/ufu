function handleSubmit(e) {
  e.preventDefault();

  const nameInput = document.getElementById('name');

  if (!nameInput.value) {
    return alert('Nome completo obrigatório!');
  }

  if (!nameInput.value.match(' ')) {
    return alert('Nome completo inválido! (segundo nome obrigatório)');
  }

  const genderInputs = [
    document.getElementById('female'),
    document.getElementById('male'),
  ];

  const genderIndex = genderInputs.findIndex((input) => input.checked);

  if (genderIndex === -1) {
    return alert('Gênero não informado');
  }

  const cpfInput = document.getElementById('cpf');

  if (cpfInput.value.length !== 11) {
    return alert('O CPF precisa ter 11 digitos');
  }

  if (cpfInput.value.match(/\D/g)) {
    return alert('O CPF precisa ter apenas numeros');
  }

  const cepRegex = /^[0-9]{5}-[0-9]{3}$/;

  const cepInput = document.getElementById('cep');

  if (!cepInput.value.match(cepRegex)) {
    return alert('O CEP precisa ter o formato ddddd-ddd');
  }
}

function handleCountryChange(target) {
  const countryCode = target.value;

  const xhr = new XMLHttpRequest();

  if (!countryCode) {
    return;
  }

  xhr.onreadystatechange = () => {
    if (xhr.readyState === 4 && xhr.status === 200) {
      const response = JSON.parse(xhr.response);

      let newHTML = '<option value="">Selecione um estado</option>';

      const stateSelect = document.querySelector('#state');

      response.geonames.forEach(({ name, geonameId }) => {
        newHTML += `<option value="${geonameId}">${name}</option>`;
      });

      stateSelect.innerHTML = newHTML;
    }
  };

  xhr.open(
    'GET',
    `https://www.geonames.org/childrenJSON?geonameId=${countryCode}`,
  );

  xhr.send();
}
