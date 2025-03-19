<?php require_once APPROOT . '/views/includes/header.php'; ?>

<div class="container mt-3">
    <div class="row">
        <div class="col-1"></div>
        <div class="col-10">
            <h3><?= $data['title']; ?></h3>
        </div>
        <div class="col-1"></div>
    </div>

    <!-- begin tabel bucketlist -->
    <div class="row">
        <div class="col-1"></div>
        <div class="col-10">
            <table class="table table-striped table-hover">
                <thead>
                    <tr>
                        <th scope="col">Activiteit</th>
                        <th scope="col">Locatie</th>
                        <th scope="col">Datum</th>
                        <th scope="col">Opmerking</th>
                    </tr>
                </thead>
                <tbody>
                    <?php foreach ($data['bucketlist'] as $item) : ?>
                        <tr>
                            <td><?= htmlspecialchars($item['Activiteit']); ?></td>
                            <td><?= htmlspecialchars($item['Locatie']); ?></td>
                            <td><?= htmlspecialchars($item['Datum']); ?></td>
                            <td><?= htmlspecialchars($item['Opmerking']); ?></td>
                        </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>
            <a href="<?= URLROOT; ?>/homepages/index">home</a>
        </div>
        <div class="col-1"></div>
    </div>
    <!-- einde tabel bucketlist -->

<?php require_once APPROOT . '/views/includes/footer.php'; ?>