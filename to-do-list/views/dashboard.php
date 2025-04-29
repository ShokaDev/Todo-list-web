<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>To Do List</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css">
</head>
<body>
    <div class="container">
        <h2 class="head">
            To-do List
        </h2>

        <div class="create-todo">
            <input onkeypress="enterKey(event)" type="text" id="inputTodo" placeholder="Add some todo ...">
            <button onclick="addTodo()">
                <i class="bx bx-plus"></i>
            </button>
        </div>

        <div class="task-list">

        </div>

        <div class="foot">
            <span>You have <span id="countPendingTasks">0</span> Pending Tasks</span>
            <button onclick="clearAll()">Clear All</button>
        </div>
    </div>

    <script src="script.js"></script>
</body>
</html>