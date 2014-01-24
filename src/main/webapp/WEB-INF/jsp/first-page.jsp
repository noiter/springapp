<html ng-app="certificateInfo">
<head>
    <title>Certificate</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/bootstrap-responsive.min.css">
    <script src="js/common/angular.min.js"></script>
    <script src="js/common/bootstrap.min.js"></script>
    <script src="js/common/ui-bootstrap-tpls-0.7.0.min.js"></script>
</head>
<body ng-controller="VehicleCtrl">
<div class="span3">
    <h4>This page is used to capture vehicle details ...</h4>
</div>
<div class="span6">
    <div>
        <label>Insurance class</label>
        <select type="text" width="20px" height="10px" ng-model="certificate.insuranceClass"
                ng-change="insuranceCLassChanged()">
            <option value="-1">Select</option>
            <option ng-repeat="insuranceClass in insuranceClasses"></option>
        </select>
    </div>
    <div ng-show="isGvmShown">
        <label>Gross vehicle mass over 50t?</label>
        <input type="radio" name="vehicleGvm" ng-model="certificate.gvm" ng-disabled="isGvmDefaulted">Yes</input>
        <input type="radio" name="vehicleGvm" ng-model="certificate.gvm" ng-disabled="isGvmDefaulted">No</input>
    </div>
</div>
<div class="span3">
    <h4>If you have any question, please contact us ...</h4>
</div>
</body>
</html>