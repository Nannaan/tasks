// タスク追加機能

  function addTask() {
    const taskName = document.getElementById("task-name").value;
    const taskDeadline = document.getElementById("task-deadline").value;
    const taskTime = document.getElementById("task-time").value;
    const taskTimeUnit = document.getElementById("task-time-unit").value;

    const taskData = {
      task_name: taskName,
      deadline: taskDeadline,
      duration: taskTime,
      duration_unit: taskTimeUnit
    };

    // タスクデータをAPIエンドポイントに送信する処理をここに記述する（Ajaxなど）
  }