$(document).ready(function () {
	$(".dataTableExec").DataTable();
});

const handleDelete = (id) => {
	Swal.fire({
		title: "",
		text: "Do you really want to delete this actor ?",
		icon: "question",
		showCancelButton: true,
		confirmButtonColor: "#3085d6",
		cancelButtonColor: "#d33",
		confirmButtonText: "Yes!",
		cancelButtonText: "No",
	}).then((result) => {
		if (result.value) {
			Swal.fire({
				title: "Loading",
				html: "Wait, please...",
				showConfirmButton: false,
				allowOutsideClick: false,
			});
			window.location = "?drop&id=" + id;
			Swal.showLoading();
		} else {
			Swal.fire({
				title: "Canceling",
				html: "Wait, please...",
				showConfirmButton: false,
				allowOutsideClick: false,
			});

			Swal.showLoading();
			setTimeout(() => {
				window.location.reload();
			}, 250);
		}
	});
	return false;
};

const handleEdit = (id) => {
	Swal.fire({
		title: "",
		text: "Do you really want to edit this actor ?",
		icon: "question",
		showCancelButton: true,
		confirmButtonColor: "#3085d6",
		cancelButtonColor: "#d33",
		confirmButtonText: "Yes!",
		cancelButtonText: "No",
	}).then((result) => {
		if (result.value) {
			Swal.fire({
				title: "Loading",
				html: "Wait, please...",
				showConfirmButton: false,
				allowOutsideClick: false,
			});
			window.location = "actor/iud_actor?drop&id=" + id;
			Swal.showLoading();
		} else {
			Swal.fire({
				title: "Canceling",
				html: "Wait, please...",
				showConfirmButton: false,
				allowOutsideClick: false,
			});

			Swal.showLoading();
			setTimeout(() => {
				window.location.reload();
			}, 250);
		}
	});
	return false;
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
		alert("Preencha os campos");
		return false;
	}
};
