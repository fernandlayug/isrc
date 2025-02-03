<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Administrator</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <style>
        body {
            display: flex;
            height: 100vh;
        }
        .sidebar {
            width: 250px;
            background-color: #343a40;
            color: #fff;
            padding: 15px;
        }
        .sidebar a {
            color: #fff;
            text-decoration: none;
            display: block;
            padding: 10px;
            border-radius: 5px;
            margin-bottom: 10px;
        }
        .sidebar a:hover {
            background-color: #495057;
        }
    </style>
</head>
<body>
    <?php
    session_start();
    require '../db.php';

    if (!isset($_SESSION['id']) || $_SESSION['usertype'] !== 'admin') {
        echo "Access denied. Only admins can access this page.";
        exit;
    }

    $stmt = $pdo->query("SELECT * FROM tbluser");
    $users = $stmt->fetchAll(PDO::FETCH_ASSOC);

    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        if (isset($_POST['add_user'])) {
            $id = $_POST['username'];
            $username = $_POST['username'];
            $password = $_POST['password'];
            $usertype = $_POST['usertype'];
            $firstname = $_POST['firstname'];
            $lastname = $_POST['lastname'];
            $department = $_POST['department'];

            $stmt = $pdo->prepare("INSERT INTO tbluser (id, username, password, usertype, firstname, lastname, department) VALUES (?, ?, ?, ?, ?, ?, ?)");
            $stmt->execute([$id, $username, $password, $usertype, $firstname, $lastname, $department]);
            echo "<div class='alert alert-success'>User added successfully.</div>";
            header('Refresh: 0');
        } elseif (isset($_POST['delete_user'])) {
            $user_id = $_POST['id'];

            $stmt = $pdo->prepare("DELETE FROM tbluser WHERE id = ?");
            $stmt->execute([$user_id]);
            echo "<div class='alert alert-success'>User deleted successfully.</div>";
            header('Refresh: 0');
        } elseif (isset($_POST['reset_password'])) {
            $user_id = $_POST['id'];
            $new_password = "12345678";

            $stmt = $pdo->prepare("UPDATE tbluser SET password = ? WHERE id = ?");
            $stmt->execute([$new_password, $user_id]);
            echo "<div class='alert alert-success'>Password reset successfully.</div>";
            header('Refresh: 0');
        } elseif (isset($_POST['edit_user'])) {
            $user_id = $_POST['id'];
            $new_username = $_POST['username'];
            $new_firstname = $_POST['firstname'];

            $stmt = $pdo->prepare("UPDATE tbluser SET username = ? WHERE id = ?");
            $stmt->execute([$new_username, $user_id]);
            echo "<div class='alert alert-success'>User updated successfully.</div>";
            header('Refresh: 0');
        }
    }
    ?>

    <div class="sidebar">
        <h5>Administrator</h5>
        <p>Welcome, <?php echo htmlspecialchars($_SESSION['username']); ?>!</p>
        <a href="#viewPayslip">View Payslip</a>
        <a href="logout.php" class="text-danger">Logout</a>
    </div>

    
    <div class="container-fluid p-4">
        <!-- Move the Add User Form here, above the table -->
        <div id="addUser" class="mb-4">
            <h2>Add User</h2>
            <form method="post" class="mb-3">
                <div class="row">
                    <div class="col-md-4 mb-3">
                        <label for="firstname" class="form-label">First Name</label>
                        <input type="text" id="firstname" name="firstname" class="form-control" required>
                    </div>
                    <div class="col-md-4 mb-3">
                        <label for="lastname" class="form-label">Last Name</label>
                        <input type="text" id="lastname" name="lastname" class="form-control" required>
                    </div>
                    <div class="col-md-4 mb-3">
                        <label for="department" class="form-label">Department</label>
                        <select id="department" name="department" class="form-select" required>
                            <option value="Administrator">Administrator</option>
                            <option value="Elementary">Elementary</option>
                            <option value="Junior HS">Junior HS</option>
                            <option value="Senior HS">Senior HS</option>
                            <option value="College">College</option>
                        </select>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4 mb-3">
                        <label for="username" class="form-label">Employee ID</label>
                        <input type="text" id="username" name="username" class="form-control" required>
                    </div>
                    <div class="col-md-4 mb-3">
                        <label for="password" class="form-label">Password</label>
                        <input type="password" id="password" name="password" class="form-control" required>
                    </div>
                    <div class="col-md-4 mb-3">
                        <label for="usertype" class="form-label">Usertype</label>
                        <select id="usertype" name="usertype" class="form-select" required>
                            <option value="admin">Admin</option>
                            <option value="user">User</option>
                        </select>
                    </div>
                </div>
                <button type="submit" name="add_user" class="btn btn-success">Add User</button>
            </form>
        </div>

    <div class="container-fluid p-4">
        <h2>User List</h2>
        <table class="table table-bordered table-striped">
            <thead class="table-dark">
                <tr>
                    <th>Employee ID</th>
                    <th>Lastname</th>
                    <th>Firstname</th>
                    <th>Department</th>
                    <th>UserType</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($users as $user): ?>
                    <tr>
                        <td><?php echo htmlspecialchars($user['id']); ?></td>
                        <td><?php echo htmlspecialchars($user['lastname']); ?></td>
                        <td><?php echo htmlspecialchars($user['firstname']); ?></td>
                        <td><?php echo htmlspecialchars($user['department']); ?></td>
                        <td><?php echo htmlspecialchars($user['usertype']); ?></td>
                        <td>
                            <form method="post" style="display:inline;">
                                <input type="hidden" name="id" value="<?php echo $user['id']; ?>">
                                <button type="submit" name="reset_password" class="btn btn-warning btn-sm">Reset Password</button>
                            </form>
                            <button class="btn btn-primary btn-sm edit-user-btn" 
                                    data-id="<?php echo $user['id']; ?>" 
                                    data-username="<?php echo htmlspecialchars($user['username']); ?>">
                                Edit
                            </button>
                            <form method="post" style="display:inline;">
                                <input type="hidden" name="id" value="<?php echo $user['id']; ?>">
                                <button type="submit" name="delete_user" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure you want to delete this user?');">Delete</button>
                            </form>
                        </td>
                    </tr>
                <?php endforeach; ?>
            </tbody>
        </table>

       

    <!-- Edit User Modal -->
    <div class="modal fade" id="editUserModal" tabindex="-1" aria-labelledby="editUserModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="editUserModalLabel">Edit User</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form id="editUserForm" method="post">
                        <input type="hidden" id="editUserId" name="id">
                        <div class="mb-3">
                            <label for="editUsername" class="form-label">Employee ID</label>
                            <input type="text" id="editUsername" name="username" class="form-control" required>

                            <label for="editFirstname" class="form-label">Firstname</label>
                            <input type="text" id="editFirstname" name="firstname" class="form-control" required>

                            <label for="editLastname" class="form-label">Lastname</label>
                            <input type="text" id="editLastname" name="lastname" class="form-control" required>

                            <label for="editDepartment" class="form-label">Department</label>
                            <label for="department" class="form-label">Department</label>
                                    <select id="department" name="department" class="form-select" required>
                                        <option value="Administrator">Administrator</option>
                                        <option value="Elementary">Elementary</option>
                                        <option value="Junior HS">Junior HS</option>
                                        <option value="Senior HS">Senior HS</option>
                                        <option value="College">College</option>
                                    </select>
                    </div>

                            <label for="editUsertype" class="form-label">User Type</label>
                            <select id="usertype" name="usertype" class="form-select" required>
                            <option value="admin">Admin</option>
                            <option value="user">User</option>
                             </select>
                        </div>
                        <button type="submit" name="edit_user" class="btn btn-success">Update</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <script>
        $(document).ready(function () {
            // Open modal and populate form with user data
            $('.edit-user-btn').on('click', function () {
                const userId = $(this).data('id');
                const username = $(this).data('username');

                $('#editUserId').val(userId);
                $('#editUsername').val(username);

                $('#editUserModal').modal('show');
            });
        });
    </script>
</body>
</html>
