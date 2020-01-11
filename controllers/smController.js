const express = require("express");
const orm = require("../config/orm");

const router = express.Router();


// Create all our routes and set up logic within those routes where required.
router.get("/", function(req, res) {
  orm.all(function() {
    
    res.render("index");
    });
  });

router.get("/products", function(req, res) {
  orm.all(function() {
    console.log(hbsObject);
    var hbsObject = {
      products: products
    };
    
    res.render("allproducts", hbsObject);
  });
});


router.post("/api/products", function(req, res) {
  orm.create(["name", ""], [req.body.name, req.body.sleepy], function(
    result
  ) {
    // Send back the ID of the new quote
    res.json({ id: result.insertId });
  });
});

router.put("/api/products/:id", function(req, res) {
  const condition = `id = ${req.params.id}`;

  console.log("condition", condition);

  orm.update(
    {
      sleepy: req.body.sleepy
    },
    condition,
    function(result) {
      if (result.changedRows === 0) {
        // If no rows were changed, then the ID must not exist, so 404
        return res.status(404).end();
      }
      return res.status(200).end();
    }
  );
});

router.delete("/api/products/:id", function(req, res) {
  const condition = `id = ${req.params.id}`;

  orm.delete(condition, function(result) {
    if (result.affectedRows === 0) {
      // If no rows were changed, then the ID must not exist, so 404
      return res.status(404).end();
    }else {
    return res.status(200).end();
    }
  });
});

// Export routes for server.js to use.
module.exports = router;
