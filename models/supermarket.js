// Import the ORM to create functions that will interact with the database.
const orm = require("../config/orm.js");

const supermarket = {
  all(cb) {
    orm.all("supermarket", function (res) {
      
      cb(res);
    });
  },
  // The variables cols and vals are arrays.
  create(cols, vals, cb) {
    orm.create("supermarket", cols, vals, function (res) {
      cb(res);
    });
  },
  update(objColVals, condition, cb) {
    orm.update("supermarket", objColVals, condition, function (res) {
      cb(res);
    });
  },
  delete(condition, cb) {
    orm.delete("supermarket", condition, function (res) {
      cb(res);
    });
  }
};

// Export the database functions for the controller (catsController.js).
module.exports = supermarket;
