<?php
	require_once('bd.class.php');
	session_start();

	if(!isset($_SESSION['email'])){
		header('Location: index.php');
	}

	$erro_email = isset($_GET['erro_email']) ? $_GET['erro_email'] : 0;

	$email = $_SESSION['email'];

	$sql = " SELECT proprietarios.id, nome_proprietario, email, telefone, nome_propriedade, localizacao, nome_municipio, estados.id, nome_estado FROM proprietarios, municipios, estados WHERE email = '$email' AND municipios_id = municipios.id AND estados_id = estados.id ";

	$objBd = new bd();
	$link = $objBd->conecta_mysql();

	$resultado = mysqli_query($link, $sql);

	if($resultado){
		$dados_usuario = array();
		
		while($linha = mysqli_fetch_array($resultado, MYSQLI_ASSOC)){
			$dados_usuario[] = $linha; 
		}
	}
	else{
		echo 'Erro na execução da consulta, favor entrar em contato com o administrador do site';
	}

?>

<!DOCTYPE HTML>
<html lang="pt-br">
	<head>
		<meta charset="UTF-8">

		<title>Meu Cadastro</title>
		<link rel="icon" href="imagens/favicon.png">
		
		<!-- jquery - link cdn -->
		<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>

		<!-- bootstrap - link cdn -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
		<link href="estilos.css" rel="stylesheet">
		
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
	</head>

	<body>

		<!-- Static navbar -->
	    <nav class="navbar navbar-default navbar-static-top">
	      <div class="container">
	        <div class="navbar-header">
	          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
	            <span class="sr-only">Toggle navigation</span>
	            <span class="icon-bar"></span>
	            <span class="icon-bar"></span>
	            <span class="icon-bar"></span>
	          </button>
	          <!--<img src="imagens/logo.png" />-->
	          <a href="home.php" class="navbar-brand">
	          <span class="img-logo">Logo</span>
	          </a>
	        </div>
	        
	        <div id="navbar" class="navbar-collapse collapse">
	          <ul class="nav navbar-nav navbar-right">
	          	<li><a href="home.php">Início</a></li>
	            <li><a href="despesas.php">Despesas</a></li>
	            <li><a href="investimentos.php">Investimentos</a></li>
	            <li><a href="vendas.php">Vendas</a></li>
	            <li><a href="estoque.php">Estoque</a></li>
	            <li><a href="produtos.php">Produtos</a></li>
	           	<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon-user"></i>
	            	Relatórios <b class="caret"></b></a>
					  <ul class="dropdown-menu">
					    <li><a href="#">Relatório de Despesas</a></li>
					    <li><a href="#">Relatório de Investimentos</a></li>
					    <li><a href="relatorio_vendas.php">Relatório de Vendas</a></li>
					    <li><a href="#">Relatório de Perda de Produtos</a></li>
					    <li><a href="#">Margens</a></li>
					  </ul>
	            </li>
	            <li class="divisor" role="separator"></li>

	            <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon-user"></i>
	            	Usuário <b class="caret"></b></a>
					  <ul class="dropdown-menu">
					    <li><a href="exibir_cadastro.php">Minha Conta</a></li>
					    <li><a href="#">Atendimento</a></li>
					    <li role="separator" class="divider"></li>
					    <li><a href="sair.php">Sair</a></li>
					  </ul>
	            </li>
	          </ul>
	        </div>
	      </div>
	    </nav>


	    <div class="container">
	    	<div class="page-header">
	    		<h1>Meu Cadastro</h1>
	    	</div>

	    	<div class="pull-right">
	    	<?php foreach($dados_usuario as $usuario){ ?>
	    		<button type="button" class="btn btn-md btn-primary" data-toggle="modal" data-target="#myModalcad"
	    				data-id-proprietario="<?php echo $usuario['id']; ?>" 
						data-nome="<?php echo $usuario['nome_proprietario']; ?>"
						data-email="<?php echo $usuario['email']; ?>"
						data-senha="<?php echo $usuario['senha']; ?>"
						data-telefone="<?php echo $usuario['telefone']; ?>"
						data-propriedade="<?php echo $usuario['nome_propriedade']; ?>"
						data-localizacao="<?php echo $usuario['localizacao']; ?>"
						data-municipio="<?php echo $usuario['nome_municipio']; ?>"
						data-estado="<?php echo $usuario['nome_estado']; ?>">
	    		Editar
	    	<?php } ?>
	    		</button>

			<div class="modal fade" id="myModalcad" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
							<h4 class="modal-title" id="myModalLabel">Editar - Cadastro</h4>
						</div>
						<div class="modal-body">

							<form method="POST" action="exibir_cadastro.php" enctype="multipart/form-data" id="formEditarCad">
								<div class="form-group">
					            	<label for="nome" class="control-label">Nome *</label>
									<input type="text" class="form-control" id="nome" name="nome" required="requiored">
								</div>

								<div class="form-group">
									<label for="email" class="control-label">E-mail *</label>
									<?php
										if($erro_email){
										echo '<font style="color:#FF0000">Este e-mail já foi cadastrado!</font>';
										}
									?>
									<input type="email" class="form-control" id="email" name="email" required="requiored">
								</div>
								
								<div class="form-group">
									<label for="senha" class="control-label">Senha *</label>
									<input type="password" class="form-control" id="senha" name="senha" required="requiored">
								</div>

								<div class="form-group">
									<label for="telefone" class="control-label">Telefone *</label>
									<input type="text" class="form-control" id="telefone" name="telefone" required="requiored">
								</div>

								<div class="form-group">
									<label for="propriedade" class="control-label">Propriedade *</label>
									<input type="text" class="form-control" id="propriedade" name="propriedade" required="requiored">
								</div>

								<div class="form-group">
									<label for="localizacao" class="control-label">Localização</label>
									<input type="text" class="form-control" id="localizacao" name="localizacao">
								</div>

								<div class="row">
									<div class="form-group col-md-6">
										<label for="id_estado" class="control-label">Estado *</label><br />
										<select name="id_estado" id="id_estado">
										<option value="">
												<?php echo $usuario['nome_estado']; ?>
											</option>
											<?php
												$result_estado = "SELECT * FROM estados ORDER BY nome_estado";
												$resultado_estado = mysqli_query($link, $result_estado);
												while($row_estado = mysqli_fetch_assoc($resultado_estado)){
													if($usuario['nome_estado'] != $row_estado['nome_estado']){
													echo '<option value="'.$row_estado['id'].'">'.$row_estado['nome_estado'].'</option>';
													}
												}
											?>
										</select>
									</div>

									<div class="form-group col-md-6">
										<label for="id_cidade" class="control-label">Cidade *</label><br />
										<select name="id_cidade" id="id_cidade">
											<option value="">
												<?php echo $usuario['nome_municipio']; ?>

											<?php
												$result_municipio = "SELECT * FROM estados, municipios WHERE estados.id = estados_id ORDER BY nome_municipio";
												$resultado_municipio = mysqli_query($link, $result_municipio);
												while($row_municipio = mysqli_fetch_assoc($resultado_municipio)){
													if($usuario['nome_municipio'] != $row_municipio['nome_municipio']){
													echo '<option value="'.$row_municipio['id'].'">'.$row_municipio['nome_municipio'].'</option>';
													}
												}
											?>
											</option>
										</select> 
									</div>
								</div>
								<input name="id" type="hidden" id="id-proprietario">
								<div class="modal-footer">
									<button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
									<button type="submit" class="btn btn-success">Salvar</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>

	    	</div>
	    	<br />

	    	<div class="container">
	    		<div class="col-md-3"></div>
	    		<div class="col-md-6">
	    			<?php foreach($dados_usuario as $usuario){ ?>
	    			<label class="control-label">Nome:</label>
	    			<?php echo $usuario['nome_proprietario']; ?><br />
	    			<label class="control-label">E-mail:</label>
	    			<?php echo $usuario['email']; ?><br />
	    			<label class="control-label">Telefone:</label>
	    			<?php echo $usuario['telefone']; ?><br />
	    			<label class="control-label">Propriedade:</label>
	    			<?php echo $usuario['nome_propriedade']; ?><br />
	    			<label class="control-label">Cidade:</label>
		    		<?php echo $usuario['nome_municipio'];?><br />
		    		<label class="control-label">UF:</label>
		    		<?php echo $usuario['nome_estado'];?><br />
	    			<label class="control-label">Localização:</label>
	    			<?php echo $usuario['localizacao']; ?><br />
	    			<?php } ?>
	    		</div>
	    		<div class="col-md-3"></div>
	    	</div>
				
			<div class="clearfix"></div>
			<br />
			<div class="col-md-4"></div>
			<div class="col-md-4"></div>
			<div class="col-md-4"></div>

		</div>
	    </div>
	
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

		<script type="text/javascript">
			$('#id_estado').change(function (){
				var valor = document.getElementById("id_estado").value;

				$.get("cidade.php?search=" + valor, fuction (data) {
					$("#id_cidade").find("option").remove();
					$('#id_cidade').append(data);
				});
			});
		</script>

		<script type="text/javascript">
			$('#myModalcad').on('show.bs.modal', function (event) {
				var button = $(event.relatedTarget) // Button that triggered the modal
				var recipientnomeproprietario = button.data('nome') // Extract info from data-* attributes
				var recipientemail = button.data('email')
				var recipientsenha = button.data('senha')
				var recipienttelefone = button.data('telefone')
				var recipientpropriedade = button.data('propriedade')
				var recipientlocalizacao = button.data('localizacao')
				var recipientcod = button.data('id-proprietario')
			  // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
			  // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
				var modal = $(this)
			 	modal.find('#id-proprietario').val(recipientcod)
			 	modal.find('#nome').val(recipientnomeproprietario)
			 	modal.find('#email').val(recipientemail)
			 	modal.find('#senha').val(recipientsenha)
			 	modal.find('#telefone').val(recipienttelefone)
			 	modal.find('#propriedade').val(recipientpropriedade)
			 	modal.find('#localizacao').val(recipientlocalizacao)

			});

			$('#id_estado').change(function (){
				var valor = document.getElementById("id_estado").value;

				$.get("exibe_cidade.php?search=" + valor, fuction (data) {
					$("#id_cidade").find("option").remove();
					$('#id_cidade').append(data);
				});
			});
		</script>

	</body>
</html>