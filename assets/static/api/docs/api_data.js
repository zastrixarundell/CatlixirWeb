define({ "api": [
  {
    "type": "get",
    "url": "/api/shield/elixir",
    "title": "Elixir version shield",
    "name": "GetElixirVerionShield",
    "group": "Shields",
    "description": "<p>Get the current version of Elixir on which the bot is ran.</p>",
    "version": "1.0.0",
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "label",
            "description": "<p>Static text: <code>Elixir version</code>.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "message",
            "description": "<p>Current elixir version.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "named_logo",
            "description": "<p>Static text: <code>elixir</code>.</p>"
          },
          {
            "group": "Success 200",
            "type": "Integer",
            "optional": false,
            "field": "cache_seconds",
            "description": "<p>Static number: <code>1</code>.</p>"
          }
        ]
      }
    },
    "filename": "../lib/catlixir_web_web/controllers/api/shield/elixir_version_controller.ex",
    "groupTitle": "Shields"
  },
  {
    "type": "get",
    "url": "/api/shield/servers",
    "title": "Server count shield",
    "name": "GetServerCountShield",
    "group": "Shields",
    "description": "<p>Get the current count of servers the bot is in.</p>",
    "version": "1.0.0",
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "label",
            "description": "<p>Static text: <code>Server count</code>.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "message",
            "description": "<p>Current server count.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "named_logo",
            "description": "<p>Static text: <code>discord</code>.</p>"
          },
          {
            "group": "Success 200",
            "type": "Integer",
            "optional": false,
            "field": "cache_seconds",
            "description": "<p>Static number: <code>1</code>.</p>"
          }
        ]
      }
    },
    "filename": "../lib/catlixir_web_web/controllers/api/shield/server_count_controller.ex",
    "groupTitle": "Shields"
  },
  {
    "type": "get",
    "url": "/api/shield/users",
    "title": "User count shield",
    "name": "GetUserCountShield",
    "group": "Shields",
    "description": "<p>Get the current user count of all of the real users the bot sees.</p>",
    "version": "1.0.0",
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "label",
            "description": "<p>Static text: <code>User count</code>.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "message",
            "description": "<p>Current user count.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "named_logo",
            "description": "<p>Static text: <code>discord</code>.</p>"
          },
          {
            "group": "Success 200",
            "type": "Integer",
            "optional": false,
            "field": "cache_seconds",
            "description": "<p>Static number: <code>1</code>.</p>"
          }
        ]
      }
    },
    "filename": "../lib/catlixir_web_web/controllers/api/shield/user_count_controller.ex",
    "groupTitle": "Shields"
  }
] });
