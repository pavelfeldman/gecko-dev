
  $ . $TESTDIR/setup.sh
  $ cd $topsrcdir

Test auto selector

  $ ./mach try auto --no-push
  Commit message:
  Tasks automatically selected.
  
  Pushed via `mach try auto`
  Calculated try_task_config.json:
  {
      "parameters": {
          "optimize_target_tasks": true,
          "target_tasks_method": "try_auto",
          "try_mode": "try_auto",
          "try_task_config": {
              "optimize-strategies": "taskgraph.optimize:bugbug_push_schedules"
          }
      },
      "version": 2
  }
  

  $ ./mach try auto --no-push --closed-tree
  Commit message:
  Tasks automatically selected. ON A CLOSED TREE
  
  Pushed via `mach try auto`
  Calculated try_task_config.json:
  {
      "parameters": {
          "optimize_target_tasks": true,
          "target_tasks_method": "try_auto",
          "try_mode": "try_auto",
          "try_task_config": {
              "optimize-strategies": "taskgraph.optimize:bugbug_push_schedules"
          }
      },
      "version": 2
  }
  
  $ ./mach try auto --no-push --closed-tree -m "foo {msg} bar"
  Commit message:
  foo Tasks automatically selected. bar ON A CLOSED TREE
  
  Pushed via `mach try auto`
  Calculated try_task_config.json:
  {
      "parameters": {
          "optimize_target_tasks": true,
          "target_tasks_method": "try_auto",
          "try_mode": "try_auto",
          "try_task_config": {
              "optimize-strategies": "taskgraph.optimize:bugbug_push_schedules"
          }
      },
      "version": 2
  }
  
