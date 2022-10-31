# hello, world

```
valac try1.vala
```

# Generate vips.vapi

```
vapigen \
    --library vips \
    --metadatadir metadata \
    ~/vips/share/gir-1.0/Vips-8.0.gir
```

# libvips test program

```
valac --vapidir . --pkg vips try2.vala
```

# args to libvips operators

something like:

```vala
public class ValueList : GLib.List<GLib.Value> {
        [CCode (has_construct_function = false)]
        protected ValueList ();
        public static GLib.Type get_type ();
}
```

But we want as a list of (string, GLib.Value). There's no tuple type, so
we'll need a (name, value) struct.
