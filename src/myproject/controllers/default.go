package controllers

import (
	"github.com/astaxie/beego"
)

type MainController struct {
	beego.Controller
}

func (c *MainController) Get() {
	c.Data["Website"] = "huawei.com"
	c.Data["Email"] = "paas@huawei.com"
	c.TplNames = "index.tpl"
}
