<?= $this->extend('layout/template'); ?>

<?= $this->section('content'); ?>

<div class="container">
    <div class="row">
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered">
                    <div class="col-12 col-md-12 col-lg-12">

                        <div class="d-sm-flex align-items-center justify-content-between mb-4">
                            <h1 style="font-weight: bold; color:black;"><?= $title; ?></h1>
                            <a href="/komik/create" class="btn btn-primary">
                                <i class="fas fa-plus fa-sm text-white-50"></i>
                                Tambah Data Komik
                            </a>
                        </div>


                        <?php if (session()->getFlashdata('pesan')) : ?>
                            <div class="alert alert-success" role="alert">
                                <?= session()->getFlashdata('pesan'); ?>
                            </div>
                        <?php endif; ?>

                        <thead>
                            <tr>
                                <th width="100px" class="text-center">No.</th>
                                <th width="400px" class="text-center">Sampul</th>
                                <th width="400px" class="text-center">Judul</th>
                                <th width="200px" class="text-center">Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php $i = 1; ?>
                            <?php foreach ($komik as $k) : ?>

                                <tr>
                                    <th scope="row" class="text-center"><?= $i++; ?></th>

                                    <td class="text-center">
                                        <img src="/img/<?= $k['sampul']; ?>" class="sampul img-thumbnail" style="width: 150px">
                                    </td>

                                    <td class="text-center">
                                        <h5>
                                            <?= $k['judul']; ?>
                                        </h5>
                                    </td>

                                    <td class="text-center">
                                        <a href="/komik/<?= $k['slug']; ?>" class="btn btn-success">
                                            <i class="fa fa-eye"></i>
                                            Detail</a>
                                    </td>
                                </tr>
                            <?php endforeach; ?>
                        </tbody>
                    </div>
                </table>
            </div>

        </div>

    </div>
</div>


<?= $this->endSection(); ?>