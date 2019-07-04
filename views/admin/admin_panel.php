<?php
    if (isset($_SESSION["user"]) && $_SESSION["user"]->role == 1):
        $users = $connection->query("SELECT * FROM user");
        $future_games = $connection->query("SELECT * FROM future_games");
        $games = $connection->query("SELECT * FROM boardgame");
?>
    <div id="admin_panel">

        <div id="left_panel">
            <ul>
                <li><button type="button" id="userz" class="btn btn-danger">Users</button></li>
                <li><button type="button" id="future_gamez" class="btn btn-danger">Future Games</button></li>
                <li><button type="button" id="gamez" class="btn btn-danger">Games</button></li>
                <li><button type="button" id="add_user" class="btn btn-danger">Add User</button></li>
                <li><button type="button" id="add_future_game" class="btn btn-danger">Add Future Game</button></li>
                <li><button type="button" id="add_game" class="btn btn-danger">Add Game</button></li>
            </ul>
        </div>

        <!-- SPLIT -->

        <div id="right_panel">

            <div id="users_pane" class="hidden_div">
                <?php 
                if ($users) { 
                    echo "<table>";
                    echo "<tr><th>Username: </th><th>Email: </th><th>First Name:&nbsp;&nbsp;</th><th>Last Name:&nbsp;&nbsp;</th><th>Role:&nbsp;&nbsp;</th><th>Edit: </th><th>Delete: </th></tr>";
                    while($user = $users->fetch_object()){ 
                        echo "<tr><td>$user->username</td><td>$user->email</td><td>$user->first_name</td><td>$user->last_name</td><td>$user->role</td><td><a href='http://localhost/aninsajt/index.php?page=edit&type=1&id=$user->id_u' class='btn btn-danger'>Edit</a></td><td><button type='button' id='$user->id_u' class='del_user btn btn-danger'>x</button></td></tr>";
                    }
                    echo "</table>";
                }
                ?>
            </div>
            <br/><br/><br/>
            <div id="future_games_pane" class="hidden_div">
                <?php 
                if ($future_games) { 
                    echo "<table>";
                    echo "<tr><th>Name: </th><th>Description:&nbsp;&nbsp;</th><th>Image:&nbsp;&nbsp;</th><th>Edit: </th><th>Delete: </th></tr>";
                    while($future_game = $future_games->fetch_object()){ 
                        echo "<tr><td>$future_game->name</td><td>$future_game->description</td><td>$future_game->image</td><td><a href='http://localhost/aninsajt/index.php?page=edit&type=2&id=$future_game->id_fg' class='btn btn-danger'>Edit</a></td><td><button type='button' id='$future_game->id_fg' class='del_future_game btn btn-danger'>x</button></td></tr>";
                    }
                    echo "</table>";
                }
                ?>
            </div>
            <br/><br/><br/>
            <div id="games_pane" class="hidden_div">
                <?php 
                if ($games) { 
                    echo "<table>";
                    echo "<tr><th>Name: </th><th>Description:&nbsp;&nbsp;</th><th>Image:&nbsp;&nbsp;</th><th>Price:&nbsp;&nbsp;</th><th>Players:&nbsp;&nbsp;</th><th>Edit: </th><th>Delete: </th></tr>";
                    while($game = $games->fetch_object()){ 
                        echo "<tr><td>$game->name</td><td>$game->description</td><td>$game->image</td><td>$game->price</td><td>$game->players</td><td><a href='http://localhost/aninsajt/index.php?page=edit&type=3&id=$game->id_bg' class='btn btn-danger'>Edit</a></td><td><button type='button' id='$game->id_bg' class='del_game btn btn-danger'>x</button></td></tr>";
                    }
                    echo "</table>";
                }
                ?>
            </div>

            <div id="add_user_pane" class="hidden_div">
                <h1>Add User</h1>
                <form action="http://localhost/aninsajt/modules/add.php" method="POST">
                    <label>Username</label>
                    <input type="text" name="username" class="form-control"/><br/>
                    <label>Email</label>
                    <input type="text" name="email" class="form-control"/><br/>
                    <label>First Name</label>
                    <input type="text" name="first_name" class="form-control"/><br/>
                    <label>Last Name</label>
                    <input type="text" name="last_name" class="form-control"/><br/>
                    <label>Password</label>
                    <input type="password" name="password" class="form-control"/><br/>
                    <label>Role</label>
                    <input type="text" name="role" class="form-control"/><br/>
                    <input type="hidden" value="user" name="type"/>
                    <input type="submit" value="Add" name="send"/>
                </form>
            </div>

            <div id="add_future_game_pane" class="hidden_div">
                <h1>Add Future Game</h1>
                <form action="http://localhost/aninsajt/modules/add.php" method="POST">
                    <label>Name</label>
                    <input type="text" name="name" class="form-control"/><br/>
                    <label>Description</label>
                    <textarea name="description" class="form-control"></textarea><br/>
                    <label>Image</label>
                    <input type="text" name="image" class="form-control"/><br/>
                    <input type="hidden" value="future_game" name="type"/>
                    <input type="submit" value="Add" name="send"/>
                </form>
            </div>

            <div id="add_game_pane" class="hidden_div">
                <h1>Add Game</h1>
                <form action="http://localhost/aninsajt/modules/add.php" method="POST">
                    <label>Name</label>
                    <input type="text" name="name" class="form-control"/><br/>
                    <label>Description</label>
                    <textarea name="description" class="form-control"></textarea><br/>
                    <label>Image</label>
                    <input type="text" name="image" class="form-control"/><br/>
                    <label>Price</label>
                    <input type="text" name="price" class="form-control"/><br/>
                    <label>Players</label>
                    <input type="text" name="players" class="form-control"/><br/>
                    <input type="hidden" value="game" name="type"/>
                    <input type="submit" value="Add" name="send"/>
                </form>
            </div>

        </div>

    </div>
    <script src="assets/js/admin_panel.js"></script>
<?php endif ?>
