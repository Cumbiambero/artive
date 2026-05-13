Deno.serve(() => {
  return new Response('<!DOCTYPE html><html><head><title>Test</title></head><body><h1>Hello</h1></body></html>', {
    headers: { "content-type": "text/html; charset=utf-8" }
  });
});
