<main class="main">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h3 class="text-center title">Recursos para desenvolvimento web</h3>
			</div>
		</div>
		<hr class="hr" />
		<div class="row">
			<div class="col-md-12">
				<div class="accordion" id="frontEndAccordion">

					<?php foreach($showCategory as $idx => $value): ?>
					<?='

						<div class="accordion-item">
							<h2 class="accordion-header" id="headingOne">
								<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#Accordion'.$showCategory[$idx]['category_id'].'" aria-expanded="true" aria-controls="Accordion'.$showCategory[$idx]['category_id'].'">
										<p>'.$showCategory[$idx]['category_description'].'</p>
								</button>
							</h2>
						
					'?>
					<?php endforeach; ?>
					

					<?php foreach($teste as $idx => $value): ?>
					<?='

							<div id="Accordion'.$teste[$idx]['category_id'].'" class="accordion-collapse collapse" aria-labelledby="headingOne" data-bs-parent="#frontEndAccordion">
								<div class="accordion-body">
									<div class="input-group mb-3">
										<div class="input-group-prepend">
											<span class="input-group-text text-light">'.$teste[$idx]['resource_id'].'</span>
										</div>
										<input title="'.$teste[$idx]['resource_name_description'].'" disabled type="text" class="form-control" placeholder="'.$teste[$idx]['resource_name_description'].'" />
										<div class="input-group-append">
											<a href="'.$teste[$idx]['resource_link'].'" target="_blank">
												<button class="btn btn-outline-secondary" type="button">
													<svg xmlns="http://www.w3.org/2000/svg" aria-hidden="true" role="img" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24"><path fill="none" stroke="#cacaca" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13.5 10.5L21 3m-5 0h5v5m0 6v5a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h5"/></svg>
												</button>
											</a>
										</div>
										
									</div>
								</div>
							</div>



						

					';?>

				<?php endforeach; ?>
</div>

					







				</div>
			</div>
		</div>
	</div>
</main>