import { serve, serveListener } from 'https://deno.land/std@0.185.0/http/server.ts';

const listener = Deno.listen({ port: 4505 });
console.log("server listening on http://localhost:4505");

await serveListener(listener, (request) => {
  const body = `Your user-agent is:\n\n${request.headers.get(
    "user-agent",
  ) ?? "Unknown"}`;

  return new Response(body, { status: 200 });
});