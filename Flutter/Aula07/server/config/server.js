module.exports = ({ env }) => ({
  host: env('HOST', '192.168.1.2'),
  port: env.int('PORT', 1337),
  app: {
    keys: env.array('APP_KEYS'),
  },
  webhooks: {
    populateRelations: env.bool('WEBHOOKS_POPULATE_RELATIONS', false),
  },
  crossOriginIsolated: false,
});
