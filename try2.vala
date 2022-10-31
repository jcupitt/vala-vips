// compile with 
// 	valac valac --vapidir . --pkg vips try2.vala 

class Try2 : GLib.Object {
    public static int main(string[] args) {
	if (Vips.init(args[0]) != 0) {
            stdout.printf("error: %s\n", Vips.error_buffer());
	    return -1;
	}

	var filename = args[1];
        stdout.printf("filename = %s\n", filename);

        var loader = Vips.Foreign.find_load(filename);
        stdout.printf("loader = %s\n", loader);

	var operation = new Vips.Operation(loader);

        return 0;
    }
}

