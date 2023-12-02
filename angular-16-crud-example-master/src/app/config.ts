declare var process: {
    env: {
      [key: string]: string | undefined;
    };
  };
  

export const environment = {
    production: true, // Mettez à true lors du déploiement en production
    backendUrl: process.env["CUSTOM_BACKEND_URL"] || 'http://localhost:8080/api/tutorials',
  };
  