let urlRegex =
	/https?:\/\/(www\.)?[-a-zA-Z0-9@:%._\+~#=]{1,256}\.[a-zA-Z0-9()]{1,6}\b([-a-zA-Z0-9()@:%_\+.~#?&//=]*)/gi;

let regex = new RegExp(urlRegex);


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
			Swal.fire("", "Preencha os campos", "error");
			return false;
	}
	
	if (!resource_link.match(regex)) {
		Swal.fire("", "Informe uma URL válida", "warning");
		return false;
	}
	
	Swal.fire({
		title: "Salvando",
		html: "Redirecionando, por favor aguarde...",
		showConfirmButton: false,
		allowOutsideClick: false,
	});
	Swal.showLoading();
	setTimeout(() => {
		window.location.href = "./";
	}, 800);
};

const showMessage = document.querySelector(".showMessage");

if (showMessage.classList.contains("d-flex")) {
	setTimeout(() => {
		showMessage.classList.add("d-none");
	}, 7500);
}
