<?php
?>

<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title><?php if (!empty($title_active) && isset($all)) {
						echo $all['title'] . ' | ' . $title_active;
					} ?></title>

	<!-- Google Font: Source Sans Pro -->
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
	<!-- Font Awesome Icons -->
	<link rel="stylesheet" href="<?php echo base_url('assets/'); ?>plugins/fontawesome-free/css/all.min.css">
	<!-- IonIcons -->
	<link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
	<!-- Toastr -->
	<link rel="stylesheet" href="<?php echo base_url('assets/'); ?>plugins/toastr/toastr.min.css">
	<!-- Theme style -->
	<link rel="stylesheet" href="<?php echo base_url('assets/'); ?>dist/css/adminlte.min.css">
</head>

<body class="hold-transition sidebar-mini layout-fixed layout-navbar-fixed">
	<div class="wrapper">

		<?php $this->load->view('/shared/header'); ?>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">

			<?php $this->load->view('shared/breadcrumb'); ?>

			<!-- Main content -->
			<section class="content pb-3 mb-5">
				<div class="container-fluid">
					<div class="row">
						<div class="col-12">
							<div class="card">
								<div class="card-header d-flex p-0">
									<h3 class="card-title p-3">Projects Detail</h3>
									<ul class="nav nav-pills ml-auto p-2">
										<li class="nav-item"><a class="nav-link active" href="#general" data-toggle="tab">Summary</a></li>
										<li class="nav-item"><a class="nav-link" href="#expenditure" data-toggle="tab">Expenditure</a></li>
										<li class="nav-item"><a class="nav-link" href="#logs" data-toggle="tab">Transaction Logs</a></li>
										<!-- <li class="nav-item"><a class="nav-link" href="#activity_table" data-toggle="tab"></a></li> -->
									</ul>
								</div>
								<div class="card-body">
									<div class="tab-content">

										<div class="tab-pane active" id="general">
											<?php if (!empty($project)) : foreach ($project as $row) : ?>
													<div class="row">
														<div class="col-12 col-md-12 col-lg-8 order-2 order-md-1">
															<div class="row">
																<div class="col-12 col-sm-4">
																	<div class="info-box bg-light">
																		<div class="info-box-content">
																			<span class="info-box-text text-center text-muted">Estimated budget</span>
																			<span class="info-box-number text-center text-muted mb-0"><?php if ($row['budget'] >= 1000000) {
																				$value = $row['budget'];} else if ($row['budget'] >= 1000) {
																					$value = $row['budget']; echo '$ ' . $value;
																					}; ?></span>
																		</div>
																	</div>
																</div>
																<div class="col-12 col-sm-4">
																	<div class="info-box bg-light">
																		<div class="info-box-content">
																			<span class="info-box-text text-center text-muted">Total amount spent</span>
																			<span class="info-box-number text-center text-muted mb-0"><?php echo $row['totalSum']; ?></span>
																		</div>
																	</div>
																</div>
																<div class="col-12 col-sm-4">
																	<div class="info-box bg-light">
																		<div class="info-box-content">
																			<span class="info-box-text text-center text-muted">Estimated project duration</span>
																			<span class="info-box-number text-center text-muted mb-0"><?php echo $row['daysRemain'] . "/" . $row['duration']; ?> days</span>
																		</div>
																	</div>
																</div>
															</div>

															<div class="row">
																<div class="col-12">

																	<?php if (!empty($summary) && count($summary) > 0) : ?>
																		<div class="row">

																			<?php if (!empty($summary) && count($summary) > 1) : ?>
																				<div class="col-lg-6">
																					<div class="card">
																						<div class="card-header border-0">
																							<div class="d-flex justify-content-between">
																								<h3 class="card-title">Budget Transactions</h3>
																							</div>
																						</div>
																						<div class="card-body">
																							<?php if (!empty($summary) && count($summary) > 1) : ?>
																								<div class="position-relative mb-4">
																									<canvas id="spent-line-chart" height="200"></canvas>
																								</div>
																							<?php endif; ?>
																						</div>
																					</div>
																				</div>
																			<?php endif; ?>

																			<div class="col-lg-6">
																				<div class="card">
																					<div class="card-header border-0">
																						<div class="d-flex justify-content-between">
																							<h3 class="card-title">Budget Transactions</h3>
																						</div>
																					</div>
																					<div class="card-body">
																						<?php if (!empty($summary) && count($summary) > 0) : ?>
																							<div class="position-relative mb-4">
																								<canvas id="sales-chart" height="200"></canvas>
																							</div>
																						<?php endif; ?>
																					</div>
																				</div>
																			</div>
																		</div>
																	<?php else : ?>
																		<div class="callout callout-warning" style="height: 300px;">
																			<p>No activities done yet </p>

																		</div>
																	<?php endif; ?>

																</div>
															</div>
														</div>

														<div class="col-12 col-md-12 col-lg-4 order-1 order-md-2">
															<h4 class="text-primary"><?php echo $row['proName']; ?></h4>
															<p class="text-muted"><?php echo $row['description']; ?></p>
															<br>
															<div class="text-muted">
																<p class="text-sm">Client Company
																	<b class="d-block"><?php echo $row['compName']; ?></b>
																</p>
																<p class="text-sm">Project Leader
																	<b class="d-block"><?php echo $row['leader']; ?></b>
																</p>
															</div>


															<h5 class="mt-5 text-muted">Project files</h5>
															<?php if (!empty($projectDoc) && count($projectDoc) > 0) : ?>
																<ul class="list-unstyled document_list"></ul>
															<?php else : ?>
																<div class="callout callout-info">
																	<p>No files connected to this project </p>
																</div>
															<?php endif; ?>

															<div class="text-center mt-5 mb-3">
																<form id="showForm" action="#" method="POST" enctype="multipart/form-data">
																	<div class="form-group">
																		<div class="row">
																			<div class="col-9">
																				<input type="file" id="docName" name="docName" class="form-control docName <?php if (form_error('docName')) {
																																																											echo 'is-invalid';
																																																										} else {
																																																											echo 'valid';
																																																										} ?>" value="<?php echo set_value('docName') ?>">
																				<div class="<?php if (form_error('docName')) {
																											echo 'invalid-feedback';
																										} ?>">
																					<div><?php echo form_error('docName'); ?></div>
																				</div>
																			</div>
																			<div class="col-3">
																				<button type="submit" id="uploadFile" name="uploadFile" class="btn btn-success uploadFile">Upload</button>
																			</div>
																		</div>

																	</div>
																</form>
																<a class="btn btn-sm btn-primary showImpurt">Add files</a>
																<a href="#activity_table" data-toggle="tab" class="btn btn-sm btn-warning">Reports</a>
															</div>

														</div>
													</div>
											<?php endforeach;
											endif; ?>
										</div>


										<div class="tab-pane" id="expenditure">

											<form method="post" autocomplete="off" action="<?php echo base_url('project/'); ?>expenditure/<?php echo $this->uri->segment(3); ?>">
												<div class="row">
													<div class="col-12">
															<div class="row">

																<div class="col-12 col-lg-7">
																	<div class="form-group">
																		<div class="row">
																			<div class="col-12 col-lg-6 mb-1">
																				<label for="totalSum">Current Budget</label>
																				<?php $currentAmmount = ($row['budget'] - $row['totalSum']); ?>
																				<input type="hidden" name="totalSum" value="<?php echo $currentAmmount; ?>">
																				<input type="number" disabled="disabled" class="form-control" value="<?php echo $currentAmmount; ?>">

																			</div>
																			<div class="col-6 col-lg-3">
																				<label for="estimatedDuration">Days</label>
																				<input type="number" disabled="disabled" class="form-control" value="<?php echo $row['daysRemain']; ?>">
																			</div>
																			<div class="col-6 col-lg-3">
																				<label for="estimatedDuration"> Status</label>
																				<div class="row mb-2 pl-2">
																					<span class="badge badge-success mr-2 py-1">Good</span>
																				</div>
																			</div>
																		</div>
																	</div>

																	<div class="form-group">
																		<label for="lName">Purpose <small class="text-danger">&ast;</small></label>
																		<div class="row mb-2 pl-2">

																			<?php $purpose = (!empty($row['purpose'])) ? 	unserialize($row['purpose']) : array();

																			if (!empty($purpose)) :
																				for ($i = 0; $i < count($purpose); $i++) { ?>
																					<span class="badge badge-warning mr-2 py-1">
																						<?php echo $purpose[$i]; ?>
																					</span>
																				<?php   };
																			else : ?>

																				<span class="badge badge-info py-1">No purpose selected during project created</span>

																			<?php endif; ?>
																		</div>
																	</div>

																	<div class="form-group">
																		<div class="row">
																			<div class="col-12 col-lg-6">
																				<label for="estimatedBudget"> Ependiture for</label>

																				<select class="form-control select2" style="width: 100%;" name="spentFor">
																					<option selected="selected" disabled>Ependiture for</option>

																					<?php if (!empty($purpose)) :
																						foreach ($purpose as $key) {
																							echo "<option value=" . $key . ">" . $key . "</option>";
																						}
																					else :
																						echo " <option value='all'>for all</option>";
																					endif; ?>
																				</select>

																				<div class="<?php if (form_error('spentFor')) {
																											echo 'invalid-feedback';
																										} ?>">
																					<div><?php echo form_error('spentFor'); ?></div>
																				</div>
																			</div>

																			<div class="col-12 col-lg-6">
																				<label for="spentAmount">How much?</label>
																				<input type="number" id="spentAmount" name="spentAmount" placeholder="$20" class="form-control
																				<?php if (form_error('spentAmount')) {
																						echo 'is-invalid';
																					} else {
																						echo 'valid';
																					} ?>" value="<?php echo set_value('spentAmount'); ?>">
																				<div class="<?php if (form_error('spentAmount')) {
																											echo 'invalid-feedback';
																										} ?>">
																					<div><?php echo form_error('spentAmount'); ?></div>
																				</div>
																			</div>

																			<div class="col-12 mt-2">
																				<div class="form-group">
																					<label for="info"> Description <small class="text-danger">&ast;</small></label>
																					<textarea id="info" name="info" class="form-control" rows="4"><?php echo set_value('info'); ?></textarea>
																				</div>
																			</div>

																		</div>
																	</div>
																</div>

																<div class="col-12 col-lg-5">
																	<div class="form-group">
																		<input type="hidden" value="<?php echo $row['proName'] ?>" name="pName">
																		<label for="pName">Project Name</label>
																		<p><?php echo $row['proName'] ?></p>
																	</div>

																	<div class="form-group">
																		<div class="row">
																			<div class="col-12 col-lg-6">
																				<label for="lName">status</label>
																				<p><?php foreach ($project_status as $key => $value) {
																							if ($key == $row['projectStatus']) {
																								echo $value;
																							}
																						} ?></p>
																			</div>
																			<div class="col-12 col-lg-6">
																				<label for="lName">Client Company</label>
																				<p><?php echo $row['compName'] ?></p>
																			</div>
																		</div>
																	</div>

																	<div class="form-group">
																		<div class="row">
																			<div class="col-12 col-lg-6">
																				<label>Project Leader</label>
																				<p><small><i class="fa fa-user text-muted"></i>:</small> <?php echo $row['leader'] ?></p>
																				<p><small><i class="fa fa-phone text-muted"></i>:</small> <?php echo $row['phone'] ?></p>
																			</div>

																		</div>

																	</div>

																	<div class="form-group">
																		<!-- <div class="row"> -->

																		<p class="text-bold">Estimated Budget:
																			<span class="text-muted"><?php echo $row['budget'] ?></span> <small>Tsh</small>
																		</p>



																		<p class="text-bold">Estimated Duration:
																			<span class="text-muted"><?php echo $row['duration'] ?><small>(days)</small></span>
																		</p>

																		<!-- </div> -->
																	</div>
																</div>

															</div>
														</div>
													</div>

												<div class="row">
													<div class="col-12">
														<a href="<?php echo base_url('project'); ?>" class="btn btn-secondary">Cancel</a>
														<input type="submit" value="Submit" class="btn btn-success float-right">
													</div>

												</div>
											</form>


										</div>

										<div class="tab-pane" id="logs">
											<div class="col-12">
												<h4>All Transaction</h4>
												<?php if (!empty($activities) && $activities->num_rows() > 0) :
													foreach ($activities->result() as $act) : ?>
														<div class="post">
															<div class="user-block">
																<img class="img-circle img-bordered-sm" alt="user image" src="<?php echo base_url('assets/') ?>/media/avatars/<?php echo $this->session->userdata('userPic'); ?>">
																<span class="username">
																	<a href="<?php echo base_url('profile'); ?>"><?php echo $this->session->userdata('name'); ?></a>
																</span>
																<span class="description">Shared - <?php echo $act->spentOn; ?></span>
															</div>
															<!-- /.user-block -->
															<p> <?php echo $act->info; ?></p>
															<!-- <p><a href="#" class="link-black text-sm"><i class="fas fa-link mr-1"></i>File 1 v2</a></p> -->
														</div>
												<?php endforeach;
												endif; ?>
												<div class="post clearfix"></div>
											</div>
										</div>

										<div class="tab-pane" id="activity_table">
											<div class="col-12">
												<div class="card">
													<!-- <div class="card-header">
														<h3 class="card-title">DataTable with default features</h3>
													</div> -->
													<div class="card-body">
														<table id="activities_table" class="table table-striped">
															<thead>
																<tr>
																	<th>Budget ($)</th>
																	<th>spentAmount ($)</th>
																	<th>Purpose(s)</th>
																	<th>More</th>
																	<th>spentOn</th>
																</tr>
															</thead>
															<!-- budget spentAmount forWhat info spentOn -->
															<tbody>
																<?php foreach ($activities->result() as $act) : ?>
																	<tr>
																		<td><?php echo $act->budget; ?></td>
																		<td><?php echo $act->spentAmount; ?></td>
																		<td><?php echo $act->forWhat; ?></td>
																		<td><?php echo $act->info; ?></td>
																		<td><?php echo $act->spentOn; ?></td>
																	</tr>
																<?php endforeach; ?>

															</tbody>

														</table>
													</div>
												</div>
											</div>

										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
		</div>

		<?php $this->load->view('/shared/footer'); ?>
	</div>

	<!-- REQUIRED SCRIPTS -->
	<!-- jQuery -->
	<script src="<?php echo base_url('assets/'); ?>plugins/jquery/jquery.min.js"></script>
	<!-- Bootstrap -->
	<script src="<?php echo base_url('assets/'); ?>plugins/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Toastr -->
	<script src="<?php echo base_url('assets/'); ?>plugins/toastr/toastr.min.js"></script>

	<script src="<?php echo base_url('assets/'); ?>plugins/datatables/jquery.dataTables.min.js"></script>
	<script src="<?php echo base_url('assets/'); ?>plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
	<script src="<?php echo base_url('assets/'); ?>plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
	<script src="<?php echo base_url('assets/'); ?>plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
	<script src="<?php echo base_url('assets/'); ?>plugins/datatables-buttons/js/dataTables.buttons.min.js"></script>
	<script src="<?php echo base_url('assets/'); ?>plugins/datatables-buttons/js/buttons.bootstrap4.min.js"></script>
	<script src="<?php echo base_url('assets/'); ?>plugins/jszip/jszip.min.js"></script>
	<script src="<?php echo base_url('assets/'); ?>plugins/pdfmake/pdfmake.min.js"></script>
	<script src="<?php echo base_url('assets/'); ?>plugins/pdfmake/vfs_fonts.js"></script>
	<script src="<?php echo base_url('assets/'); ?>plugins/datatables-buttons/js/buttons.html5.min.js"></script>

	<!-- AdminLTE -->
	<script src="<?php echo base_url('assets/'); ?>dist/js/adminlte.js"></script>

	<!-- OPTIONAL SCRIPTS -->
	<script src="<?php echo base_url('assets/'); ?>plugins/chart.js/Chart.min.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="<?php echo base_url('assets/'); ?>dist/js/demo.js"></script>


	<script>
		$(document).ready(function() {
			var Toast = Swal.mixin({
				toast: true,
				position: 'top-end',
				showConfirmButton: false,
				timer: 3000
			});

		});

		function fetchChart() {
			$.ajax({
				url: "<?php echo base_url('project/'); ?>fetchDataSummary/" + <?php echo $this->uri->segment(3) ?>,
				type: "POST",
				cache: false,
				// dataType: "json",
				success: function(response) {
					data = JSON.parse(response);

					var datasets = [];
					var lables = [];

					if (data.length > 0) {
						// console.log(data);
						for (var key in data) {
							datasets.push(data[key]['spent']);

							var sup = (data[key]['noWeek'] == 2) ? data[key]['noWeek'] + 'nd' :
								(data[key]['noWeek'] == 3) ? data[key]['noWeek'] + 'rd' : data[key]['noWeek'] + 'th';
							lables.push(sup);
						}

						showBarGraph(datasets, lables);
					}

					if (data.length > 1) {
						showLineGraph(datasets, lables);
					}
				}
			})
		};

		fetchChart();
		'use strict'

		var ticksStyle = {
			fontColor: '#495057',
			fontStyle: 'bold'
		}

		var mode = '../../index'
		var intersect = true

		function showLineGraph(dataInput, lables) {
			var $visitorsChart = $('#spent-line-chart')
			// eslint-disable-next-line no-unused-vars
			var visitorsChart = new Chart($visitorsChart, {
				data: {
					labels: lables,
					datasets: [{
							type: 'line',
							data: dataInput,
							backgroundColor: 'transparent',
							borderColor: '#007bff',
							pointBorderColor: '#007bff',
							pointBackgroundColor: '#007bff',
							fill: false
							// pointHoverBackgroundColor: '#007bff',
							// pointHoverBorderColor    : '#007bff'
						},
						// {
						// 	type: 'line',
						// 	data: [60, 80, 70, 67, 80, 77, 100],
						// 	backgroundColor: 'tansparent',
						// 	borderColor: '#ced4da',
						// 	pointBorderColor: '#ced4da',
						// 	pointBackgroundColor: '#ced4da',
						// 	fill: false
						// 	// pointHoverBackgroundColor: '#ced4da',
						// 	// pointHoverBorderColor    : '#ced4da'
						// }
					]
				},
				options: {
					maintainAspectRatio: false,
					tooltips: {
						mode: mode,
						intersect: intersect
					},
					hover: {
						mode: mode,
						intersect: intersect
					},
					legend: {
						display: false
					},
					scales: {
						yAxes: [{
							// display: false,
							gridLines: {
								display: true,
								lineWidth: '4px',
								color: 'rgba(0, 0, 0, .2)',
								zeroLineColor: 'transparent'
							},
							ticks: $.extend({
								beginAtZero: true,

								// Include a dollar sign in the ticks
								callback: function(value) {
									if (value >= 1000000) {
										value /= 1000000
										value += 'M'
									} else if (value >= 1000) {
										value /= 1000
										value += 'k'
									}

									return '$' + value
								}
							}, ticksStyle)
						}],
						xAxes: [{
							display: true,
							gridLines: {
								display: false
							},
							ticks: ticksStyle
						}]
					}
				}
			})
		}

		function showBarGraph(dataInput, lables) {
			var $salesChart = $('#sales-chart')
			// eslint-disable-next-line no-unused-vars
			var salesChart = new Chart($salesChart, {
				type: 'bar',
				data: {
					labels: lables,
					// labels: ['JUN', 'JUL', 'AUG', 'SEP', 'OCT', 'NOV', 'DEC'],
					datasets: [{
							backgroundColor: '#007bff',
							borderColor: '#007bff',
							data: dataInput
						},
						// {
						// backgroundColor: '#ced4da',
						// borderColor: '#ced4da',
						// data: [700, 1700, 2700, 2000, 1800, 1500, 2000]
						// }
					]
				},
				options: {
					maintainAspectRatio: false,
					tooltips: {
						mode: mode,
						intersect: intersect
					},
					hover: {
						mode: mode,
						intersect: intersect
					},
					legend: {
						display: false
					},
					scales: {
						yAxes: [{
							// display: false,
							gridLines: {
								display: true,
								lineWidth: '4px',
								color: 'rgba(0, 0, 0, .2)',
								zeroLineColor: 'transparent'
							},
							ticks: $.extend({
								beginAtZero: true,

								// Include a dollar sign in the ticks
								callback: function(value) {
									if (value >= 1000000) {
										value /= 1000000
										value += 'M'
									} else if (value >= 1000) {
										value /= 1000
										value += 'k'
									}

									return '$' + value
								}
							}, ticksStyle)
						}],
						xAxes: [{
							display: true,
							gridLines: {
								display: false
							},
							ticks: ticksStyle
						}]
					}
				}
			})
		}

		var showImpurt = document.getElementById("showForm");
		showImpurt.style.display = "none";

		function showImpurt() {
			var x = document.getElementById("showImpurt");
			var showImpurt = document.getElementsByClassName("showImpurt")
			if (showImpurt.style.display === "none") {
				showImpurt.style.display = "block";
			} else {
				showImpurt.style.display = "none";
			}
		}



		$(function() {

			fetchProjectDocuments();


			$(document).on('click', '.dele_doc', function(e) {
				e.preventDefault();
				var doc_name = $(this).attr("value");
				var doc_id = $(this).attr("id");
				if (doc_id == "") {
					toastr.error('Document ID required')
				} else {
					$.ajax({
						url: "<?php echo base_url('delete_doc'); ?>",
						type: "POST",
						cache: false,
						dataType: "json",
						data: {
							doc_id: doc_id,
							doc_name: doc_name
						},
						success: function(data) {
							if (data.response == 'success') {
								$('.document_list').html("");
								fetchProjectDocuments();
								toastr.success('Document Deleted Successfully');
							} else {
								toastr.success(data.response)
							}
						}
					})
				}
			});

			$(document).on('click', '.showImpurt', function() {
				var showImpurt = document.getElementById("showForm")
				showImpurt.style.display = (showImpurt.style.display === "none") ? "block" : "none";
			});

			$('#showForm').on('submit', function(e) {
				e.preventDefault();
				if ($.trim($('.docName').val()).length === 0) {
					// error
					// alert('File input is Empty!!');
					toastr.error('Please Select File!')
				} else {
					$.ajax({
						method: "POST",
						url: "<?php echo base_url('project/'); ?>uploadDocument/" + <?php echo $this->uri->segment(3) ?>,
						data: new FormData(this),
						contentType: false,
						cache: false,
						processData: false,
						success: function(response) {
							info = JSON.parse(response);
							// console.log(info);
							if (info == true) {
								$('.document_list').html("");
								fetchProjectDocuments();
								$('.docName').val("");
								toastr.success('Document Uploaded successfully');
							} else {
								// console.log(response);
								toastr.warning(info.error);
							}
						}
					});
				}
			});

			$("#activities_table").DataTable({
				"responsive": true,
				"lengthChange": false,
				"autoWidth": false,
				"buttons": ["csv", "excel", "pdf"]
			}).buttons().container().appendTo('#activities_table_wrapper .col-md-6:eq(0)');

			function fetchProjectDocuments() {
				$.ajax({
					url: "<?php echo base_url('project/'); ?>fetchProjectDoc/" + <?php echo $this->uri->segment(3) ?>,
					type: "POST",
					cache: false,
					// dataType: "json",
					success: function(response) {
						data = JSON.parse(response);
						// console.log(data);

						if (data.length > 0) {
							$.each(data, function(key, value) {
								$('.document_list').val('');
								$('.document_list').append('<li> <div class="row"><div class="col-10">\
								<a href="<?php echo base_url(); ?>/assets/documents/' + value['path'] + '" class="btn-link text-secondary">' + returnIconAccordingly(value['docType']) + ' ' + value['path'] + '</a> </div><div class="col-2"><a class="dele_doc" id="' + value['ID'] + '" href="#" value="' + value['path'] + '"><i class="fa fa-trash pull-right text-danger" title="Delete File"></i></a></div>\
								</div></li>')
								// console.log(value['path']);
							});
						}
					}
				});
			}


			function returnIconAccordingly($type) {
				var icon_class = ($type == '.pdf') ? '<i class="far fa-fw fa-file-pdf"></i>' :
					(($type == '.doc' || $type == 'docx') ? '<i class="far fa-fw fa-file-word"></i>' :
						($type == '.png' || $type == '.jpeg' || $type == '.gif' || $type == '.jpg') ? '<i class="far fa-fw fa-image "></i>' : '<i class="far fa-fw fa-envelope"></i>');
				return icon_class;
			}
		});
	</script>
</body>

</html>