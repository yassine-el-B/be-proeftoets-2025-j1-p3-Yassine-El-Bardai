<?php require_once APPROOT . '/views/includes/header.php'; ?>

<div class="container mt-3">
    <div class="row">
        <div class="col-1"></div>
        <div class="col-10">
            <h3><?= $data['title']; ?></h3>
        </div>
        <div class="col-1"></div>
    </div>

    <!-- begin tabel vulkanen -->
    <div class="row">
        <div class="col-1"></div>
        <div class="col-10">
            <table class="table table-striped table-hover">
                <thead>
                    <tr>
                        <th scope="col">Naam</th>
                        <th scope="col">Hoogte (m)</th>
                        <th scope="col">Land</th>
                        <th scope="col">Jaar Laatste Uitbarsting</th>
                        <th scope="col">Aantal Slachtoffers</th>
                        <th scope="col">Actief</th>
                        <th scope="col">Opmerking</th>
                    </tr>
                </thead>
                <tbody>
                    <?php foreach ($data['vulkanen'] as $vulkaan) : ?>
                        <tr>
                            <td><?= htmlspecialchars($vulkaan['Naam']); ?></td>
                            <td><?= htmlspecialchars($vulkaan['Hoogte']); ?></td>
                            <td><?= htmlspecialchars($vulkaan['Land']); ?></td>
                            <td><?= htmlspecialchars($vulkaan['JaarLaatsteUitbarsting']); ?></td>
                            <td><?= htmlspecialchars($vulkaan['AantalSlachtoffers']); ?></td>
                            <td><?= $vulkaan['IsActief'] ? 'Ja' : 'Nee'; ?></td>
                            <td><?= htmlspecialchars($vulkaan['Opmerking'] ?? 'Geen'); ?></td>
                        </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>
            <a href="<?= URLROOT; ?>/homepages/index">home</a>
        </div>
        <div class="col-1"></div>
    </div>
    <!-- einde tabel vulkanen -->

<?php require_once APPROOT . '/views/includes/footer.php'; ?>