<div class="col-md-12">
  <div class="card card-outline card-primary">
    <div class="card-header">
      <h3 class="card-title">Data <?= $judul ?></h3>
      <div class="card-tools">
        <button type="button" class="btn btn-primary btn-flat btn-sm" data-toggle="modal" data-target="#modal-sm">
          <i class="fas fa-plus"></i> Add
        </button>
      </div>

    </div>
    <div class="card-body">

      <?php
      if (session()->getFlashdata('pesan')) {
        echo '<div class="alert alert-success alert-dismissible">
    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
    <h5><i class="icon fas fa-check"></i>';
        echo session()->getFlashdata('pesan');
        echo '</h5></div>';
      }
      ?>


      <table class="table table-bordered">
        <thead>
          <tr class="text-center">
            <th width="50px">NO</th>
            <th>Nama Penerbit</th>
            <th width="100px">Action</th>
          </tr>
        </thead>
        <tbody>
          <?php $no = 1;
          foreach ($penerbit as $key => $value) { ?>
            <tr>
              <td><?= $no++ ?>.</td>
              <td><?= $value['nama_penerbit'] ?></td>
              <td>
                <button type="button" class="btn btn-warning btn-flat btn-sm" data-toggle="modal" data-target="#modal-edit<?= $value['id_penerbit'] ?>">
                  <i class="fas fa-edit"></i>
                </button>
                <button type="button" class="btn btn-danger btn-flat btn-sm" data-toggle="modal" data-target="#modal-delete<?= $value['id_penerbit'] ?>">
                  <i class="fas fa-trash"></i>
                </button>
              </td>
            </tr>
          <?php } ?>
        </tbody>
      </table>
    </div>
  </div>
</div>

<!-- Modal Add -->
<div class="modal fade" id="modal-sm">
  <div class="modal-dialog modal-sm">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title">Tambah <?= $judul ?></h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <?php echo form_open(base_url('Penerbit/AddData')) ?>
        <div class="form-group">
          <label>Nama Penerbit</label>
          <input class="form-control" name="nama_penerbit" placeholder="Nama Penerbit" required>
        </div>
      </div>
      <div class="modal-footer justify-content-between">
        <button type="button" class="btn btn-default btn-flat" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-warning btn-flat">Simpan</button>
      </div>
      <?php echo form_close() ?>
    </div>
    <!-- /.modal-content -->
  </div>
  <!-- /.modal-dialog -->
</div>

<!-- Modal Edit -->
<?php foreach ($penerbit as $key => $value) { ?>
  <div class="modal fade" id="modal-edit<?= $value['id_penerbit'] ?>">
    <div class="modal-dialog modal-sm">
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title">Edit <?= $judul ?></h4>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <?php echo form_open(base_url('Penerbit/EditData/' . $value['id_penerbit'])) ?>
          <div class="form-group">
            <label>Nama Penerbit</label>
            <input class="form-control" value="<?= $value['nama_penerbit'] ?>" name="nama_penerbit" placeholder="Nama Penerbit" required>
          </div>
        </div>
        <div class="modal-footer justify-content-between">
          <button type="button" class="btn btn-default btn-flat" data-dismiss="modal">Close</button>
          <button type="submit" class="btn btn-primary btn-flat">Update</button>
        </div>
        <?php echo form_close() ?>
      </div>
      <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
  </div>
<?php } ?>

<!-- Modal Delete -->
<?php foreach ($penerbit as $key => $value) { ?>
  <div class="modal fade" id="modal-delete<?= $value['id_penerbit'] ?>">
    <div class="modal-dialog modal-sm">
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title">Hapus Data</h4>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <?php echo form_open(base_url('Penerbit/DeleteData/' . $value['id_penerbit'])) ?>
          <div class="form-group">
            Apakah Anda Ingin Menghapus <b><?= $value['nama_penerbit'] ?></b> ?
          </div>
          <div class="modal-footer justify-content-between">
            <button type="button" class="btn btn-default btn-flat" data-dismiss="modal">Close</button>
            <button type="submit" class="btn btn-danger btn-flat">Delete</button>
          </div>
          <?php echo form_close() ?>
        </div>
        <!-- /.modal-content -->
      </div>
      <!-- /.modal-dialog -->
    </div>
  </div>
<?php } ?>