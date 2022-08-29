<main class="main">
  <header>
		<nav class="nav-bar">
			<ul>
					<li>
						<a data-toggle="tooltip" data-placement="bottom" title="Voltar" class="btn btn-outline-secondary m-auto" href="<?= base_url('/resource'); ?>">
							<span class="iconify" data-icon="eva:arrow-ios-back-fill" data-width="20" data-height="20"></span>
						</a>
					</li>
			</ul>
		</nav>
	</header>
	<div class="container">
		<div class="row">
			<div class="col-sm-12">
				<h3 class="text-center">Adicionar recurso</h3>
        <?= showMessage(); ?>
			</div>
		</div>
		<hr class="hr" />
		<div class="row">
			<div class="col-sm-12 col-md-6 m-auto">
				<form action="" method="POST" name="resource_form">
          <input type="hidden" name="act" id="act">
          <input type="hidden" name="resource_id" id="resource_id" value="<?= $max_id['max_id'] ?>">

          <div class="form-group mt-4">
            <label for="resource_name">Nome do recurso</label>
            <input autocomplete="off" type="text" class="form-control" id="resource_name" name="resource_name" placeholder="Insira um nome curto para o recurso"
            value="<?= $fields['resource_name'] ?>">
          </div>

          <div class="form-group mt-4">
            <label for="resource_description">Descrição do recurso</label>
            <input autocomplete="off" type="text" class="form-control" id="resource_description" name="resource_description" placeholder="Insira uma breve descrição"
            value="<?= $fields['resource_description'] ?>">
          </div>

          <div class="form-group mt-4">
            <label for="resource_link">Link do recurso</label>
            <input autocomplete="off" type="text" class="form-control" id="resource_link" name="resource_link" placeholder="<?= $lastResource[0]['resource_link']; ?>"
            value="<?= $fields['resource_link'] ?>">
          </div>

          <div class="form-group mt-4">
            <label for="resource_category">Categoria</label>
            <div class="form-control">
              <select name="resource_category" id="resource_category" class="form-control select2">
                <option value="" selected disabled></option>
                  <?php foreach($showCategoryOption as $idx => $value): ?>
                      <?php 
                        $selected = false; 
                        ($fields['resource_category'] == $showCategoryOption[$idx]['category_id']) ? $selected = " selected" : '';
                      ?>
                      <option value="<?= $showCategoryOption[$idx]['category_id']; ?>" <?= $selected ?>>
                        <?= $showCategoryOption[$idx]['category_description']; ?>
                      </option>
                  <?php endforeach; ?>
              </select>
            </div>
          </div>
          <button id="btnSubmit" name="btnSubmit" onclick="return handleSubmit();" type="submit" class="btn btn-secondary btn-block w-100 mt-4">Salvar</button>
        </form>
			</div>
		</div>
	</div>