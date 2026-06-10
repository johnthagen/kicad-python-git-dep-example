# KiCad Git Dependency Example

This repository demonstrates issues with depending on
[`kicad-python`](https://gitlab.com/kicad/code/kicad-python) as Git repository related to Protobuf.

## Setup

1. Install a compatible version of Protobuf
    - On macOS, install [Homebrew](https://brew.sh/) and run `brew bundle` in this directory. 
2. Install [uv](https://docs.astral.sh/uv/getting-started/installation/)
3. Install dependencies (including `kicad-python`): `uv sync`
4. Run the example plugin: `uv run main.py`

On macOS, get the error:

```
  File "kicad-python-git-dep-example/main.py", line 23, in <module>
    from kipy import KiCad
  File "kicad-python-git-dep-example/.venv/lib/python3.14/site-packages/kipy/__init__.py", line 21, in <module>
    from kipy.kicad import KiCad
  File "kicad-python-git-dep-example/.venv/lib/python3.14/site-packages/kipy/kicad.py", line 31, in <module>
    from kipy.board import Board
  File "kicad-python-git-dep-example/.venv/lib/python3.14/site-packages/kipy/board.py", line 26, in <module>
    from kipy.board_types import (
    ...<19 lines>...
    )
  File "kicad-python-git-dep-example/.venv/lib/python3.14/site-packages/kipy/board_types.py", line 30, in <module>
    from kipy.common_types import (
    ...<12 lines>...
    )
  File "kicad-python-git-dep-example/.venv/lib/python3.14/site-packages/kipy/common_types.py", line 26, in <module>
    from kipy.geometry import (
    ...<9 lines>...
    )
  File "kicad-python-git-dep-example/.venv/lib/python3.14/site-packages/kipy/geometry.py", line 27, in <module>
    from kipy.util import from_mm
  File "kicad-python-git-dep-example/.venv/lib/python3.14/site-packages/kipy/util/__init__.py", line 24, in <module>
    from .proto import pack_any, unpack_any
  File "kicad-python-git-dep-example/.venv/lib/python3.14/site-packages/kipy/util/proto.py", line 26, in <module>
    from kipy.proto.schematic import schematic_types_pb2
ModuleNotFoundError: No module named 'kipy.proto.schematic'
```
