<?= $this->extend('layout/template'); ?>

<?= $this->section('content'); ?>
<div class="container">
    <div class="row">
        <div class="col">
            <h2 class="mt-2">Detail Komik <?= $komik['judul']; ?></h2>
            <div class="card mb-3">
                <div class="row no-gutters">
                    <div class="col-4 col-md-4 p-1">
                        <img src="/img/<?= $komik['sampul']; ?>" width="100%">
                    </div>
                    <div class="col-8 col-md-8">
                        <div class="card-body">
                            <h4 class="card-title"> <b>Judul Komik : </b> <?= $komik['judul']; ?></h3>
                                <p class="card-text"><b>penulis :</b> <?= $komik['penulis']; ?></p>
                                <p class="card-text"><b>Penerbit :</b> <?= $komik['penerbit']; ?></small></p>

                                <p class="card-text"><b>Deskripsi :</b> <br> <?= $komik['about']; ?></p>
                                <a href="/komik" class="btn btn-primary align-items-end">
                                    <i class="fa fa-arrow-left"></i>
                                    Kembali
                                </a>

                                <a href="/komik/edit/<?= $komik['slug']; ?>" class="btn btn-warning">
                                    <i class="fa fa-pencil-alt"></i>
                                    Ubah</a>

                                <form action="/komik/<?= $komik['id']; ?>" method="POST" class="d-inline">

                                    <?= csrf_field(); ?>

                                    <input type="hidden" name="_method" value="DELETE">

                                    <button type="submit" class="btn btn-danger" onclick="return confirm('data akan dihapus, apakah anda yakin ?');">
                                        <i class="fa fa-trash"></i>
                                        Hapus</button>
                                </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<?= $this->endSection(); ?>