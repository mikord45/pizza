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
        PODSUMOWANIE ZAMÓWIENIA
    </h1>
    <table>
        <thead>
            <tr>
                <td>
                    Zamawiający
                </td>
                <td>
                    Stolik
                </td>
                <td>
                    Kelner
                </td>
                <td>
                    Wielkość pizzy
                </td>
                <td>
                    Standardowa
                </td>
                <td>
                    Rodzaj pizzy
                </td>
                <td>
                    Składniki wchodzące w skład pizzy
                </td>   
                <td>
                    Wartość
                </td>
            </tr>
        </thead>
        <tr>
            <?php
                require_once "connect.php";
                $polaczenie = @new mysqli($host, $db_user, $db_password, $db_name);
                $polaczenie->set_charset("utf8");
                $identyfikatorKlienta = $_POST["kli"];
                $hKlient = $polaczenie->query("SELECT * FROM klienci WHERE id=$identyfikatorKlienta");
                $klient = $hKlient->fetch_array();
                echo "<td>";
                echo $klient["imie"]." ".$klient["nazwisko"];
                echo "</td>";
                echo "<td>";
                $identyfikatorStolika = $_POST["sto"];
                $rekordStolika = $polaczenie->query("SELECT * FROM stoliki WHERE id=$identyfikatorStolika");
                $row = $rekordStolika->fetch_array();
                echo $row["nazwa"];
                echo "</td>";
                echo "<td>";
                $identyfikatorKelnera = $_POST["kel"];
                $hKelner = $polaczenie->query("SELECT * FROM kelnerzy WHERE id=$identyfikatorKelnera");
                $row = $hKelner->fetch_array();
                $kelner = $row["imie"]." ".$row["nazwisko"];
                echo $kelner;
                echo "</td>";
                echo "<td>";
                echo $_POST["rozm"];
                echo "</td>";
                if($_POST["stan"] != 100){
                    echo "<td>";
                    echo "TAK";
                    echo "</td>"; 
                }
                else{
                    echo "<td>";
                    echo "NIE";
                    echo "</td>"; 
                }
                if($_POST["stan"] == 100){
                    echo "<td>";
                    echo "Niestandardowa";
                    echo "</td>";
                }
                else{
                    $identyfikatorPizzy = $_POST["stan"];
                    echo $identyfikatorPizzy;
                    $wybranaPizza = $polaczenie->query("SELECT * FROM pizze_standardowe WHERE id=$identyfikatorPizzy");
                    $row = $wybranaPizza->fetch_array();
                    $nazwaPizzy = $row["nazwa"];
                    echo "<td>";
                    echo $nazwaPizzy;
                    echo "</td>";
                }
                if($_POST["stan"] != 100){
                    echo "<td>";
                    $rekordWybranejPizzyStandardowej = $polaczenie->query("SELECT * FROM pizze_standardowe WHERE id=$identyfikatorPizzy");
                    $row = $rekordWybranejPizzyStandardowej->fetch_array();
                    $dodatki = array();
                    //print_r($row);
                    $j = 1;
                    $nazwaPrzeszukiwanejKolumny = "skladnik_".$j;
                    //echo $nazwaPrzeszukiwanejKolumny;
                    while($row[$nazwaPrzeszukiwanejKolumny] != null && $row[$nazwaPrzeszukiwanejKolumny] != 0){
                        //echo $row[$nazwaPrzeszukiwanejKolumny];
                        $id = $row[$nazwaPrzeszukiwanejKolumny];
                        //echo $id;
                        $hNazwa = $polaczenie->query("SELECT * FROM dodatki_do_pizzy WHERE ID=$id");
                        $nazwa = $hNazwa->fetch_array();
                        array_push($dodatki, $nazwa);
                        echo $nazwa["NAZWA"];
                        echo "<br/>";
                        $j = $j + 1;
                        $nazwaPrzeszukiwanejKolumny = "skladnik_".$j;
                    }
                    echo "</td>"; 
                    echo "<td>";
                    //print_r($dodatki);
                    $cena = 0;
                    $len = count($dodatki);
                    for($k=0; $k<$len; $k++){
                       $now = $dodatki[$k];
                       if($_POST["rozm"] == "mala"){
                           $cena = $cena + $now["na_malej"];
                       }
                       else if($_POST["rozm"] == "srednia"){
                            $cena = $cena + $now["na_sredniej"];
                       }
                       else{
                            $cena = $cena + $now["na_duzej"];
                       }
                    }
                    $rabat = 0.2 * $cena;
                    $cena = $cena - $rabat;
                    echo $cena;
                    echo "</td>";
                }
                else{
                    echo "<td>";
                    $tablicaWybranychDodatkow = array();
                    for($i=1; $i<40; $i++){
                        $currentName = "dod".$i;
                        if(isset($_POST[$currentName])){
                            $now = $polaczenie->query("SELECT * FROM dodatki_do_pizzy WHERE ID=$i");
                            $row = $now->fetch_array();
                            array_push($tablicaWybranychDodatkow, $row);
                            echo $row["NAZWA"];
                            echo "<br/>";
                        }
                    }
                    echo "</td>";
                    echo "<td>";
                    $cena = 0;
                    $len = count($tablicaWybranychDodatkow);
                    for($k=0; $k<$len; $k++){
                       $now2 = $tablicaWybranychDodatkow[$k];
                       if($_POST["rozm"] == "mala"){
                           $cena = $cena + $now2["na_malej"];
                       }
                       else if($_POST["rozm"] == "srednia"){
                            $cena = $cena + $now2["na_sredniej"];
                       }
                       else{
                            $cena = $cena + $now2["na_duzej"];
                       }
                    }
                    echo $cena;
                    echo "</td>";
                }
                $kelner = $_POST["kel"];
                $klient = $_POST["kli"];
                $stolik = $_POST["sto"];
                if($_POST["stan"] == 100){
                    $std = 0;
                    $tabOfNames = array();
                    $len = count($tablicaWybranychDodatkow);
                    for($n=0; $n<$len; $n++){
                       $now2 = $tablicaWybranychDodatkow[$n];
                       $now2Name = $now2["NAZWA"];
                       array_push($tabOfNames, $now2Name);
                    }
                    //print_r($tabOfNames);
                    $len2 = count($tabOfNames);
                    $tabOfIds = array();
                    for($m=0; $m<$len2; $m++){
                        $hNowName2 = $tabOfNames[$m];
                        //echo $hNowName2;
                        $hName2 = $polaczenie->query("SELECT * FROM dodatki_do_pizzy WHERE NAZWA="."'"."$hNowName2"."'".";");
                        //print_r($hName2);
                        $row = $hName2->fetch_array();
                        $name2 = $row["ID"];
                        array_push($tabOfIds, $name2);
                        //echo $name2;
                    }
                    //print_r($tabOfIds);
                    $len3 = count($tabOfIds);
                    $values = "";
                    $fields = "skladnik1";
                    for($i =0; $i<$len3; $i++){
                        if($values == ""){
                            $values = $values.$tabOfIds[$i];
                        }
                        else{
                            $values = $values.",".$tabOfIds[$i];    
                        }
                        if($i>0){
                            $nowNumber = $i + 1;
                            $nowSkladnik = "skladnik".$nowNumber;
                            $fields = $fields.",".$nowSkladnik;
                        }
                    }
                    //echo $fields;
                    $polaczenie->query("INSERT INTO zamowienia (kelner, klient, stolik, pizza_standardowa, wartosc_zamowienia, $fields) VALUES ($kelner, $klient, $stolik, $std, $cena, $values);");
                }
                else{
                    $std = 1;
                    $stdName = $_POST["stan"];
                    $polaczenie->query("INSERT INTO zamowienia (kelner, klient, stolik, pizza_standardowa, nazwa_pizzy_standardowej, wartosc_zamowienia) VALUES ($kelner, $klient, $stolik, $std, $stdName, $cena);");
                }
            ?>
        </tr>
    </table>
    <a href="index.php">Powrót do zamawiania</a>
</body>
</html>