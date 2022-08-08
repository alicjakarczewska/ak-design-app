# README #

Portal supporting the provision of graphic services and training for young graphic designers

### Quick summary ###

Django web application that combines creating, presenting and selling graphic work with offering articles and courses for people who want to become graphic designers.

### UI design project ###

https://www.behance.net/gallery/124127171/Web-application-for-graphic-designers-UI

### Main elements of the portal ###

* online courses
* presentation of graphic services
* instant messenger for discussing and fulfilling orders
* blog with posts about computer graphics
* gallery of graphic works
* a management panel for the portal administrator

### Technologies ###

* Django – Python-based web framework 
* Bootstrap
* SQLite (locally) => changed finally to PostgreSQL
* Heroku

### Deployment ###

The application was deployed through Heroku => https://ak-design.herokuapp.com/

You can log in to the application using administrator or regular user credentials. It is also possible to set up your own account.

1) Admin
* Login: admin123
* Password (reversed, without spaces): 3 2 1 o l s a h

2) Regular User
* Login: milena
* Password (reversed, without spaces): 4 3 2 1 o l s a H

### How to run the application ###

[PL] DjangoApplication/instrukcja_instalacji.txt

Installation of Python 3.8.1 or higher is required.

1. Run the command prompt and change to the directory with the application's source files.
```
cd <directory name>
```

2. Then select and activate the virtual environment by entering the command:
```
myvenv\Scripts\activate
```

3. Install the required extensions and libraries.
This can be done with the command:
```
pip install -r requirements.txt
```

4. To start the development server, use the command:
```
python manage.py runserver
```

5. Open http://127.0.0.1:8000/ (localhost: 8000) in your browser to view the application.

