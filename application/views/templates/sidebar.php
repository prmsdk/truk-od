<div class="classic-grid">
			<!-- Sidebar -->
			<div class="sidebar sidebar-style-2">			
				<div class="sidebar-wrapper scrollbar scrollbar-inner">
					<div class="sidebar-content">
						<div class="user">
							<div class="info">
								<a data-toggle="collapse" href="#collapseExample" aria-expanded="true">
									<span>
										<span class="text-capitalize"><?= $this->session->userdata("nama_user");?></span>
										<!-- <span class="caret"></span> -->
									</span>
								</a>
								<div class="clearfix"></div>

								<!-- <div class="collapse in" id="collapseExample">
									<ul class="nav">
										<li>
											<a href="#profile">
												<span class="link-collapse">My Profile</span>
											</a>
										</li>
										<li>
											<a href="#edit">
												<span class="link-collapse">Edit Profile</span>
											</a>
										</li>
										<li>
											<a href="#settings">
												<span class="link-collapse">Settings</span>
											</a>
										</li>
									</ul>
								</div> -->
							</div>
						</div>
						<ul class="nav nav-primary">
						<?php if($this->session->userdata('ujicoba') == 'true'){?>
							<li class="nav-item <?=$navParent == 'welcome' ? 'active' : ''?>">
									<a href="<?=base_url("welcome")?>">
										<i class="fa fa-home"></i>
										<p>Dashboard</p>
									</a>
								</li>
							<li class="nav-item <?=$navParent == 'images_test' ? 'active' : ''?>">
								<a href="<?=base_url("images_test")?>">
									<i class="fa fa-image"></i>
									<p>Image Test</p>
								</a>
							</li>
						<?php }else{?>
							<?php if($this->session->userdata('id_user') == 2){?>
								<li class="nav-item <?=$navParent == 'welcome' ? 'active' : ''?>">
									<a href="<?=base_url("welcome")?>">
										<i class="fa fa-home"></i>
										<p>Dashboard</p>
									</a>
								</li>
								<li class="nav-item <?=$navParent == 'validate' ? 'active' : ''?>">
									<a href="<?=base_url("validate")?>">
										<i class="fa fa-tasks"></i>
										<p>Validasi</p>
									</a>
								</li>
							<?php }else{?>
								<li class="nav-item <?=$navParent == 'welcome' ? 'active' : ''?>">
									<a href="<?=base_url("welcome")?>">
										<i class="fa fa-home"></i>
										<p>Dashboard</p>
									</a>
								</li>
								<li class="nav-item <?=$navParent == 'images' ? 'active' : ''?>">
									<a href="<?=base_url("images")?>">
										<i class="fa fa-image"></i>
										<p>Images Train</p>
									</a>
								</li>
								<li class="nav-item <?=$navParent == 'images_test' ? 'active' : ''?>">
									<a href="<?=base_url("images_test")?>">
										<i class="fa fa-image"></i>
										<p>Image Test</p>
									</a>
								</li>
								<li class="nav-item <?=$navParent == 'weight' ? 'active' : ''?>">
									<a href="<?=base_url("weight")?>">
										<i class="fa fa-chart-bar"></i>
										<p>Training LVQ</p>
									</a>
								</li>
								<li class="nav-item <?=$navParent == 'tester' ? 'active' : ''?>">
									<a href="<?=base_url("tester")?>">
										<i class="fa fa-user"></i>
										<p>User/Tester</p>
									</a>
								</li>
								<li class="nav-item <?=$navParent == 'validate' ? 'active' : ''?>">
									<a href="<?=base_url("validate")?>">
										<i class="fa fa-tasks"></i>
										<p>Validasi</p>
									</a>
								</li>
							<?php }?>
						<?php }?>
						</ul>
					</div>
				</div>
			</div>
			<!-- End Sidebar -->
