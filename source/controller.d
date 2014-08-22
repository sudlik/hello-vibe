module controller;

import vibe.web.web;

class Controller
{
    void index()
    {
        render!("index.dt");
    }
}
