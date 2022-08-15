<main class="main">
  <header>
		<nav class="nav-bar">
			<ul>
					<li>
						<a href="/WebResources/resource">
							<span class="iconify" data-icon="ic:baseline-arrow-back-ios" data-width="20" data-height="20"></span>
						</a>
					</li>
			</ul>
		</nav>
	</header>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h3 class="text-center">Adicionar recurso</h3>
        <?= showMessage(); ?>
			</div>
		</div>
		<hr class="hr" />
		<div class="row">
			<div class="col-md-12">
				<form action="" method="POST" name="resource_form">
          <input type="hidden" name="act" id="act">
          <input type="hidden" name="resource_id" id="resource_id" value="<?= $max_id['max_id'] ?>">

          <div class="form-group mt-4">
            <label for="resource_name">Nome do recurso</label>
            <input autocomplete="off" type="text" class="form-control" id="resource_name" name="resource_name" aria-describedby="emailHelp">
          </div>

          <div class="form-group mt-4">
            <label for="resource_description">Descrição do recurso</label>
            <input autocomplete="off" type="text" class="form-control" id="resource_description" name="resource_description">
          </div>

          <div class="form-group mt-4">
            <label for="resource_link">Link do recurso</label>
            <input autocomplete="off" type="text" class="form-control" id="resource_link" name="resource_link" placeholder="https://example.com">
          </div>

          <div class="form-group mt-4">
            <label for="resource_category">ID da categoria</label>
            <select name="resource_category" id="resource_category" class="form-select">
                <option value="" selected disabled>Selecione a categoria</option>
                <?php foreach($showCategoryOption as $idx => $value): ?>
                    <option value="<?= $showCategoryOption[$idx]['category_id']; ?>">
                      <?= $showCategoryOption[$idx]['category_description']; ?>
                    </option>
                <?php endforeach; ?>
            </select>
          </div>
          <button name="btnSubmit" onclick="return handleSubmit();" type="submit" class="btn btn-primary mt-4">Salvar</button>
        </form>
			</div>
		</div>
	</div>
</main>