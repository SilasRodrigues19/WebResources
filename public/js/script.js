let urlRegex =
	/https?:\/\/(www\.)?[-a-zA-Z0-9@:%._\+~#=]{1,256}(\.?)[a-zA-Z0-9()]{1,6}\b([-a-zA-Z0-9()@:%_\+.~#?&//=]*)/gi;

let regex = new RegExp(urlRegex);


const showAlertBox = (title, text, icon) => {
	Swal.fire({
		title: title,
		html: text,
		icon: icon,
		allowOutsideClick: false,
		allowEscapeKey: false,
		allowEnterKey: false,
		showLoaderOnConfirm: true,
		confirmButtonText: "Fechar",
	});
};

const handleSearch = () => {
	let formSubmit = document.querySelector("#formSubmit");
	let searchInput = document.querySelector("#searchInput");

	searchInput.value = "";
	formSubmit.submit();
};


const handleSubmit = () => {
	let act = document.querySelector("#act");

	act.value = "SUBMIT";

	let resource_name = document.querySelector("#resource_name").value,
		resource_description = document.querySelector(
			"#resource_description"
		).value,
		resource_link = document.querySelector("#resource_link").value,
		resource_category = document.querySelector("#resource_category"),
		resource_value =
			resource_category.options[resource_category.selectedIndex].value;
	
		if (
			resource_name == "" ||
			resource_description == "" ||
			resource_link == "" ||
			resource_value == ""
		) {

			showAlertBox("Existem campos não preenchidos",
				"Certifique-se de preencher todos os campos",
				"warning");
			return false;

	}
	
	if (!resource_link.match(regex)) {

		showAlertBox(
			"Formato inválido de URL",
			"Informe um formato de URL válido, começando com <span class='sweet_text'>http://</span> ou <span class='sweet_text'>https://</span>",
			"error"
		);
		return false;

	}
	
	Swal.fire({
		title: "Salvando",
		html: "Redirecionando, por favor aguarde...",
		showConfirmButton: false,
		allowOutsideClick: false,
	});
	Swal.showLoading();
};

$(document).ready(function () {
	$(".select2").select2({
		placeholder: "Selecione a categoria",
		language: {
			noResults: function () {
				return "Não encontramos categoria com esse filtro";
			},
		},
	});
});

const showMessage = document.querySelector(".showMessage");

if (showMessage.classList.contains("d-flex")) {
	setTimeout(() => {
		showMessage.classList.add("d-none");
	}, 7500);
}