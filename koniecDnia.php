<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <style>
        table{
            border-collapse: collapse;
        }
        td{
            border: 1px solid black;
            text-align: center;
        }
        thead{
            font-weight: bold;

        }
    </style>
</head>
<body>
    <h1>
        PROWIZJE DLA KELNERÓW
    </h1>
    <table>
        <thead>
            <tr>
                <td>
                    Kelner
                </td>
                <td>
                    Prowizja
                </td>
            </tr>
        </thead>
        <?php
            require_once "connect.php";
            $polaczenie = @new mysqli($host, $db_user, $db_password, $db_name);
            $polaczenie->set_charset("utf8");
            $wszyscyKelnerzy = $polaczenie->query("SELECT * FROM kelnerzy");
            $row = $wszyscyKelnerzy->fetch_array();
            while($row){
                echo "<tr>";
                echo "<td>";
                $nowNum = $row["id"];
                echo $row["imie"]." ".$row["nazwisko"];
                echo "</td>";
                echo "<td>";
                $zamowieniaZDzisiaj = $polaczenie->query("SELECT * FROM zamowienia WHERE dzis=1");
                $suma = 0;
                $row2 = $zamowieniaZDzisiaj->fetch_array();
                while($row2){
                    if($nowNum == $row2["kelner"]){
                        $suma = $suma + $row2["wartosc_zamowienia"];
                    }
                    $row2 = $zamowieniaZDzisiaj->fetch_array();
                }
                $prowizja = 0.1 * $suma;
                echo $prowizja."zł";
                echo "</td>";
                echo "</tr>";
                $row = $wszyscyKelnerzy->fetch_array();
            }
            $dzisiejsze = $polaczenie->query("SELECT * FROM zamowienia WHERE dzis=1");
            //print_r($dzisiejsze);
            $tablicaWszystkich = array();
            $row2 = $dzisiejsze->fetch_array();
            while($row2){
                array_push($tablicaWszystkich, $row2);
                $row2 = $dzisiejsze->fetch_array();
            }
            //print_r($tablicaWszystkich);
            $tablicaDodanych = array();
            $len = count($tablicaWszystkich);
            for($j=0; $j<$len; $j++){
                $iloscPowtorzen = 0;
                $mozliweZeSiePowtarza = $tablicaWszystkich[$j];
                $nazwa = "";
                for($i=0; $i<$len; $i++){
                    if($tablicaWszystkich[$i]["pizza_standardowa"] == 0 && $mozliweZeSiePowtarza["pizza_standardowa"] == 0){
                        if($tablicaWszystkich[$i]["skladnik1"] == $mozliweZeSiePowtarza["skladnik1"] && $tablicaWszystkich[$i]["skladnik2"] == $mozliweZeSiePowtarza["skladnik2"] && $tablicaWszystkich[$i]["skladnik3"] == $mozliweZeSiePowtarza["skladnik3"] && $tablicaWszystkich[$i]["skladnik4"] == $mozliweZeSiePowtarza["skladnik4"] && $tablicaWszystkich[$i]["skladnik5"] == $mozliweZeSiePowtarza["skladnik5"] && $tablicaWszystkich[$i]["skladnik6"] == $mozliweZeSiePowtarza["skladnik6"] && $tablicaWszystkich[$i]["skladnik7"] == $mozliweZeSiePowtarza["skladnik7"] && $tablicaWszystkich[$i]["skladnik8"] == $mozliweZeSiePowtarza["skladnik8"] && $tablicaWszystkich[$i]["skladnik9"] == $mozliweZeSiePowtarza["skladnik9"] && $tablicaWszystkich[$i]["skladnik10"] == $mozliweZeSiePowtarza["skladnik10"] && $tablicaWszystkich[$i]["skladnik11"] == $mozliweZeSiePowtarza["skladnik11"] && $tablicaWszystkich[$i]["skladnik12"] == $mozliweZeSiePowtarza["skladnik12"] && $tablicaWszystkich[$i]["skladnik13"] == $mozliweZeSiePowtarza["skladnik13"] && $tablicaWszystkich[$i]["skladnik14"] == $mozliweZeSiePowtarza["skladnik14"] && $tablicaWszystkich[$i]["skladnik15"] == $mozliweZeSiePowtarza["skladnik15"] && $tablicaWszystkich[$i]["skladnik16"] == $mozliweZeSiePowtarza["skladnik16"] && $tablicaWszystkich[$i]["skladnik17"] == $mozliweZeSiePowtarza["skladnik17"] && $tablicaWszystkich[$i]["skladnik18"] == $mozliweZeSiePowtarza["skladnik18"] && $tablicaWszystkich[$i]["skladnik19"] == $mozliweZeSiePowtarza["skladnik19"] && $tablicaWszystkich[$i]["skladnik20"] == $mozliweZeSiePowtarza["skladnik20"] && $tablicaWszystkich[$i]["skladnik_21"] == $mozliweZeSiePowtarza["skladnik_21"] && $tablicaWszystkich[$i]["skladnik_22"] == $mozliweZeSiePowtarza["skladnik_22"] && $tablicaWszystkich[$i]["skladnik_23"] == $mozliweZeSiePowtarza["skladnik_23"] && $tablicaWszystkich[$i]["skladnik_24"] == $mozliweZeSiePowtarza["skladnik_24"] && $tablicaWszystkich[$i]["skladnik_25"] == $mozliweZeSiePowtarza["skladnik_25"] && $tablicaWszystkich[$i]["skladnik_26"] == $mozliweZeSiePowtarza["skladnik_26"] && $tablicaWszystkich[$i]["skladnik_27"] == $mozliweZeSiePowtarza["skladnik_27"] && $tablicaWszystkich[$i]["skladnik_28"] == $mozliweZeSiePowtarza["skladnik_28"] && $tablicaWszystkich[$i]["skladnik_29"] == $mozliweZeSiePowtarza["skladnik_29"] && $tablicaWszystkich[$i]["skladnik_30"] == $mozliweZeSiePowtarza["skladnik_30"] && $tablicaWszystkich[$i]["skladnik_31"] == $mozliweZeSiePowtarza["skladnik_31"] && $tablicaWszystkich[$i]["skladnik_32"] == $mozliweZeSiePowtarza["skladnik_32"] && $tablicaWszystkich[$i]["skladnik_33"] == $mozliweZeSiePowtarza["skladnik_33"] && $tablicaWszystkich[$i]["skladnik_34"] == $mozliweZeSiePowtarza["skladnik_34"] && $tablicaWszystkich[$i]["skladnik_35"] == $mozliweZeSiePowtarza["skladnik_35"] && $tablicaWszystkich[$i]["skladnik_36"] == $mozliweZeSiePowtarza["skladnik_36"] && $tablicaWszystkich[$i]["skladnik_37"] == $mozliweZeSiePowtarza["skladnik_37"] && $tablicaWszystkich[$i]["skladnik_38"] == $mozliweZeSiePowtarza["skladnik_38"] && $tablicaWszystkich[$i]["skladnik_39"] == $mozliweZeSiePowtarza["skladnik_39"]){
                            $iloscPowtorzen += 1;
                            $imieH = $tablicaWszystkich[$i]["klient"];
                            $imie = $polaczenie->query("SELECT * FROM klienci WHERE id=$imieH");
                            $row = $imie->fetch_array();
                            $nazwa = $nazwa.$row["imie"];
                        }
                    }
                }
                if($iloscPowtorzen >= 3){
                    //echo "<br/>";
                    //echo $nazwa;
                    $len2 = count($tablicaDodanych);
                    $mozna = true;
                    for($i=0; $i<$len2; $i++){
                        if($tablicaDodanych[$i]["skladnik1"] == $mozliweZeSiePowtarza["skladnik1"] && $tablicaDodanych[$i]["skladnik2"] == $mozliweZeSiePowtarza["skladnik2"] && $tablicaDodanych[$i]["skladnik3"] == $mozliweZeSiePowtarza["skladnik3"] && $tablicaDodanych[$i]["skladnik4"] == $mozliweZeSiePowtarza["skladnik4"] && $tablicaDodanych[$i]["skladnik5"] == $mozliweZeSiePowtarza["skladnik5"] && $tablicaDodanych[$i]["skladnik6"] == $mozliweZeSiePowtarza["skladnik6"] && $tablicaDodanych[$i]["skladnik7"] == $mozliweZeSiePowtarza["skladnik7"] && $tablicaDodanych[$i]["skladnik8"] == $mozliweZeSiePowtarza["skladnik8"] && $tablicaDodanych[$i]["skladnik9"] == $mozliweZeSiePowtarza["skladnik9"] && $tablicaDodanych[$i]["skladnik10"] == $mozliweZeSiePowtarza["skladnik10"] && $tablicaDodanych[$i]["skladnik11"] == $mozliweZeSiePowtarza["skladnik11"] && $tablicaDodanych[$i]["skladnik12"] == $mozliweZeSiePowtarza["skladnik12"] && $tablicaDodanych[$i]["skladnik13"] == $mozliweZeSiePowtarza["skladnik13"] && $tablicaDodanych[$i]["skladnik14"] == $mozliweZeSiePowtarza["skladnik14"] && $tablicaDodanych[$i]["skladnik15"] == $mozliweZeSiePowtarza["skladnik15"] && $tablicaDodanych[$i]["skladnik16"] == $mozliweZeSiePowtarza["skladnik16"] && $tablicaDodanych[$i]["skladnik17"] == $mozliweZeSiePowtarza["skladnik17"] && $tablicaDodanych[$i]["skladnik18"] == $mozliweZeSiePowtarza["skladnik18"] && $tablicaDodanych[$i]["skladnik19"] == $mozliweZeSiePowtarza["skladnik19"] && $tablicaDodanych[$i]["skladnik20"] == $mozliweZeSiePowtarza["skladnik20"] && $tablicaDodanych[$i]["skladnik_21"] == $mozliweZeSiePowtarza["skladnik_21"] && $tablicaDodanych[$i]["skladnik_22"] == $mozliweZeSiePowtarza["skladnik_22"] && $tablicaDodanych[$i]["skladnik_23"] == $mozliweZeSiePowtarza["skladnik_23"] && $tablicaDodanych[$i]["skladnik_24"] == $mozliweZeSiePowtarza["skladnik_24"] && $tablicaDodanych[$i]["skladnik_25"] == $mozliweZeSiePowtarza["skladnik_25"] && $tablicaDodanych[$i]["skladnik_26"] == $mozliweZeSiePowtarza["skladnik_26"] && $tablicaDodanych[$i]["skladnik_27"] == $mozliweZeSiePowtarza["skladnik_27"] && $tablicaDodanych[$i]["skladnik_28"] == $mozliweZeSiePowtarza["skladnik_28"] && $tablicaDodanych[$i]["skladnik_29"] == $mozliweZeSiePowtarza["skladnik_29"] && $tablicaDodanych[$i]["skladnik_30"] == $mozliweZeSiePowtarza["skladnik_30"] && $tablicaDodanych[$i]["skladnik_31"] == $mozliweZeSiePowtarza["skladnik_31"] && $tablicaDodanych[$i]["skladnik_32"] == $mozliweZeSiePowtarza["skladnik_32"] && $tablicaDodanych[$i]["skladnik_33"] == $mozliweZeSiePowtarza["skladnik_33"] && $tablicaDodanych[$i]["skladnik_34"] == $mozliweZeSiePowtarza["skladnik_34"] && $tablicaDodanych[$i]["skladnik_35"] == $mozliweZeSiePowtarza["skladnik_35"] && $tablicaDodanych[$i]["skladnik_36"] == $mozliweZeSiePowtarza["skladnik_36"] && $tablicaDodanych[$i]["skladnik_37"] == $mozliweZeSiePowtarza["skladnik_37"] && $tablicaDodanych[$i]["skladnik_38"] == $mozliweZeSiePowtarza["skladnik_38"] && $tablicaDodanych[$i]["skladnik_39"] == $mozliweZeSiePowtarza["skladnik_39"]){
                            $mozna = false;
                            // $iloscPowtorzen += 1;
                            // $imieH = $tablicaWszystkich[$i]["klient"];
                            // $imie = $polaczenie->query("SELECT * FROM klienci WHERE id=$imieH");
                            // $row = $imie->fetch_array();
                            // $nazwa = $nazwa.$row["imie"];
                        }
                    }
                    if($mozna == true){
                        //echo "jest ok";
                        $s1 = $mozliweZeSiePowtarza["skladnik1"];
                        if(EMPTY($s1)){
                            $s1 = 0;
                        }
                        $s2 = $mozliweZeSiePowtarza["skladnik2"];
                        if(EMPTY($s2)){
                            $s2 = 0;
                        }
                        $s3 = $mozliweZeSiePowtarza["skladnik3"];
                        if(EMPTY($s3)){
                            $s3 = 0;
                        }
                        $s4 = $mozliweZeSiePowtarza["skladnik4"];
                        if(EMPTY($s4)){
                            $s4 = 0;
                        }
                        $s5 = $mozliweZeSiePowtarza["skladnik5"];
                        if(EMPTY($s5)){
                            $s5 = 0;
                        }
                        $s6 = $mozliweZeSiePowtarza["skladnik6"];
                        if(EMPTY($s6)){
                            $s6 = 0;
                        }
                        $s7 = $mozliweZeSiePowtarza["skladnik7"];
                        if(EMPTY($s7)){
                            $s7 = 0;
                        }
                        $s8 = $mozliweZeSiePowtarza["skladnik8"];
                        if(EMPTY($s8)){
                            $s8 = 0;
                        }
                        $s9 = $mozliweZeSiePowtarza["skladnik9"];
                        if(EMPTY($s9)){
                            $s9 = 0;
                        }
                        $s10 = $mozliweZeSiePowtarza["skladnik10"];
                        if(EMPTY($s10)){
                            $s10 = 0;
                        }
                        $s11 = $mozliweZeSiePowtarza["skladnik11"];
                        if(EMPTY($s11)){
                            $s11 = 0;
                        }
                        $s12 = $mozliweZeSiePowtarza["skladnik12"];
                        if(EMPTY($s12)){
                            $s12 = 0;
                        }
                        $s13 = $mozliweZeSiePowtarza["skladnik13"];
                        if(EMPTY($s13)){
                            $s13 = 0;
                        }
                        $s14 = $mozliweZeSiePowtarza["skladnik14"];
                        if(EMPTY($s14)){
                            $s14 = 0;
                        }
                        $s15 = $mozliweZeSiePowtarza["skladnik15"];
                        if(EMPTY($s15)){
                            $s15 = 0;
                        }
                        $s16 = $mozliweZeSiePowtarza["skladnik16"];
                        if(EMPTY($s16)){
                            $s16 = 0;
                        }
                        $s17 = $mozliweZeSiePowtarza["skladnik17"];
                        if(EMPTY($s17)){
                            $s17 = 0;
                        }
                        $s18 = $mozliweZeSiePowtarza["skladnik18"];
                        if(EMPTY($s18)){
                            $s18 = 0;
                        }
                        $s19 = $mozliweZeSiePowtarza["skladnik19"];
                        if(EMPTY($s19)){
                            $s19 = 0;
                        }
                        $s20 = $mozliweZeSiePowtarza["skladnik20"];
                        if(EMPTY($s20)){
                            $s20 = 0;
                        }
                        $s21 = $mozliweZeSiePowtarza["skladnik_21"];
                        if(EMPTY($s21)){
                            $s21 = 0;
                        }
                        $s22 = $mozliweZeSiePowtarza["skladnik_22"];
                        if(EMPTY($s22)){
                            $s22 = 0;
                        }
                        $s23 = $mozliweZeSiePowtarza["skladnik_23"];
                        if(EMPTY($s23)){
                            $s23 = 0;
                        }
                        $s24 = $mozliweZeSiePowtarza["skladnik_24"];
                        if(EMPTY($s24)){
                            $s24 = 0;
                        }
                        $s25 = $mozliweZeSiePowtarza["skladnik_25"];
                        if(EMPTY($s25)){
                            $s25 = 0;
                        }
                        $s26 = $mozliweZeSiePowtarza["skladnik_26"];
                        if(EMPTY($s26)){
                            $s26 = 0;
                        }
                        $s27 = $mozliweZeSiePowtarza["skladnik_27"];
                        if(EMPTY($s27)){
                            $s27 = 0;
                        }
                        $s28 = $mozliweZeSiePowtarza["skladnik_28"];
                        if(EMPTY($s28)){
                            $s28 = 0;
                        }
                        $s29 = $mozliweZeSiePowtarza["skladnik_29"];
                        if(EMPTY($s29)){
                            $s29 = 0;
                        }
                        $s30 = $mozliweZeSiePowtarza["skladnik_30"];
                        if(EMPTY($s30)){
                            $s30 = 0;
                        }
                        $s31 = $mozliweZeSiePowtarza["skladnik_31"];
                        if(EMPTY($s31)){
                            $s31 = 0;
                        }
                        $s32 = $mozliweZeSiePowtarza["skladnik_32"];
                        if(EMPTY($s32)){
                            $s32 = 0;
                        }
                        $s33 = $mozliweZeSiePowtarza["skladnik_33"];
                        if(EMPTY($s33)){
                            $s33 = 0;
                        }
                        $s34 = $mozliweZeSiePowtarza["skladnik_34"];
                        if(EMPTY($s34)){
                            $s34 = 0;
                        }
                        $s35 = $mozliweZeSiePowtarza["skladnik_35"];
                        if(EMPTY($s35)){
                            $s35 = 0;
                        }
                        $s36 = $mozliweZeSiePowtarza["skladnik_36"];
                        if(EMPTY($s36)){
                            $s36 = 0;
                        }
                        $s37 = $mozliweZeSiePowtarza["skladnik_37"];
                        if(EMPTY($s37)){
                            $s37 = 0;
                        }
                        $s38 = $mozliweZeSiePowtarza["skladnik_38"];
                        if(EMPTY($s38)){
                            $s38 = 0;
                        }
                        $s39 = $mozliweZeSiePowtarza["skladnik_39"];
                        if(EMPTY($s39)){
                            $s39 = 0;
                        }
                        $juzWBazie = $polaczenie->query("SELECT * FROM pizze_standardowe");
                        $row3 = $juzWBazie->fetch_array();
                        $z = 1;
                        while($row3){
                            $z = $row3["id"];
                            $row3 = $juzWBazie->fetch_array();
                        }
                        $z = $z + 1;
                        $polaczenie->query("INSERT INTO pizze_standardowe VALUES ($z,'$nazwa', $s1, $s2, $s3, $s4, $s5, $s6, $s7, $s8, $s9, $s10, $s11, $s12, $s13, $s14, $s15, $s16, $s17, $s18, $s19, $s20, $s21, $s22, $s23, $s24, $s25, $s26, $s27, $s28, $s29, $s30, $s31, $s32, $s33, $s34, $s35, $s36, $s37, $s38, $s39);");
                        //$polaczenie->query("INSERT INTO pizze_standardowe (nazwa) VALUES ('spoko')");
                        array_push($tablicaDodanych, $mozliweZeSiePowtarza);
                    }
                }
            }
            
            // echo "<br/>";
            // print_r ($mozliweZeSiePowtarza);
            $polaczenie->query("UPDATE zamowienia SET dzis=0 WHERE dzis=1");
        ?>
    </table>
    <a href="index.php">Powrót do zamawiania</a>
</body>
</html>