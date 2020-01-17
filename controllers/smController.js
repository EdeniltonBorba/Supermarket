const express = require("express");
const supermarket = require("../models/supermarket.js");
const product = require("../models/product.js");
const router = express.Router();

// Create all our routes and set up logic within those routes where required.
router.get("/", function (req, res) {
  supermarket.all(function () {
    res.render("index");
  });
});

router.get("/products", function (req, res) {
  product.all(function (data) {
    var hbsObject = {
      products: data
    };

    res.render("allproducts", hbsObject);
  });
});

router.get("/supermarkets", function (req, res) {
  supermarket.all(function (data) {
    console.log(data);
    var hbsObject = {
      supermarkets: data
    };

    res.render("allsupermarkets", hbsObject);
  });
});

router.post("/api/products", function (req, res) {
  product.create(["name", ""], [req.body.name, req.body.sleepy], function (result) {
    // Send back the ID of the new quote
    res.json({ id: result.insertId });
  });
});

router.put("/api/products/:id", function (req, res) {
  const condition = `id = ${req.params.id}`;

  console.log("condition", condition);

  product.update(
    {
      sleepy: req.body.sleepy
    },
    condition,
    function (result) {
      if (result.changedRows === 0) {
        // If no rows were changed, then the ID must not exist, so 404
        return res.status(404).end();
      }
      return res.status(200).end();
    }
  );
});

router.delete("/api/products/:id", function (req, res) {
  const condition = `id = ${req.params.id}`;

  product.delete(condition, function (result) {
    if (result.affectedRows === 0) {
      // If no rows were changed, then the ID must not exist, so 404
      return res.status(404).end();
    }
    return res.status(200).end();
  });
});

// Export routes for server.js to use.
module.exports = router;
