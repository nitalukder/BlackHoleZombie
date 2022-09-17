Write-Host "`n`tActions List`n`t--- --- --- --- --- ---`n`tDefault: Delete Items Only`n`tPress 1: Show Items Only`n`tPress 2: Show then Delete`n`tPress 0: Exit TheBlackHoleZombie`n"

# Input Strings
$confused = "What to do?"
$warning = "Confirm Delete? [0 to Cancel]"

# Alert Expressions
$waiting = "`nHurry Up! I can't wait`n`n"
$missed = "`nOpps! Missed Out`n`n"

$act = Read-Host "$confused"
switch ($act) {

    (2) {
        & 'Scripts\check.ps1'
        Write-Host "$waiting"

        $con = Read-Host "$warning"
        switch($con) {

            (0) {
                & 'Scripts\cancel.ps1'
            }

            default {
                & 'Scripts\clean.ps1'
            }

        }

    }

    (1) {
        & 'Scripts\check.ps1'
        Write-Host "$missed"
    }

    (0) {
        & 'Scripts\cancel.ps1'
    }

    default {
        & 'Scripts\clean.ps1'
    }

}
