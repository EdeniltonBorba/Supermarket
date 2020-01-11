// Import the ORM to create functions that will interact with the database.
const orm = require("../config/orm.js");

const product = {
  all(cb) {
    orm.all("products", function(res) {
      cb(res);
    });
  },
  // The variables cols and vals are arrays.
  create(cols, vals, cb) {
    orm.create("products", cols, vals, function(res) {
      cb(res);
    });
  },
  update(objColVals, condition, cb) {
    orm.update("products", objColVals, condition, function(res) {
      cb(res);
    });
  },
  delete(condition, cb) {
    orm.delete("products", condition, function(res) {
      cb(res);
    });
  }
};

// Export the database functions for the controller (catsController.js).
module.exports = product;
