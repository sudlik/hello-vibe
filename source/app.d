import vibe.web.web: registerWebInterface;
import vibe.http.router : URLRouter;
import vibe.http.server : listenHTTP, HTTPServerOption, HTTPServerSettings;
import controller : Controller;

shared static this()
{
    auto settings = new HTTPServerSettings;
    auto router = new URLRouter;

    router.registerWebInterface(new Controller);

    settings.options |= HTTPServerOption.distribute;
	settings.port = 8080;
	settings.bindAddresses = ["::1", "127.0.0.1"];

	listenHTTP(settings, router);
}
