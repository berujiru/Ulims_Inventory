<?php
/* @var $this ConsumptionsController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Consumptions',
);

$this->menu=array(
	array('label'=>'Create Consumptions', 'url'=>array('create')),
	array('label'=>'Manage Consumptions', 'url'=>array('admin')),
);
?>

<h1>Consumptions</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
