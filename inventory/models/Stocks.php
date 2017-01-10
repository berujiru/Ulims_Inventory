<?php

/**
 * This is the model class for table "stocks".
 *
 * The followings are the available columns in table 'stocks':
 * @property integer $id
 * @property string $stockID
 * @property integer $supplyID
 * @property string $name
 * @property string $description
 * @property string $manufacturer
 * @property string $unit
 * @property double $quantity
 * @property string $daterecieved
 * @property string $dateopened
 * @property string $expiry_date
 * @property integer $recieved_by
 * @property integer $threshold_limit
 * @property string $location
 * @property string $batch_number
 * @property integer $supplierID
 * @property double $amount
 */
class Stocks extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'stocks';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('stockID, supplyID, name, description, manufacturer, unit, quantity, daterecieved, dateopened, expiry_date, recieved_by, threshold_limit, location, batch_number, supplierID, amount', 'required'),
			array('supplyID, recieved_by, threshold_limit, supplierID', 'numerical', 'integerOnly'=>true),
			array('quantity, amount', 'numerical'),
			array('stockID', 'length', 'max'=>50),
			array('name, description, manufacturer, unit, location, batch_number', 'length', 'max'=>255),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, stockID, supplyID, name, description, manufacturer, unit, quantity, daterecieved, dateopened, expiry_date, recieved_by, threshold_limit, location, batch_number, supplierID, amount', 'safe', 'on'=>'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations()
	{
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'stockID' => 'Stock',
			'supplyID' => 'Supply',
			'name' => 'Name',
			'description' => 'Description',
			'manufacturer' => 'Manufacturer',
			'unit' => 'Unit',
			'quantity' => 'Quantity',
			'daterecieved' => 'Daterecieved',
			'dateopened' => 'Dateopened',
			'expiry_date' => 'Expiry Date',
			'recieved_by' => 'Recieved By',
			'threshold_limit' => 'Threshold Limit',
			'location' => 'Location',
			'batch_number' => 'Batch Number',
			'supplierID' => 'Supplier',
			'amount' => 'Amount',
		);
	}

	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 *
	 * Typical usecase:
	 * - Initialize the model fields with values from filter form.
	 * - Execute this method to get CActiveDataProvider instance which will filter
	 * models according to data in model fields.
	 * - Pass data provider to CGridView, CListView or any similar widget.
	 *
	 * @return CActiveDataProvider the data provider that can return the models
	 * based on the search/filter conditions.
	 */
	public function search()
	{
		// @todo Please modify the following code to remove attributes that should not be searched.

		$criteria=new CDbCriteria;

		$criteria->compare('id',$this->id);
		$criteria->compare('stockID',$this->stockID,true);
		$criteria->compare('supplyID',$this->supplyID);
		$criteria->compare('name',$this->name,true);
		$criteria->compare('description',$this->description,true);
		$criteria->compare('manufacturer',$this->manufacturer,true);
		$criteria->compare('unit',$this->unit,true);
		$criteria->compare('quantity',$this->quantity);
		$criteria->compare('daterecieved',$this->daterecieved,true);
		$criteria->compare('dateopened',$this->dateopened,true);
		$criteria->compare('expiry_date',$this->expiry_date,true);
		$criteria->compare('recieved_by',$this->recieved_by);
		$criteria->compare('threshold_limit',$this->threshold_limit);
		$criteria->compare('location',$this->location,true);
		$criteria->compare('batch_number',$this->batch_number,true);
		$criteria->compare('supplierID',$this->supplierID);
		$criteria->compare('amount',$this->amount);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	public function searchbysupply($id)
	{
		// @todo Please modify the following code to remove attributes that should not be searched.

		$criteria=new CDbCriteria;
		$criteria->condition='supplyID ='.$id;
		$criteria->compare('id',$this->id);
		$criteria->compare('stockID',$this->stockID,true);
		// $criteria->compare('supplyID',$this->supplyID);
		$criteria->compare('name',$this->name,true);
		$criteria->compare('description',$this->description,true);
		$criteria->compare('manufacturer',$this->manufacturer,true);
		$criteria->compare('unit',$this->unit,true);
		$criteria->compare('quantity',$this->quantity);
		$criteria->compare('daterecieved',$this->daterecieved,true);
		$criteria->compare('dateopened',$this->dateopened,true);
		$criteria->compare('expiry_date',$this->expiry_date,true);
		$criteria->compare('recieved_by',$this->recieved_by);
		$criteria->compare('threshold_limit',$this->threshold_limit);
		$criteria->compare('location',$this->location,true);
		$criteria->compare('batch_number',$this->batch_number,true);
		$criteria->compare('supplierID',$this->supplierID);
		$criteria->compare('amount',$this->amount);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * @return CDbConnection the database connection used for this class
	 */
	public function getDbConnection()
	{
		return Yii::app()->inventoryDb;
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return Stocks the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
