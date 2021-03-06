{
  "image": "",
  "state": {
    "pan": {
      "x": 0,
      "y": 0
    },
    "zoom": 0.999999988879452
  },
  "board": "icezum",
  "graph": {
    "blocks": [
      {
        "id": "f32b562b-e9ba-4237-9a1b-724fb15ec729",
        "type": "basic.code",
        "data": {
          "code": "// @include ServoMotor.v\n\nparameter HIGH = 8'hF0;\nparameter LOW = 8'h50;\n\nreg [7:0] pos = LOW;\n\nServoMotor servo (\n  .clk(clk),\n  .pos(pos),\n  .servo(pwm));\n    \nalways @(posedge clk)\n  pos <= bit ? HIGH : LOW;\n",
          "ports": {
            "in": [
              "clk",
              "bit"
            ],
            "out": [
              "pwm"
            ]
          }
        },
        "position": {
          "x": 256,
          "y": 72
        }
      },
      {
        "id": "4f960c8f-261e-46df-abeb-9ab5a06aa5e1",
        "type": "basic.input",
        "data": {
          "label": "clk",
          "pin": {
            "name": "CLK",
            "value": "21"
          }
        },
        "position": {
          "x": 64,
          "y": 104
        }
      },
      {
        "id": "9e703b53-4491-4ff5-9410-b749d5c16800",
        "type": "basic.input",
        "data": {
          "label": "bit",
          "pin": {
            "name": "SW1",
            "value": "10"
          }
        },
        "position": {
          "x": 64,
          "y": 232
        }
      },
      {
        "id": "4eefe8d4-9bfe-4a22-9c8d-7e42ae59d28b",
        "type": "basic.output",
        "data": {
          "label": "",
          "pin": {
            "name": "D13",
            "value": "144"
          }
        },
        "position": {
          "x": 744,
          "y": 168
        }
      }
    ],
    "wires": [
      {
        "source": {
          "block": "4f960c8f-261e-46df-abeb-9ab5a06aa5e1",
          "port": "out"
        },
        "target": {
          "block": "f32b562b-e9ba-4237-9a1b-724fb15ec729",
          "port": "clk"
        }
      },
      {
        "source": {
          "block": "f32b562b-e9ba-4237-9a1b-724fb15ec729",
          "port": "pwm"
        },
        "target": {
          "block": "4eefe8d4-9bfe-4a22-9c8d-7e42ae59d28b",
          "port": "in"
        }
      },
      {
        "source": {
          "block": "9e703b53-4491-4ff5-9410-b749d5c16800",
          "port": "out"
        },
        "target": {
          "block": "f32b562b-e9ba-4237-9a1b-724fb15ec729",
          "port": "bit"
        }
      }
    ]
  },
  "deps": {}
}
