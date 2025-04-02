<?php require_once APPROOT . '/views/includes/header.php'; ?>

<!-- Voor het centreren van de container gebruiken we het bootstrap grid -->
<div class="container">
    <div class="row mt-3">

        <div class="col-2"></div>

        <div class="col-8">

            <h3><?php echo $data['title']; ?></h3>

            <a href="<?= URLROOT; ?>/smartphones/index">Overzicht smartphones</a> |
            <a href="<?= URLROOT; ?>/sneakers/index">Mooiste sneakers</a> | 
            <a href="<?= URLROOT; ?>/horloges/index">Duurste Horloges</a> | 
            <a href="<?= URLROOT; ?>/zangeres/index">Rijkste Zangeressen</a> |
            <a href="<?= URLROOT; ?>/speakers/index">Overzicht van Speakers</a>
            <a href="<?= URLROOT; ?>/Torens/index">Overzicht van Torens</a>
            <a href="<?= URLROOT; ?>/Bucketlist/index">Bucketlist als ik 30 wordt</a>
            <a href="<?= URLROOT; ?>/Vulkaan/index">Actiefste Vulkanen</a>
        </div>
        
        <div class="col-2"></div>
        
    </div>

</div>

<?php require_once APPROOT . '/views/includes/footer.php'; ?>