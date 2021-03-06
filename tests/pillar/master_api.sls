git:
  client:
    enabled: true
linux:
  system:
    enabled: true
salt:
  master:
    enabled: true
    source:
      engine: pkg
    pillar:
      engine: salt
      source:
        engine: local
    environment:
      prd:
        formula: {}
  api:
    enabled: true
    ssl:
      engine: salt
    bind:
      address: 0.0.0.0
      port: 8000
