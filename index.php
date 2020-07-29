<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>PIZZA</title>
    <style>
        #wysylanie{
            margin-top: 10px;
        }
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
        #special{
            pointer-events: none;
        }
    </style>
</head>
<body>
    <h1>PIZZERIA</h1>
    <form method="post" action="podsumowanieZamowienia.php">
    <label>
        Kelner: 
    </label>
    <select name="kel">
     <?php
        require_once "connect.php";
        $polaczenie = @new mysqli($host, $db_user, $db_password, $db_name);
        $polaczenie->set_charset("utf8");
        $kelnerzy = $polaczenie->query("SELECT * FROM kelnerzy");
        $row = $kelnerzy->fetch_array();
        $i=1;
        while($row){
            //echo $row["imie"];
            $imieINazwisko = $row["imie"]." ".$row["nazwisko"];
            //echo $imieINazwisko;
            echo "<option value=".$i.">".$imieINazwisko."</option>";
            //echo "<br>";
            $i = $i + 1;
            $row = $kelnerzy->fetch_array(); 
        }
     ?>
    </select>
    <br/>
    <label>
        Klient: 
    </label>
    <select name="kli">
     <?php
        // $polaczenie = @new mysqli($host, $db_user, $db_password, $db_name);
        // $polaczenie->set_charset("utf8");
        $klienci = $polaczenie->query("SELECT * FROM klienci");
        $row = $klienci->fetch_array();
        $i=1;
        while($row){
            $imieINazwisko = $row["imie"]." ".$row["nazwisko"];
            echo "<option value=".$i.">".$imieINazwisko."</option>";
            $i = $i + 1;
            $row = $klienci->fetch_array(); 
        }
     ?>
    </select>
    <br/>
    <label>
        Stolik: 
    </label>
    <select name="sto">
     <?php
        // $polaczenie = @new mysqli($host, $db_user, $db_password, $db_name);
        // $polaczenie->set_charset("utf8");
        $stoliki = $polaczenie->query("SELECT * FROM stoliki");
        $row = $stoliki->fetch_array();
        $i=1;
        while($row){
            echo "<option value=".$i.">".$row["nazwa"]."</option>";
            $i = $i + 1;
            $row = $stoliki->fetch_array(); 
        }
     ?>
    </select>
    <br/>
    <label>
        Pizza standardowa:
    </label>
    <select name="stan">
     <?php
        
        echo "<option value="."100".">"."Niestandardowa"."</option>";
        // $polaczenie = @new mysqli($host, $db_user, $db_password, $db_name);
        // $polaczenie->set_charset("utf8");
        $standard = $polaczenie->query("SELECT * FROM pizze_standardowe");
        $row = $standard->fetch_array();
        $i=1;
        while($row){
            echo "<option value=".$i.">".$row["nazwa"]."</option>";
            $i = $i + 1;
            $row = $standard->fetch_array(); 
        }
     ?>
    </select>
    <br/>
    <label>
        Rozmiar pizzy:
    </label>
    <select name="rozm">
        <option value="mala">
            Mała
        </option>
        <option value="srednia">
            Średnia
        </option>
        <option value="duza">
            Duża
        </option>
    </select>
    <br/>
    <table>
        <thead>
            <tr>
                <td>
                    Nazwa dodatku
                </td>
                <td>
                    Mała
                </td>
                <td>
                    Średnia
                </td>
                <td>
                    Duża
                </td>
                <td>
                    Dodaj do pizzy
                </td>
            </tr>
        </thead>
        <?php
        $jedenDodatek = $polaczenie->query("SELECT * FROM dodatki_do_pizzy");
        $row = $jedenDodatek->fetch_array();
        $i = 1;
        while($row){
            if($i != 1){
                echo "<tr>";
                echo "<td>";
                echo $row["NAZWA"];
                echo "</td>";
                echo "<td>";
                echo $row["na_malej"]."zł";
                echo "</td>";
                echo "<td>";
                echo $row["na_sredniej"]."zł";
                echo "</td>";
                echo "<td>";
                echo $row["na_duzej"]."zł";
                echo "</td>";
                echo "<td>";
                $j = $i - 1;
                $name = "dod".$j;
                if($i == 2){
                    echo "<input type='checkbox' name=$name value='dodano' checked id='special'>";
                }
                else{
                    echo "<input type='checkbox' name=$name value='dodano'>";
                }
                echo "</td>";
                echo "</tr>";
                $i = $i + 1;
                $row = $jedenDodatek->fetch_array();
            }
            else{
                $i = $i + 1;
                $row = $jedenDodatek->fetch_array();
            }
        }  
        ?>
    </table>

    <input type="submit" id="wysylanie">
    </form>
    <a href="koniecDnia.php">Zakończ dzień</a>
</body>
</html>