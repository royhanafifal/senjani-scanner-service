<?php
defined('BASEPATH') or exit('No direct script access allowed');
?>
<div class="main-sidebar sidebar-style-2">
	<aside id="sidebar-wrapper">
		<div class="sidebar-brand">
			<a href="<?php echo base_url(); ?>admin"><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Logo_Universitas_Brawijaya.svg/1200px-Logo_Universitas_Brawijaya.svg.png" width="12%" alt=""> BRAIN Apps</a>
		</div>
		<div class="sidebar-brand sidebar-brand-sm text-center">
			<a href="<?php echo base_url(); ?>admin"><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Logo_Universitas_Brawijaya.svg/1200px-Logo_Universitas_Brawijaya.svg.png" class="w-50" alt=""></a>
		</div>
		<ul class="sidebar-menu">
			<!-- dashboard -->
			<li class="menu-header">Dashboard</li>
			<?php $segment = $this->uri->segment(2) ?>
			<li class="<?php echo $segment == '' || $segment == 'index' ? 'active' : ''; ?>"><a class="nav-link" href="<?php echo base_url(); ?>admin"><i class="fas fa-home"></i> <span>Dashboard</span></a></li>

			<li onclick="logout()"><a class="nav-link" href="#"> <i class="fas fa-sign-out-alt"></i> <span>Logout</span></a></li>
		</ul>
	</aside>
</div>
<script>
	let logout = () => {
		konfirmasi("keluar dari sistem Brawijaya Research and Innovation.").then((willLogout) => {
			if (willLogout)
				window.location.replace('<?= base_url() . 'admin/logout' ?>')
		})
	}
</script>