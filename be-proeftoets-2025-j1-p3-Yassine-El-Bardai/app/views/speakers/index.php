<?php require_once APPROOT . '/views/includes/header.php'; ?>

<div class="container mt-3">
    <div class="row">
        <div class="col-1"></div>
        <div class="col-10">
            <h3><?= $data['title']; ?></h3>
        </div>
        <div class="col-1"></div>
    </div>

    <!-- begin tabel speakers -->
    <div class="row">
        <div class="col-1"></div>
        <div class="col-10">
            <table class="table table-striped table-hover">
                <thead>
                    <tr>
                        <th scope="col">Naam</th>
                        <th scope="col">Batterijduur</th>
                        <th scope="col">Waterbestendigheid</th>
                        <th scope="col">Connectiviteit</th>
                    </tr>
                </thead>
                <tbody>
                    <?php foreach ($data['speakers'] as $speaker) : ?>
                        <tr>
                            <td><?= htmlspecialchars($speaker['Naam']); ?></td>
                            <td><?= htmlspecialchars($speaker['Batterijduur']); ?></td>
                            <td><?= htmlspecialchars($speaker['Waterbestendigheid']); ?></td>
                            <td><?= htmlspecialchars($speaker['Connectiviteit']); ?></td>
                        </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>
            <a href="<?= URLROOT; ?>/homepages/index">home</a>
        </div>
        <div class="col-1"></div>
    </div>
    <!-- einde tabel speakers -->

<?php require_once APPROOT . '/views/includes/footer.php'; ?>