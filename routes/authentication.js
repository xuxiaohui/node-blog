/**
 * Created by xuxiaohui on 2017/11/12.
 */
const express = require('express');
const router = express.Router();

router.get('/login', (req, res) => {
  res.render('login', { title: '博客后台2' });
});

module.exports = router;