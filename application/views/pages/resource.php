<main class="main">
	<header>
		<nav class="nav-bar">
			<ul class="d-flex justify-content-between flex-row-reverse">
					<li>
						<a href="<?= base_url('/resource/new'); ?>">
							<span class="iconify" data-icon="eos-icons:content-new" data-width="20" data-height="20"></span>
						</a>
					</li>
					<li>
						<form action="" method="POST" id="formSubmit">
							<div class="input-group searchBar">
								<input value="<?= $searchTerm ?>" autocomplete="off" id="searchInput" name="search" type="search" class="form-control" placeholder="Pesquisar...">
								<div class="input-group-append">
									<button name="btnSearch" class="btn btn-outline-secondary" type="submit"><svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24"><path fill="currentColor" d="M15.5 14h-.79l-.28-.27A6.471 6.471 0 0 0 16 9.5A6.5 6.5 0 1 0 9.5 16c1.61 0 3.09-.59 4.23-1.57l.27.28v.79l5 4.99L20.49 19l-4.99-5zm-6 0C7.01 14 5 11.99 5 9.5S7.01 5 9.5 5S14 7.01 14 9.5S11.99 14 9.5 14z"/></svg>
									</button>
								</div>
							</div>
						</form>
					</li>
			</ul>
		</nav>
	</header>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h3 class="text-center title">Recursos para desenvolvimento web</h3>
				<?= showMessage(); ?>
				<?php if($searchTerm): ?>
					<?= '<span class="spanFilter">'. $searchTerm . ' <svg class="closeFilter" onclick="return handleSearch()" xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 32 32"><path fill="currentColor" d="M16 3C8.832 3 3 8.832 3 16s5.832 13 13 13s13-5.832 13-13S23.168 3 16 3zm0 2c6.086 0 11 4.914 11 11s-4.914 11-11 11S5 22.086 5 16S9.914 5 16 5zm-3.781 5.781L10.78 12.22L14.562 16l-3.78 3.781l1.437 1.438L16 17.437l3.781 3.782l1.438-1.438L17.437 16l3.782-3.781l-1.438-1.438L16 14.562z"/></svg></span>'; ?>
				<?php endif; ?>
			</div>
		</div>
		<hr class="hr" />
		<div class="row">
			<div class="col-md-12">
				<div class="accordion" id="frontEndAccordion">

					<?php if($showList): ?>
						<?php foreach($showCategory as $idx => $value): ?>
						<?='

							<div class="accordion-item">
								<h2 class="accordion-header" id="headingOne">
									<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#Accordion'.$showCategory[$idx]['category_id'].'" aria-expanded="true" aria-controls="Accordion'.$showCategory[$idx]['category_id'].'">
											<p>'.$showCategory[$idx]['category_description'].'</p>
									</button>
								</h2>
							</div>
						'?>
						<?php endforeach; ?>
						<?php else: ?>
							<div class="col-md-12 text-center m-auto">
								<span>Não existem dados a serem exibidos</span>
							</div>
					<?php endif; ?>
					
					<?php foreach($showList as $idx => $value): ?>
					<?='

							<div id="Accordion'.$showList[$idx]['category_id'].'" class="accordion-collapse collapse" aria-labelledby="headingOne" data-bs-parent="#frontEndAccordion">
								<div class="accordion-body">
									<div class="input-group mb-3">
										<div class="input-group-prepend">
											<span class="input-group-text text-light">'.$showList[$idx]['resource_id'].'</span>
										</div>
										<input title="'.$showList[$idx]['resource_name_description'].'" disabled type="text" class="form-control" placeholder="'.$showList[$idx]['resource_name_description'].'" />
										<div class="input-group-append">
											<a href="'.$showList[$idx]['resource_link'].'" target="_blank">
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