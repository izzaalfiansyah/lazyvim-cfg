local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt
local rep = require("luasnip.extras").rep

return {
  -- Freezed Data Class
  s(
    "freezed",
    fmt(
      [[
    import 'package:freezed_annotation/freezed_annotation.dart';

    part '{}.freezed.dart';
    part '{}.g.dart';

    @freezed
    class {} with _${} {{
      const factory {}({{
        {}
      }}) = _{};

      factory {}.fromJson(Map<String, dynamic> json) => _${}.fromJson(json);
    }}
  ]],
      {
        i(1, "my_class"), -- ① filename (no `.dart`)
        rep(1),
        i(2, "MyClass"), -- ② class name
        rep(2),
        rep(2),
        i(3, "// fields like: required String name,"),
        rep(2),
        rep(2),
        rep(2),
      }
    )
  ),

  -- Cubit class
  s(
    "cubit",
    fmt(
      [[
    class {}Cubit extends Cubit<{}State> {{
      {}Cubit() : super({}Initial());

      void {}() {{
        // TODO: Implement logic
      }}
    }}
  ]],
      {
        i(1, "My"),
        rep(1),
        rep(1),
        rep(1),
        i(2, "doSomething"),
      }
    )
  ),

  -- Bloc class
  s(
    "bloc",
    fmt(
      [[
    class {}Bloc extends Bloc<{}Event, {}State> {{
      {}Bloc() : super({}Initial()) {{
        on<{}>((event, emit) {{
          // TODO: Handle event
        }});
      }}
    }}
  ]],
      {
        i(1, "My"),
        rep(1),
        rep(1),
        rep(1),
        rep(1),
        i(2, "MyEvent"),
      }
    )
  ),

  -- Event class
  s(
    "event",
    fmt(
      [[
    abstract class {}Event {{}}

    class {} extends {}Event {{
      const {}();
    }}
  ]],
      {
        i(1, "My"),
        i(2, "MyEvent"),
        rep(1),
        rep(2),
      }
    )
  ),

  -- State class
  s(
    "state",
    fmt(
      [[
    abstract class {}State {{}}

    class {}Initial extends {}State {{
      const {}Initial();
    }}
  ]],
      {
        i(1, "My"),
        rep(1),
        rep(1),
        rep(1),
      }
    )
  ),
}
