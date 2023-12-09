'use strict';

async function createScraperTokenIfNotExist(strapi) {

  const tokenService = strapi.service('admin::api-token');
  if (tokenService && tokenService.create) {
    const tokenAlreadyExists = await tokenService.exists({
      name: 'scraper',
    });
    if (tokenAlreadyExists) {
      console.info(`API token 'scraper' already exists, skipping...`);
    }
    else {
      const token = await tokenService.create({
        name: 'scraper',
        lifespan: null,
        type: 'custom',
        permissions: [
          "api::book.book.find",
          "api::book.book.findOne",
          "api::book.book.create",
          "api::book.book.update",
          "api::author.author.find",
          "api::author.author.findOne",
          "api::author.author.create",
          "api::author.author.update",
          "api::publisher.publisher.find",
          "api::publisher.publisher.findOne",
          "api::publisher.publisher.create",
          "api::publisher.publisher.update",
        ]
      });
      if (token.accessKey) {
        console.info(`API token 'scraper' was created succesfully`);
      }
    }
  }
}


module.exports = {
  /**
   * An asynchronous register function that runs before
   * your application is initialized.
   *
   * This gives you an opportunity to extend code.
   */
  register(/*{ strapi }*/) { },

  /**
   * An asynchronous bootstrap function that runs before
   * your application gets started.
   *
   * This gives you an opportunity to set up your data model,
   * run jobs, or perform some special logic.
   */
  async bootstrap({ strapi }) {
    createScraperTokenIfNotExist(strapi);
  },
};
