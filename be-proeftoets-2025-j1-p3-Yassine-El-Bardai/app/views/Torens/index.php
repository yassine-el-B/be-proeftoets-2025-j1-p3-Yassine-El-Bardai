<?php require_once APPROOT . '/views/includes/header.php'; ?>

<div class="container mt-3">
    <div class="row">
        <div class="col-1"></div>
        <div class="col-10">
            <h3><?= $data['title']; ?></h3>
        </div>
        <div class="col-1"></div>
    </div>

    <!-- begin tabel torens -->
    <div class="row">
        <div class="col-1"></div>
        <div class="col-10">
            <table class="table table-striped table-hover">
                <thead>
                    <tr>
                        <th scope="col">Naam</th>
                        <th scope="col">Locatie</th>
                        <th scope="col">Hoogte</th>
                        <th scope="col">Aantal Verdiepingen</th>
                        <th scope="col">Jaar Voltooid</th>
                    </tr>
                </thead>
                <tbody>
                    <?php foreach ($data['torens'] as $toren) : ?>
                        <tr>
                            <td><?= htmlspecialchars($toren['Naam']); ?></td>
                            <td><?= htmlspecialchars($toren['Locatie']); ?></td>
                            <td><?= htmlspecialchars($toren['Hoogte']); ?></td>
                            <td><?= htmlspecialchars($toren['AantalVerdiepingen']); ?></td>
                            <td><?= htmlspecialchars($toren['JaarVoltooid']); ?></td>
                        </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>
            <a href="<?= URLROOT; ?>/homepages/index">home</a>
        </div>
        <div class="col-1"></div>
    </div>
    <!-- einde tabel torens -->

<?php require_once APPROOT . '/views/includes/footer.php'; ?>