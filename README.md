
<h1 align="center">

<img src="https://img.shields.io/static/v1?label=GUARDIAN%20POR&message=Bates&color=7159c1&style=flat-square&logo=ghost"/>

<h3> <p align="center">GUARDIAN</p> </h3>

<h3> <p align="center"> ================= </p> </h3>

>> <h3> Resume </h3>
-----
<p> This is a bash script that allows you to protect a directory with a password and username. It can be executed by passing the path of the directory to be protected as an argument. The script displays help and error messages if the user executes it improperly.</p>

<p> After getting the user's information, the script checks to see if the specified directory exists and, if so, creates a configuration file with the user-supplied information. It also sends an email to the user-provided email address confirming the protection of the directory.
</p>

>> <h3> How install </h3>

1. Make sure you have Bash installed on your machine.

2. Download the ```guardian.sh``` file to your machine.

3. Open a terminal and navigate to the folder where you downloaded the ```guardian.sh``` file.

4. Give the ```guardian.sh``` file execute permissions using the following command: ```chmod +x guardian.sh```.

5. Run the script using the following command: ```./guardian.sh <diretório>```.

6. Follow the instructions presented by the script to provide your name, email and password.

7. Wait for the script to finish protecting the directory and send a confirmation email.

8. Check that the directory has been secured correctly and that you have received the confirmation email.


>> <h3> How Works </h3>

```
----------- HELP GUIDE ----------------------------------------------------------------------------

Usage: ./guardian.sh <directory>

Protect your directory with username and password

Options:
  -h, --help    Show this help message and exit.

--------------------------------------------------------------------------------------------------
```
    