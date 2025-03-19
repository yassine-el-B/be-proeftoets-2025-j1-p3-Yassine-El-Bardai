<?php require_once APPROOT . '/views/includes/header.php'; ?>

<div class="container mt-3">
    <div class="row">
        <div class="col-1"></div>
        <div class="col-10">
            <h3><?= $data['title']; ?></h3>
        </div>
        <div class="col-1"></div>
    </div>

    <!-- begin tabel zangeressen -->
    <div class="row">
        <div class="col-1"></div>
        <div class="col-10">
            <table class="table table-striped table-hover">
                <thead>
                    <tr>
                        <th scope="col">Naam</th>
                        <th scope="col">Nettowaarde (miljoen)</th>
                        <th scope="col">Land</th>
                        <th scope="col">Mobiel</th>
                        <th scope="col">Leeftijd</th>
                    </tr>
                </thead>
                <tbody>
                    <?php foreach ($data['zangeressen'] as $zangeres) : ?>
                        <tr>
                            <td><?= htmlspecialchars($zangeres['Naam']); ?></td>
                            <td><?= htmlspecialchars($zangeres['Nettowaarde']); ?></td>
                            <td><?= htmlspecialchars($zangeres['Land']); ?></td>
                            <td><?= htmlspecialchars($zangeres['Mobiel']); ?></td>
                            <td><?= htmlspecialchars($zangeres['Leeftijd']); ?></td>
                        </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>
            <a href="<?= URLROOT; ?>/homepages/index">home</a>
        </div>
        <div class="col-1"></div>
    </div>
    <!-- einde tabel zangeressen -->

<?php require_once APPROOT . '/views/includes/footer.php'; ?>