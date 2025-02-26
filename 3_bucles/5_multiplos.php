<?php
    echo "<table border='1'>";

for ($i = 1; $i <=300; $i++) {
    if ($i %3== 0) {
        echo "<tr>
        <td>$i</td>
    </tr>";
   
    }
}
echo "</table>";