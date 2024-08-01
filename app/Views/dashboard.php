<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />

  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />

  <!-- CSS -->
  <link rel="stylesheet" href="css/dashboard.css">

  <!-- Akhir CSS -->

  <!-- Icons -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css" />
  <!-- Akhir Icons -->

  <a href="./admin/process_login.php"></a>

  <title>portofolio saya</title>
</head>

<body id="home">
  <!-- Navbar -->
  <nav class="navbar navbar-expand-lg navbar-light fixed-top" style="background-color: #ffffff">
    <div class="container">
      <a class="navbar-brand" href="#">Muhamad Padli Haikal</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ms-auto">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="#home">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#about">About</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#projects">Project</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#contact">Contact</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
  <!-- End Navbar -->

  <!-- Jumbotron -->
  <section class="jumbotron  text-center style=" background-color: #f3f4f5">
    <img src="<?= base_url('images/kotak.jpg') ?>" class="profile-image" alt="Padli Haikal" />
    <h1 class="display-4 text-center">Muhamad Padli Haikal</h1>
    <p class=" lead fs-3 text-center">Web Developer Enthusiast</p>
    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320">
      <path fill="#fff203" fill-opacity="1" d="M0,128L48,154.7C96,181,192,235,288,240C384,245,480,203,576,170.7C672,139,768,117,864,106.7C960,96,1056,96,1152,101.3C1248,107,1344,117,1392,122.7L1440,128L1440,320L1392,320C1344,320,1248,320,1152,320C1056,320,960,320,864,320C768,320,672,320,576,320C480,320,384,320,288,320C192,320,96,320,48,320L0,320Z"></path>
    </svg>
  </section>
  <!-- Akhir Jumbotron -->

  <!-- Halaman About -->
  <section id="about">
    <div class="container">
      <div class="row justify-content-center mb-3">
        <div class="col-5 text-center">
          <h2>About Me</h2>
        </div>
      </div>
      <div class="row justify-content-around fs-5">
        <div class="col-md-5">
          <p>
            Saya adalah seorang programmer fresh graduate yang berfokus pada pembuatan website, membuat web pribadi merupakan hal yang saya kerjakan ketika waktu luang. Etika dan kejujuran selalu saya terapkan dimanapun, terbiasa
            menganalisa, bisa bekerja sendiri maupun secara tim, memiliki kemampuan komunikasi yang baik dan mampu bekerja dibawah tekanan
          </p>
        </div>
        <div class="col-md-5">
          <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Veritatis facere temporibus deleniti, alias ullam commodi quas provident doloremque modi ut debitis dolorum ratione eius voluptas amet ipsam accusamus cum optio?</p>
        </div>
      </div>
    </div>
    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320">
      <path fill="#fff203" fill-opacity="1" d="M0,288L48,272C96,256,192,224,288,197.3C384,171,480,149,576,165.3C672,181,768,235,864,250.7C960,267,1056,245,1152,250.7C1248,256,1344,288,1392,304L1440,320L1440,320L1392,320C1344,320,1248,320,1152,320C1056,320,960,320,864,320C768,320,672,320,576,320C480,320,384,320,288,320C192,320,96,320,48,320L0,320Z"></path>
    </svg>
  </section>
  <!-- Akhir About -->

  <!-- Projects -->
  <section id="projects">
    <div class="container">
      <div class="row">
        <div class="col text-center">
          <h2>My Projects</h2>
        </div>
      </div>
      <div class="row-projects">
        <div class="col-md-6 mb-4">
          <div class="card">
            <img src="<?= base_url('images/1.jpg') ?>" class="card-img-top" alt="projects 1" />
            <div class="card-body">
              <p class="card-text">INI ADALAH PROJECT FROZEEN FOOD</p>
            </div>
          </div>
        </div>
        <div class="col-md-6 mb-4">
          <div class="card">
            <img src="<?= base_url('images/2.jpg') ?>" class="card-img-top" alt="projects 2" />
            <div class="card-body">
              <p class="card-text">INI ADALAH PROJECT RESTAURANT</p>
            </div>
          </div>
        </div>
      </div>
    </div>
    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320">
      <path fill="#f3f4f5" fill-opacity="1" d="M0,96L48,112C96,128,192,160,288,165.3C384,171,480,149,576,165.3C672,181,768,235,864,229.3C960,224,1056,160,1152,128C1248,96,1344,96,1392,96L1440,96L1440,320L1392,320C1344,320,1248,320,1152,320C1056,320,960,320,864,320C768,320,672,320,576,320C480,320,384,320,288,320C192,320,96,320,48,320L0,320Z"></path>
    </svg>
  </section>
  <!-- Akhir Projects -->

  <!-- Contact -->
  <section id="contact">
    <div class="container">
      <div class="row text-center mb-2">
        <div class="col">
          <h2>Contact Me</h2>
        </div>
      </div>
    </div>
    <div class="row justify-content-center">
      <div class="col-md-6">
        <form onsubmit="return checkRegistration()" method="POST" action="dashboard.php">
          <div class="mb-3">
            <label for="email" class="form-label">Email</label>
            <input type="email" class="form-control" id="email" name="email" aria-describedby="email" required />
          </div>
          <div class="mb-3">
            <label for="pesan" class="form-label">Pesan</label>
            <textarea class="form-control" id="pesan" name="message" rows="3" required></textarea>
          </div>
          <button type="submit" class="btn btn-primary">Kirim</button>
        </form>
      </div>
    </div>
  </section>
  <!-- Akhir Contact -->

  <!-- Footer -->
  <footer class="text-center">
    <p>
      Created With
      <i class="bi bi-heart-fill text-danger"></i>
      by <a href="https://www.instagram.com/padlihhaikal/" class="text-dark fw-bolder">Muhamad Padli Haikal</a>
    </p>
  </footer>
  <!-- Akhir Footer -->

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>

</html>